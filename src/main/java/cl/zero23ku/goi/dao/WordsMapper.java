package cl.zero23ku.goi.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface WordsMapper{

        @Select("SELECT japones FROM palabras ORDER BY RAND() LIMIT 1")
        public String getRandomWord();

        @Select("SELECT espanol FROM palabras WHERE japones =#{jp}")
        public List<String> getJPWordMeaning(String jp);
}