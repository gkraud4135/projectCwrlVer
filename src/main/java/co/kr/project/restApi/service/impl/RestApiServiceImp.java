package co.kr.project.restApi.service.impl;

import co.kr.project.restApi.service.RestApiService;
import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

@Service("restApiService")
public class RestApiServiceImp implements RestApiService {

    @Override
    public void requestRestApi() throws Exception{

        Map<String, Object> map = testHttpUrlConnection();

        HttpURLConnection httpConn = (HttpURLConnection) map.get("httpConn");      // connecting time check
        int statusCode = (int) map.get("statusCode");                              // connecting boolean check

        String res = null;
        if (statusCode == 200) {
            BufferedReader br = new BufferedReader(new InputStreamReader(httpConn.getInputStream()));
            res = getJsonObjectString(br,true);
        } else {
            System.out.println("Error:Connect");
        }
        System.out.println("result string: " + res);

    }

    // get elapsed time of Connection
    private static Map<String, Object> testHttpUrlConnection() throws MalformedURLException, IOException {
        long startTime = System.currentTimeMillis();
        URL url = new URL("http://localhost:8180/responseRestApi1.do");
        HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
        long endTime = System.currentTimeMillis();

        int statusCode = httpConn.getResponseCode();
        String pf = (statusCode == 200) ? "success" : "fail";

        System.out.println("1. connection " + pf + " in " + (endTime - startTime) + " millisecond");
        System.out.println("2. Response code: " + statusCode);

        Map<String, Object> map = new HashMap<>();
        map.put("httpConn",httpConn);
        map.put("statusCode",statusCode);

        return map;
    }

    // handle JSON data and get JSON string
    private static String getJsonObjectString(BufferedReader br, Boolean tf)
            throws MalformedURLException, IOException, ParseException {

        JSONParser jsonPar = new JSONParser();
        JSONObject jsonObj = (JSONObject) jsonPar.parse(br);

        JSONObject outputJsonObj = new JSONObject();
        outputJsonObj.put("title", jsonObj.get("title").toString());
        outputJsonObj.put("content", jsonObj.get("content"));
        //outputJsonObj.put("data", ((JSONArray) jsonObj.get("data")).get(0));

        String outputString = null;

        if(tf) {
            outputString = jsonObj.toJSONString();
        } else {
            outputString = outputJsonObj.toJSONString();
        }

        return outputString;
    }


}
