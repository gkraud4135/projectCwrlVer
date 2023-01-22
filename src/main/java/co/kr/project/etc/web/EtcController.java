package co.kr.project.etc.web;


import co.kr.project.common.JsonView;
import co.kr.project.main.service.MainService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.View;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/etc/")
public class EtcController {

    @Resource(name = "mainService")
    private MainService mainService;

    @RequestMapping("main.do")
    public String move(ModelMap model) throws Exception {
        System.out.println("Move to Etc Main Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "etc/main";
    }

    @RequestMapping("insertImgFile.do")
    public View insertImgFile(FIleVo fileVo, ModelMap model, HttpServletRequest request) throws Exception {

        String path = request.getSession().getServletContext().getRealPath("resources");    //resources 경로
        String root = path + "\\uploadFiles" ;

        File file = new File(root);
        if(!file.exists()) file.mkdirs(); //폴더생성

        fileVo.getFiles().forEach(item -> {
            String fileName = item.getOriginalFilename();

            File changeFile = new File(root + "\\" + fileName);
            try {
                item.transferTo(changeFile); //업로드
                System.out.println("파일 업로드 성공");
            } catch (IOException e) {
                System.out.println("파일 업로드 실패");
                e.printStackTrace();
            }
        });

        String message = "성공";
        model.addAttribute("message", message);

        return new JsonView();
    }

    @RequestMapping("searchFiles.do")
    public View searchFiles(HttpServletRequest request, ModelMap model) throws Exception {
        //resources 경로
        String path = request.getSession().getServletContext().getRealPath("resources");
        String root = path + "\\uploadFiles" ;

        // 폴더 내 파일 객체 배열 생성
        File folder = new File(root);
        File[] fileList = folder.listFiles();
        List<String> files = new ArrayList();

        for(File file : fileList){
            if(file.isFile() && file.canRead()){
                files.add(file.getName());
            }
        }
        model.addAttribute("files", files);

        return new JsonView();
    }


}
