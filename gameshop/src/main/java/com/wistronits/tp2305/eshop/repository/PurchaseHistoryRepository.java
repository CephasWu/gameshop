package com.wistronits.tp2305.eshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wistronits.tp2305.eshop.model.entity.PurchaseHistory;

@Repository
public interface PurchaseHistoryRepository extends JpaRepository<PurchaseHistory, Long> {

//	@Query("SELECT s FROM Shipping s WHERE s.member_id = :member_id")
//	List<Shipping> findByMember_id(@Param("member_id") int member_id);
//
//	List<Shipping> findByProductid(int productid);
}
