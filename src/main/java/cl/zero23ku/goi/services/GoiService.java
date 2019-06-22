package cl.zero23ku.goi.services;

import java.util.List;

import org.springframework.stereotype.Service;

import cl.zero23ku.goi.dao.WordsMapper;

@Service
public class GoiService{

    WordsMapper wordsMapper;

    public GoiService(WordsMapper wordsMapper){
        this.wordsMapper = wordsMapper;
    }

    public String getRandomJPWord(){
        return this.wordsMapper.getRandomWord();
    }

    public List<String> getJPWordMeaning(String jp){
        return this.wordsMapper.getJPWordMeaning(jp);
    }
}