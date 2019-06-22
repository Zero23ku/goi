package cl.zero23ku.goi.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GoiController{

    @GetMapping("/goi")
    public Map<String,String> getWord(){
        Map<String,String> word = new HashMap<>();
        word.put("goi","Ayyyy");
        return word;
    }

    @GetMapping("/goi/{goi}/kaitou/{kaitou}")
    public Map<String,String> checkMeaning(@PathVariable String goi, @PathVariable String kaitou){
        Map<String,String> meaning = new HashMap<>();
        meaning.put("word",goi);
        meaning.put("meaningResult","Ayyyy".equalsIgnoreCase(kaitou) ? "○":"×");
        return meaning;
    }

}