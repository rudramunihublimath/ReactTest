package com.io.phonebook.controller;

import com.io.phonebook.entity.Contact;
import com.io.phonebook.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

@Controller
public class ContactInfoController {

    @Autowired
    private ContactService contactService;

    @GetMapping("/search")
    public ModelAndView search(@RequestParam(name = "field1", required = false) String field1,
                         @RequestParam(name = "field2", required = false) String field2,
                         @RequestParam(name = "field3", required = false) String field3,
                         Model model) {

        System.out.println(field3);

        List<Contact> allContacts2 = contactService.getAllContactsV2(field3);
        System.out.println(allContacts2);

        ModelAndView mav= new ModelAndView();
        mav.addObject("contactsV2",allContacts2);
        mav.setViewName("viewContacts");

        return mav;  // Return the name of the JSP page
    }
}
