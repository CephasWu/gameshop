package com.wistronits.tp2305.eshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.wistronits.tp2305.eshop.model.entity.Shipping;

@Repository
public interface ShippingRepository extends JpaRepository<Shipping, Long> {

	// @Query("SELECT s FROM Shipping s WHERE s.member_id = :member_id")
	// List<Shipping> findByMember_id(@Param("member_id") int member_id);

	List<Shipping> findByMemberid(int memberid);

	// List<Shipping> findByProductid(int productid);

	Shipping findByProductid(int productid);

//	void deleteByProductid(int productid);

	void deleteByProductidAndMemberid(int productid, int memberid);
	
	
	Shipping findByProductidAndMemberid(int productid, int memberid);
	

}
