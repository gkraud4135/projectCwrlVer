package co.kr.project.main.web;


import co.kr.project.common.JsonView;

import co.kr.project.main.service.MainService;
import co.kr.project.main.service.impl.CrwlServiceImp;
import co.kr.project.restApi.service.RestApiService;
import org.python.util.PythonInterpreter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.View;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Controller
@RequestMapping("/main/")
public class MainController {

    @Resource(name = "mainService")
    private MainService mainService;

    @Resource(name = "restApiService")
    private RestApiService restApiService;

    @Resource(name = "crwlService")
    private CrwlServiceImp crwlService;


    @RequestMapping("test.do")
    public View test(@RequestBody Map<String, String> paramMap, ModelMap model, HttpServletResponse response) throws Exception {

        System.out.println("성공");
        String index = paramMap.get("index");
        model.addAttribute("index", index);

        return new JsonView();
    }

    @RequestMapping("pythonTest.do")
    public View pythonTest(@RequestBody Map<String, String> paramMap, ModelMap model) throws Exception {
        System.out.println("성공1");

        //crwlService.movieRanking();
        //crwlService.getGoogleSearch("코로나");
        mainService.test("성공");
        System.setProperty("python.import.site","false");
        PythonInterpreter interpreter = new PythonInterpreter();
        //interpreter.execfile("C:\\py/test.py");
        //interpreter.exec("print(sum(7,8))");

        interpreter.execfile("C:\\py/project.py");

        restApiService.requestRestApi();

        String src = "";

        String index = paramMap.get("index");
        model.addAttribute("index", index);
        model.addAttribute("src", src);

        return new JsonView();
    }

    @RequestMapping("main.do")
    public String tilesTest(ModelMap model) throws Exception {

        System.out.println("성공");

        String message = "성공";
        model.addAttribute("message", message);
        return "main/index";
    }


}
