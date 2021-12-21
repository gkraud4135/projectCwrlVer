package co.kr.project.restApi.web;

import co.kr.project.restApi.service.RestApiDto;
import com.google.gson.JsonObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestApiController {

    @RequestMapping("/responseRestApi.do")
    public RestApiDto restApiDto(){

        RestApiDto api = new RestApiDto();

        api.setTitle("테스트1");
        api.setContent("테스트1 내용");

        return api;
    }

    @RequestMapping(value = "/responseRestApi1.do", method= RequestMethod.GET, produces="text/plain;charset=UTF-8")
    public String restApiGson(){

        JsonObject obj =new JsonObject();

        obj.addProperty("title", "테스트3");
        obj.addProperty("content", "테스트3 내용");

        JsonObject data = new JsonObject();

        data.addProperty("time", "12:00");

        obj.add("data", data);

        return obj.toString();
    }


}
