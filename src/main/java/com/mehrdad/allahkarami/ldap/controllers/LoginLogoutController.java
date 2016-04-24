/**
 *
 */
package com.mehrdad.allahkarami.ldap.controllers;

import org.apache.log4j.Logger;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles and retrieves the login or denied page depending on the URI template
 */
@Controller
@RequestMapping("/auth")
public class LoginLogoutController {

    protected static Logger logger = Logger.getLogger("controller");

    /*@Autowired
    private UserRepositoryIntf personDao;
*/

    /**
     * Handles and retrieves the login  page
     *
     * @return the root login page
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String getLoginPage(@RequestParam(value = "error", required = false) boolean error,
                               ModelMap model) {
        logger.debug("Received request to show login page");
        if (error == true) {
            // Assign an error message
            model.put("error", "You have entered an invalid username or password!");
        } else {
            model.put("error", "");
        }
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            return "redirect:/app/main/applications";
        }
        return "loginpage";
    }

/*
    @RequestMapping(value = "/getuserinfo", method = RequestMethod.GET)
    public String getUserInfo(@RequestParam(value = "user", required = true) String user) {
       */
/* UserRepositoryIntf intf = new User
        UserRepositoryImpl userRepository = new UserRepositoryImpl();
        if (userRepository != null) {
            User userDetails = userRepository.getUserDetails(user);
            if (userDetails != null) {
                return userDetails.toString();
            } else {
                return "";
            }
        } else {
            return "";
        }
         return personDao.getAllUserNames().toString();
    }
*/

    /**
     * Handles and retrieves the denied JSP page. This is shown whenever a regular user
     * tries to access an admin only page.
     *
     * @return the name of the JSP page
     */
    @RequestMapping(value = "/denied", method = RequestMethod.GET)
    public String getDeniedPage() {
        logger.debug("Received request to show denied page");

        // This will resolve to /WEB-INF/jsp/deniedpage.jsp
        return "deniedpage";
    }
}