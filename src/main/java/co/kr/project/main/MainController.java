package co.kr.project.main;


import co.kr.project.common.JsonView;
import org.python.util.PythonInterpreter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.View;

import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.util.Map;

@Controller
@RequestMapping("/main/")
public class MainController {

    private static PythonInterpreter interpreter;

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

        System.setProperty("python.import.site","false");
        interpreter = new PythonInterpreter();
        //interpreter.execfile("C:\\py/test.py");
        //interpreter.exec("print(sum(7,8))");

        interpreter.execfile("C:\\py/project.py");
        interpreter.exec("scrape_weather()");
        interpreter.exec("scrape_headline_news()");
        interpreter.exec("scrape_it_news()");
        interpreter.exec("scrape_english()");


/*        interpreter.exec("from java.lang import System");
        interpreter.exec("s = 'Hello World'");
        interpreter.exec("System.out.println(s)");
        interpreter.exec("print(s)");
        interpreter.exec("print(s[1:-1])");
 */

        String index = paramMap.get("index");
        model.addAttribute("index", index);

        return new JsonView();
    }

    @RequestMapping("tilesTest.do")
    public String tilesTest( ModelMap model) throws Exception {

        System.out.println("성공");

        String message = "성공";
        model.addAttribute("message", message);
        return "main/index";
    }






}
