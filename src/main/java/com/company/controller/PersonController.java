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

        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String email = request.getParameter("email");

        person.setEmail(email);
        person.setFirstname(firstName);
        person.setLastname(lastName);

        return person;
    }


}