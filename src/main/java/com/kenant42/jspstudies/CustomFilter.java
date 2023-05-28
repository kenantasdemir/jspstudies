package com.kenant42.jspstudies;


import jakarta.servlet.*;

import java.io.IOException;

public class CustomFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);

        String filterName = filterConfig.getFilterName();
        ServletContext servletContext = filterConfig.getServletContext();
        String testParam = filterConfig.getInitParameter("test-param");

        System.out.println(filterName+ " -- " + testParam);

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
                String ipAddress = servletRequest.getRemoteAddr();
                String contentType = servletRequest.getContentType();
                String remoteHost = servletRequest.getRemoteHost();

        System.out.println(ipAddress + " " + contentType + " " + remoteHost);

        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
