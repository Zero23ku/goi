package cl.zero23ku.goi.controllers;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
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
    public Map<String,String> checkMeaning(@PathVariable String goi, @PathVariable String kaitou) throws Exception{
        Map<String,String> meaning = new HashMap<>();
        String decodedGoi = java.net.URLDecoder.decode(goi, "UTF-8");
        List<String> mWord = this.goiService.getJPWordMeaning(decodedGoi);
        boolean isCorrect = false;
        for (String ele : mWord) {
            if(ele.equalsIgnoreCase(kaitou)){
                meaning.put("meaningResult","○");
                isCorrect = true;
                break;
            }
        }
        meaning.put("word",decodedGoi);
        if(!isCorrect){
            meaning.put("meaningResult","×");
        }
        return meaning;
    }

}