package edu.kosmo.ex.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import edu.kosmo.ex.vo.BoardVO;


@Mapper
public interface BoardMapper {

   List<BoardVO> getList();
   BoardVO read(int bid);
   void insert(BoardVO board);
   void delete(int bid);
   void update( BoardVO board);
   void updateHit(int bid);
   
   
   //댓글관련
   void updateShape(BoardVO boardVO);
   void insertReply(BoardVO boardVO);
   

}