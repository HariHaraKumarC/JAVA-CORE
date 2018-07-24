package hari.edu.j2ee.filters;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Enumeration;

/**
 * Created by harih on 7/24/2018.
 */
public class TraceLoginParamFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("Inside TraceLoginParamFilter init method");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("Inside TraceLoginParamFilter doFilter method");
        HttpServletRequest request=(HttpServletRequest) servletRequest;
        Enumeration<String> requestParameters=request.getParameterNames();
        while(requestParameters.hasMoreElements()){
            String paramName=requestParameters.nextElement();
            String paramValue=request.getParameter(paramName);
            System.out.println("Request Parameters > Name : "+paramName+" ; Value: "+paramValue);
        }
        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {
        System.out.println("Inside TraceLoginParamFilter destroy method");
    }
}
