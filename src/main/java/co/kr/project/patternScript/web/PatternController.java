package co.kr.project.patternScript.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pattern/")
public class PatternController {

    @RequestMapping("main.do")
    public String patternMainPage( ModelMap model) throws Exception {
        System.out.println("Move to singleTon Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/patternScript";
    }

    @RequestMapping("singleTon.do")
    public String singleTon( ModelMap model) throws Exception {
        System.out.println("Move to singleTon Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/singleTon";
    }

    @RequestMapping("strategy.do")
    public String strategy( ModelMap model) throws Exception {
        System.out.println("Move to strategy Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/strategy";
    }
}
