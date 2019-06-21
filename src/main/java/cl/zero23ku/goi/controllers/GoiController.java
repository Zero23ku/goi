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

    @GetMapping("/goi/{word}")
    public Map<String,String> checkMeaning(@PathVariable String word){
        Map<String,String> meaning = new HashMap<>();
        meaning.put("word",word);
        meaning.put("meaningResult","Ayyyy".equalsIgnoreCase(word) ? "FFFFFFF":"ZZZZZZ");
        return meaning;
    }

}