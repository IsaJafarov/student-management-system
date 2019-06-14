package az.edu.bsu.smsproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;

@Controller
@RequestMapping("/test")
public class Test {

    @RequestMapping("/in")
    public void error500(){
        int b = 5/0;
    }

    @RequestMapping("/attr")
    public void getAttributes(HttpServletRequest request){

        System.out.println("---Request---");
        for (Enumeration<String> e = request.getAttributeNames(); e.hasMoreElements();)
            System.out.println(e.nextElement());

        System.out.println();

        System.out.println("---Session---");
        for (Enumeration<String> e = request.getSession().getAttributeNames(); e.hasMoreElements();)
            System.out.println(e.nextElement());


    }

}
