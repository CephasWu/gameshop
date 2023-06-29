package com.wistronits.tp2305.eshop.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {

    private static final String DEFAULT_FORMAT = "yyyy-MM-dd HH:mm:ss";
    private static final String DEFAULT_TW_DATE_FORMAT = "yyyMMdd";
    private static final int TW_YEAR_OFFSET = 1911;

    /**
     * 將日期格式化為預設格式的字串
     *
     * @param date 日期物件
     * @return 格式化後的字串
     */
    public static String formatDate(Date date) {
        return formatDate(date, DEFAULT_FORMAT);
    }

    /**
     * 將日期格式化為指定格式的字串
     *
     * @param date   日期物件
     * @param format 指定的日期格式
     * @return 格式化後的字串
     */
    public static String formatDate(Date date, String format) {
        DateFormat dateFormat = new SimpleDateFormat(format);
        return dateFormat.format(date);
    }

    /**
     * 將字串解析為預設格式的日期物件
     *
     * @param dateString 待解析的字串
     * @return 解析後的日期物件
     * @throws ParseException 如果字串無法解析為日期，則拋出 ParseException 異常
     */
    public static Date parseDate(String dateString) throws ParseException {
        return parseDate(dateString, DEFAULT_FORMAT);
    }

    /**
     * 將字串解析為指定格式的日期物件
     *
     * @param dateString 待解析的字串
     * @param format     指定的日期格式
     * @return 解析後的日期物件
     * @throws ParseException 如果字串無法解析為日期，則拋出 ParseException 異常
     */
    public static Date parseDate(String dateString, String format) throws ParseException {
        DateFormat dateFormat = new SimpleDateFormat(format);
        return dateFormat.parse(dateString);
    }

    /**
     * 將日期格式化為預設的民國日期格式（yyyMMdd）
     *
     * @param date 日期物件
     * @return 格式化後的民國日期字串
     */
    public static String formatTWDate(Date date) {
        return formatTWDate(date, DEFAULT_TW_DATE_FORMAT);
    }

    /**
     * 將日期格式化為指定的民國日期格式
     *
     * @param date   日期物件
     * @param format 指定的民國日期格式
     * @return 格式化後的民國日期字串
     */
    public static String formatTWDate(Date date, String format) {
        DateFormat dateFormat = new SimpleDateFormat(format);
        int twYear = getTWYear(date);
        String twDateString = dateFormat.format(date);
        return String.valueOf(twYear) + twDateString;
    }

    /**
     * 獲取指定日期的民國年份
     *
     * @param date 日期物件
     * @return 民國年份
     */
    public static int getTWYear(Date date) {
        int year = getYear(date);
        return year - TW_YEAR_OFFSET;
    }

    /**
     * 獲取指定日期的年份
     *
     * @param date 日期物件
     * @return 年份
     */
    public static int getYear(Date date) {
        SimpleDateFormat yearFormat = new SimpleDateFormat("yyyy");
        String yearString = yearFormat.format(date);
        return Integer.parseInt(yearString);
    }
    
    /**
     * 將日期物件轉換為指定格式的字串表示
     *
     * @param date   日期物件
     * @param format 指定的日期格式
     * @return 格式化後的字串
     */
    public static String format(Date date, String format) {
        DateFormat dateFormat = new SimpleDateFormat(format);
        return dateFormat.format(date);
    }

    /**
     * 將字串表示的日期轉換為指定格式的日期物件
     *
     * @param dateString 待解析的字串
     * @param format     指定的日期格式
     * @return 解析後的日期物件
     * @throws ParseException 如果字串無法解析為日期，則拋出 ParseException 異常
     */
    public static Date parse(String dateString, String format) throws ParseException {
        DateFormat dateFormat = new SimpleDateFormat(format);
        return dateFormat.parse(dateString);
    }

    /**
     * 將日期物件轉換為民國年的字串表示
     *
     * @param date 日期物件
     * @return 民國年的字串表示
     */
    public static String formatTWYear(Date date) {
        int year = getYear(date);
        int twYear = year - TW_YEAR_OFFSET;
        return String.valueOf(twYear);
    }

    /**
     * 將民國年的字串表示轉換為日期物件
     *
     * @param twYearString 民國年的字串表示
     * @return 轉換後的日期物件
     * @throws ParseException 如果字串無法解析為日期，則拋出 ParseException 異常
     */
    public static Date parseTWYear(String twYearString) throws ParseException {
        int twYear = Integer.parseInt(twYearString);
        int year = twYear + TW_YEAR_OFFSET;
        return parse(year + "-01-01", "yyyy-MM-dd");
    }
}

