package az.edu.bsu.smsproject.controller;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import org.springframework.boot.web.servlet.error.ErrorController;

@Controller
class MyErrorController implements ErrorController {

    @Override
    public String getErrorPath() {
        return "/error";
    }

    @RequestMapping("/error")
    public String handleError(HttpServletRequest request){
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);

        if ( status != null ){
            Integer statusCode = Integer.valueOf(status.toString());
            System.out.println("status = "+status);
            System.out.println( "statusCode = "+statusCode);

            if (statusCode == HttpStatus.NOT_FOUND.value()){
//                return "error/page-404";              todo uncomment it
            }
            else if ( statusCode == HttpStatus.FORBIDDEN.value() ){
                return "error/page-403";
            }
            else if ( statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value() ){
                return "error/page-500";
            }
        }
        return "sthelse";
    }

}
