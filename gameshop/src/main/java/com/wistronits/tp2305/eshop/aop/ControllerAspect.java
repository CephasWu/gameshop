package com.wistronits.tp2305.eshop.aop;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.wistronits.tp2305.eshop.utils.DateUtils;

@Aspect
@Component
public class ControllerAspect {
    private static final Logger logger = LoggerFactory.getLogger(ControllerAspect.class);
    private static final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");

    @Pointcut("execution(* com.wistronits.tp2305.eshop.controller.*.*(..))")
    public void controllerMethods() {}

    /**
     * controller 攔截
     * 類
     * 方法
     * 呼叫時間
     * input output 參數
     * @author Boris Sun
     *
     */
    @Around("controllerMethods()")
    public Object logControllerMethod(ProceedingJoinPoint joinPoint) throws Throwable {
        String className = joinPoint.getTarget().getClass().getSimpleName();
        String methodName = joinPoint.getSignature().getName();
        
        // 獲取input參數
        Object[] inputArgs = joinPoint.getArgs();
        
        // 將String[] args 轉String
        String inputArgsString = Arrays.toString(inputArgs);

        // 打印
        logger.info("{}.{} input: {}", className, methodName, inputArgsString);

        long startTime = System.currentTimeMillis();
        logger.info("----------------starting---------------");
        logger.info("executing {}.{} started in {}", className, methodName, DateUtils.format(new Date(startTime), "yyyy-MM-dd HH:mm:ss"));
        logger.info("---------------------------------------");
        
        Object result = null;
        try {
            result = joinPoint.proceed();
        } finally {
            long endTime = System.currentTimeMillis();
            long duration = endTime - startTime;
            
            //打印輸出結果
            logger.info("{}.{} output: {}", className, methodName, result);
            
            logger.info("----------------ending-----------------");
            logger.info("executed: {}.{} endTime: {} duration: {} ms", className, methodName, DateUtils.format(new Date(endTime), "yyyy-MM-dd HH:mm:ss"), duration);
            logger.info("---------------------------------------");
        }

        return result;
    }

}
