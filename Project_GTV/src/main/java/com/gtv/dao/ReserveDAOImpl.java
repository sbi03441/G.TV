package com.gtv.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gtv.vo.MovietotalVO;
import com.gtv.vo.ReservationVO;
import com.gtv.vo.SeatNumberVO;
import com.gtv.vo.Seat_theaterVO;

@Repository
public class ReserveDAOImpl implements ReserveDAO {
   
   @Autowired
   private SqlSession sqlSession;

   @Override
   public MovietotalVO getMovie(MovietotalVO mtvo) {
      return sqlSession.selectOne("getmovie", mtvo);
   }

   @Override
   public List<Seat_theaterVO> getSeat(MovietotalVO mtvo) {
      return sqlSession.selectList("getseat", mtvo);
   }

   @Override
   public void insertbook(ReservationVO rvo) {
      sqlSession.insert("insertbook",rvo);
      
   }

   @Override
   public void insertbooking(ReservationVO rvo2) {
      sqlSession.insert("insertbooking", rvo2);
   }

   @Override
   public ReservationVO getnum(ReservationVO rvo2) {
      return sqlSession.selectOne("getnum", rvo2);
   }

   @Override
   public void updatermain(ReservationVO rvo3) {
      sqlSession.update("updateremain", rvo3);
      
   }

   @Override
   public ReservationVO gettotalnum(int reservenum) {
      return sqlSession.selectOne("mv_cancel",reservenum);
   }

   @Override
   public void deleteSeat(ReservationVO re) {
      sqlSession.delete("del", re);
      
   }

   @Override
   public void deleteReserve(int reservenum) {
      sqlSession.delete("del_re", reservenum);
      
   }

   @Override
   public List<ReservationVO> getmvList(String id) {
      return sqlSession.selectList("get_List", id);
   }



   


   
}