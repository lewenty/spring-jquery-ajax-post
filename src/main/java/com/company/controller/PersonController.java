package com.company.controller;

import com.company.model.Person;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class PersonController {


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "index";
    }


    @RequestMapping(value = "/person/add.htm", method = RequestMethod.POST)
    public
    @ResponseBody
    Person add(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        Person person = new Person();

        person.setEmail(request.getParameter("email"));
        person.setFirstname(request.getParameter("firstname"));
        person.setLastname(request.getParameter("lastname"));

        return person;
    }


}