package cl.zero23ku.goi.controllers;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FowardController{

    @RequestMapping("/")
    public String goHome(Model model) throws IOException{
        
        return "home";
    }

}