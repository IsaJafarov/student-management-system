package az.edu.bsu.smsproject.config;

import az.edu.bsu.smsproject.Service.CommonService;
import javafx.print.Collation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.List;

public class MyAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

    @Autowired
    private CommonService commonService;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {

        System.out.println("---");
        System.out.println( authentication.getAuthorities() );
        System.out.println( authentication.getDetails() );
        System.out.println( authentication.getPrincipal() );
        System.out.println( authentication.isAuthenticated() );
        System.out.println("---");

        Collection< ? extends GrantedAuthority> collection = authentication.getAuthorities();
        List<GrantedAuthority> list = (List<GrantedAuthority>) collection;
        String roleName = list.get(0).getAuthority();
        System.out.println("roleName = "+roleName);
        new DefaultRedirectStrategy().sendRedirect(httpServletRequest, httpServletResponse, "/"+commonService.getDefaultControllerNameByRoleName(roleName)+"/");

    }
}
