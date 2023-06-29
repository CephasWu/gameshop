package com.wistronits.tp2305.eshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wistronits.tp2305.eshop.model.entity.PurchaseHistoryDetail;

@Repository
public interface PurchaseHistoryDetailRepository extends JpaRepository<PurchaseHistoryDetail, Long> {


}
