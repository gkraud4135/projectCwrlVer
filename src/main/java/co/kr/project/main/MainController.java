package co.kr.project.main;


import co.kr.project.common.JsonView;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.View;

import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Controller
@RequestMapping("/main/")
public class MainController {

    @RequestMapping("test.do")
    public View earIDupCheck(@RequestBody Map<String, String> paramMap, ModelMap model, HttpServletResponse response) throws Exception {

        System.out.println("성공");

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
