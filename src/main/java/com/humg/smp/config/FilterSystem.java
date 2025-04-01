// package com.humg.smp.config;

// import java.io.IOException;
// import java.util.Set;
// import java.util.logging.Logger;

// import org.slf4j.LoggerFactory;
// import org.springframework.web.servlet.HandlerInterceptor;

// import com.humg.smp.constant.ViewConstants;
// import com.humg.smp.entity.Auth;
// import com.humg.smp.entity.User;
// import com.humg.smp.entity.UserRole;

// import jakarta.servlet.http.HttpServletRequest;
// import jakarta.servlet.http.HttpServletResponse;
// import jakarta.servlet.http.HttpSession;
// import lombok.extern.slf4j.Slf4j;

// @Slf4j
// public class FilterSystem implements HandlerInterceptor {
//     Logger logger = Logger.getLogger(FilterSystem.class.getName());
//     @Override
//     public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
//         String requestURI = request.getRequestURI();
//         HttpSession session = request.getSession();
//         logger.info("Request URI ="+ requestURI);
//         User user = (session != null) ? (User) session.getAttribute(ViewConstants.USER_INFO) : null;
        
//         if (user == null) {
//             response.sendRedirect(request.getContextPath() + "/login");
//             return false;
//         }

//         if (user!=null){
      
//             String servletPath = request.getServletPath();
//             if (!hasPermission(servletPath, user)) {
//                 response.sendRedirect(request.getContextPath() + "/access-deny");
//                 return false;
//             }
//         }

//         return true;
//     }

//     private boolean hasPermission(String url, User u){

//         if (url.contains("/access-deny") || url.contains("/login") || url.contains("/logout")){
//             return true;
//         }
//         UserRole userRole= u.getUserRoles().iterator().next();
//         Set<Auth> auths=userRole.getRole().getAuths();
//         for (var auth:auths){
//             if (url.contains(auth.getMenu().getUrl())){
//                 return  auth.getPermission()==true;
//             }
//         }
//         return false;
//     }




// }
