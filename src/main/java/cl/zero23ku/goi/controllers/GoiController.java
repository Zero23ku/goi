package cl.zero23ku.goi.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import cl.zero23ku.goi.services.GoiService;

@RestController
public class GoiController{

    private GoiService goiService;

    public GoiController(GoiService goiService){
        this.goiService = goiService;
    }

    @GetMapping("/goi")
    public Map<String,String> getWord(){
        Map<String,String> word = new HashMap<>();
        String rWord = this.goiService.getRandomJPWord();
        word.put("goi",rWord);
        return word;
    }

    @GetMapping("/goi/{goi}/kaitou/{kaitou}")
    public Map<String,String> checkMeaning(@PathVariable String goi, @PathVariable String kaitou){
        Map<String,String> meaning = new HashMap<>();
        String mWord = this.goiService.getJPWordMeaning(kaitou);
        meaning.put("word",goi);
        meaning.put("meaningResult",mWord.equalsIgnoreCase(kaitou) ? "○":"×");
        return meaning;
    }

}