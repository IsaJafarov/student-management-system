package az.edu.bsu.smsproject.controller;

import az.edu.bsu.smsproject.domain.DataTransferObject.LoginFormDTO;
import az.edu.bsu.smsproject.domain.User;
import org.apache.catalina.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.security.auth.message.callback.PrivateKeyCallback;

@Controller
@RequestMapping({"/login", "/"})
//@SessionAttributes("user")
public class LoginController {

//    private UserService userService;
//    private RoleService roleService;
// First adds "user" attribute to the session and in the login method initializes it,
// if user isn't authenticated, cleans up session
//    @ModelAttribute("user")
//    public User addUserToSession(){
//        User user = null;
//        return user;
//    }
//
//    @PostMapping("/login")
//    public String login(
//            @RequestParam(name="email") String email,
//            @RequestParam(name="pass") String password,
//            final RedirectAttributes redirectAttributes,
//            @ModelAttribute(name="user") User user,
//            SessionStatus sessionStatus
//    ){
//        String page = null;
//        if ( email != null && password != null ){
//            user = userService.authenticate( email, password );
//
//            if ( user != null ){
//                Role role = roleService.getRoleById( user.getRoleId() );
//                String defaultController = role.getDefaultController();
//                page = "redirect:/"+defaultController+"/";
//            }
//            else {
//                sessionStatus.setComplete();
//                redirectAttributes.addFlashAttribute( "errorMessage", "Email ve ya sifre yanlisdir" );
//                page = "redirect:/login.jsp";
//            }
//
//        }
//        return page;
//    }

    @GetMapping("/")
    public String loginPage(@RequestParam(value = "isFailed", required = false) boolean isFailed, Model model) {
        System.out.println("message = "+isFailed);

        model.addAttribute("isFailed", isFailed);
        return "login";
    }

}
