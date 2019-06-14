package az.edu.bsu.smsproject.config;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    private final DataSource dataSource;

    @Qualifier("userDetailsServiceImpl")
    private final UserDetailsService userDetailsService;

    public SecurityConfig(DataSource dataSource, @Qualifier("userDetailsServiceImpl") UserDetailsService userDetailsService) {
        this.dataSource = dataSource;
        this.userDetailsService = userDetailsService;
    }


    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder(12);
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        String sql1 = "select email, password, enabled from bdu_user where email = ?";
//        String sql2 = "select bu.email, r.name " +
//                        "from bdu_user bu join role r on bu.role_id = r.id " +
//                        "where bu.email = ?";
//
//        auth
//                .jdbcAuthentication().dataSource(dataSource)
//                .usersByUsernameQuery(sql1)
//                .authoritiesByUsernameQuery(sql2);
        auth
                .userDetailsService(userDetailsService)
                .passwordEncoder(passwordEncoder());
    }


    @Bean
    public AuthenticationSuccessHandler myAuthenticationSuccessHandler(){
        return new MyAuthenticationSuccessHandler();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http    // The  order  of  the  rules  matters
                .authorizeRequests()                                                    //todo hasRole("") and hasAuthority("") are different
                    .antMatchers("/student/**").hasAuthority("student")      //role should not start with 'ROLE_' since it is automatically inserted. Got 'ROLE_USER'
                    .antMatchers("/tutor/**").access("hasAuthority('tutor')")
                    .antMatchers("/login*", "/", "/**").permitAll()
                .and()
                    .formLogin()
                    .loginPage("/login/")
                    .loginProcessingUrl("/login/submit")
                    .usernameParameter("username").passwordParameter("password")
                    .successHandler( myAuthenticationSuccessHandler() )
//                    .defaultSuccessUrl("/success") // isn't good option when target page depends on user
                    .failureUrl("/login/?isFailed="+true)        //todo take failure page from DB
                .and()
                    .logout()
                    .logoutUrl("/sign-out")
                    .logoutSuccessUrl("/login/")
                    .invalidateHttpSession(true)
                    .deleteCookies("JSESSIONID");
    }
}
/*

Default queries that Spring Security uses:

    public static final String DEF_USERS_BY_USERNAME_QUERY =
            "select username,password,enabled " +
                    "from users " +
                    "where username = ?";
    public static final String DEF_AUTHORITIES_BY_USERNAME_QUERY =
            "select username,authority" +
                    "from authorities " +
                    "where username = ?";
    public static final String DEF_GROUP_AUTHORITIES_BY_USERNAME_QUERY = "select g.id, g.group_name, ga.authority " +
            "from groups g, group_members gm, group_authorities ga " +
            "where gm.username = ? " + "and g.id = ga.group_id " +
            "and g.id = gm.group_id";
 */