//package com.example.demo.configuration;
//
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
//import org.springframework.security.web.authentication.ui.DefaultLoginPageGeneratingFilter;
//
//public class CustomFormLoginConfigurer extends AbstractHttpConfigurer<CustomFormLoginConfigurer, HttpSecurity> {
//    private String loginPageUrl;
//
//    @Override
//    public void init(HttpSecurity http){
//        DefaultLoginPageGeneratingFilter loginPageGeneratingFilter = http.getSharedObject(DefaultLoginPageGeneratingFilter.class);
//        if (loginPageGeneratingFilter == null) {
//            return;
//        }
//        loginPageGeneratingFilter.setFormLoginEnabled(true);
//        loginPageGeneratingFilter.setUsernameParameter("username");
//        loginPageGeneratingFilter.setPasswordParameter("password");
//        loginPageGeneratingFilter.setLoginPageUrl(loginPageUrl);
//        loginPageGeneratingFilter.setLogoutSuccessUrl(loginPageUrl + "?logout");
//        loginPageGeneratingFilter.setFailureUrl(loginPageUrl + "?error");
//    }
//
//    public CustomFormLoginConfigurer loginPage(String loginPageUrl) {
//        this.loginPageUrl = loginPageUrl;
//        return this;
//    }
//}
