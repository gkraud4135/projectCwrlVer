package co.kr.project.patternScript.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pattern/")
public class PatternController {

    @RequestMapping("main.do")
    public String patternMainPage(ModelMap model) throws Exception {
        System.out.println("Move to pattern Main Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/patternScript";
    }

    @RequestMapping("singleTon.do")
    public String singleTon(ModelMap model) throws Exception {
        System.out.println("Move to singleTon Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/singleTon";
    }

    @RequestMapping("strategy.do")
    public String strategy(ModelMap model) throws Exception {
        System.out.println("Move to strategy Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/strategy";
    }

    @RequestMapping("constructor.do")
    public String constructor(ModelMap model) throws Exception {
        System.out.println("Move to constructor Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/constructor";
    }

    @RequestMapping("abstractCharacterFactory.do")
    public String abstractCharacterFactory(ModelMap model) throws Exception {
        System.out.println("Move to abstractCharacterFactory Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/abstractCharacterFactory";
    }

    @RequestMapping("builder.do")
    public String builder(ModelMap model) throws Exception {
        System.out.println("Move to builder Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/builder";
    }

    @RequestMapping("adapter.do")
    public String adapter(ModelMap model) throws Exception {
        System.out.println("Move to adapter Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/adapter";
    }

    @RequestMapping("composite.do")
    public String composite(ModelMap model) throws Exception {
        System.out.println("Move to composite Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/composite";
    }

    @RequestMapping("flyweight.do")
    public String flyweight(ModelMap model) throws Exception {
        System.out.println("Move to flyweight Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/flyweight";
    }

    @RequestMapping("facade.do")
    public String facade(ModelMap model) throws Exception {
        System.out.println("Move to facade Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/facade";
    }

    @RequestMapping("proxy.do")
    public String proxy(ModelMap model) throws Exception {
        System.out.println("Move to proxy Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/proxy";
    }

    @RequestMapping("command.do")
    public String command(ModelMap model) throws Exception {
        System.out.println("Move to command Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/command";
    }

    @RequestMapping("responsibility.do")
    public String responsibility(ModelMap model) throws Exception {
        System.out.println("Move to responsibility Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/responsibility";
    }

    @RequestMapping("iterator.do")
    public String iterator(ModelMap model) throws Exception {
        System.out.println("Move to iterator Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/iterator";
    }

    @RequestMapping("mediator.do")
    public String mediator(ModelMap model) throws Exception {
        System.out.println("Move to mediator Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/mediator";
    }

    @RequestMapping("observer.do")
    public String observer(ModelMap model) throws Exception {
        System.out.println("Move to observer Page");

        String message = "성공";
        model.addAttribute("message", message);

        return "pattern/observer";
    }

}
