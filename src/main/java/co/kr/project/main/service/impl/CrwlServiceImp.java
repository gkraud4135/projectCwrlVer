package co.kr.project.main.service.impl;

import co.kr.project.main.service.CrwlService;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

import java.io.IOException;

@Service("crwlService")
public class CrwlServiceImp implements CrwlService {

    @Override
    public void movieRanking() throws Exception {

        //크롤링
        //로그인 세션정보
        String Url = "https://movie.naver.com/movie/sdb/rank/rmovie.naver";
        Connection conn = Jsoup.connect(Url);

        try {
            Document document = conn.get(); //연결
            Elements titleElements = document.select("td.title"); //찾기

            String one = "";

            for (int j = 0; j < titleElements.size(); j++) {
                String title = titleElements.get(j).text();
                //title.replaceAll(" ", "");
                System.out.println(title);

                String[] array = title.split(" ");

                for(String str : array) {

                    String match = "[^\uAC00-\uD7A30-9a-zA-Z]";//특수기호 제거

                    str = str.replaceAll(match, " ");
                    str = str.replaceAll(" ", "");

                    if(str!="" && str!=null && !"".equals(str)){
                        one = one + str + "/";
                        System.out.println(str);
                    }
                }
            }
            System.out.println(one);
        } catch (IOException e) {
            e.printStackTrace();
        }


    }

    @Override
    public void getGoogleSearch(String subject) throws Exception {

        //subject = URLEncoder.encode(subject, "EUC-KR");
        String url = "https://www.google.com/search?q=" + subject + "&oq=&aqs=chrome.1.69i59i450l8.365205373j0j15&sourceid=chrome&ie=UTF-8";
        System.out.println("SearchUrlLink : "+url);
        Connection conn = Jsoup.connect(url);

        Document document = conn.get(); //연결
        Elements sub =  document.select("div.yuRUbf > a"); //찾기

        for (int j = 0; j < sub.size(); j++) {
            String title = sub.get(j).select("h3.MBeuO").text();
            String sub_url = sub.get(j).attr("href");

            System.out.println(title);
            System.out.println(sub_url);

        }


    }
}
