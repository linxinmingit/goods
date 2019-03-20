package com.chains.util;

import org.apache.commons.lang3.time.DateFormatUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


/**
 * 日期工具类, 继承org.apache.commons.lang.time.DateUtils类
 * @author 
 * @version 2014-4-15
 */
public class DateUtils extends org.apache.commons.lang3.time.DateUtils {
	
	private static String[] parsePatterns = {
		"yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm", "yyyy-MM", 
		"yyyy/MM/dd", "yyyy/MM/dd HH:mm:ss", "yyyy/MM/dd HH:mm", "yyyy/MM",
		"yyyy.MM.dd", "yyyy.MM.dd HH:mm:ss", "yyyy.MM.dd HH:mm", "yyyy.MM"};

	/**
	 * 得到当前日期字符串 格式（yyyy-MM-dd）
	 */
	public static String getDate() {
		return getDate("yyyy-MM-dd");
	}
	
	/**
	 * 得到当前日期字符串 格式（yyyy-MM-dd） pattern可以为："yyyy-MM-dd" "HH:mm:ss" "E"
	 */
	public static String getDate(String pattern) {
		return DateFormatUtils.format(new Date(), pattern);
	}
	
	/**
	 * 得到日期字符串 默认格式（yyyy-MM-dd） pattern可以为："yyyy-MM-dd" "HH:mm:ss" "E"
	 */
	public static String formatDate(Date date, Object... pattern) {
		String formatDate = null;
		if (pattern != null && pattern.length > 0) {
			formatDate = DateFormatUtils.format(date, pattern[0].toString());
		} else {
			formatDate = DateFormatUtils.format(date, "yyyy-MM-dd");
		}
		return formatDate;
	}
	
	/**
	 * 得到日期时间字符串，转换格式（yyyy-MM-dd HH:mm:ss）
	 */
	public static String formatDateTime(Date date) {
		return formatDate(date, "yyyy-MM-dd HH:mm:ss");
	}

	/**
	 * 得到当前时间字符串 格式（HH:mm:ss）
	 */
	public static String getTime() {
		return formatDate(new Date(), "HH:mm:ss");
	}

	/**
	 * 得到当前日期和时间字符串 格式（yyyy-MM-dd HH:mm:ss）
	 */
	public static String getDateTime() {
		return formatDate(new Date(), "yyyy-MM-dd HH:mm:ss");
	}

	/**
	 * 得到当前年份字符串 格式（yyyy）
	 */
	public static String getYear() {
		return formatDate(new Date(), "yyyy");
	}

	/**
	 * 得到当前月份字符串 格式（MM）
	 */
	public static String getMonth() {
		return formatDate(new Date(), "MM");
	}

	/**
	 * 得到当天字符串 格式（dd）
	 */
	public static String getDay() {
		return formatDate(new Date(), "dd");
	}

	/**
	 * 得到当前星期字符串 格式（E）星期几
	 */
	public static String getWeek() {
		return formatDate(new Date(), "E");
	}
	
	/**
	 * 日期型字符串转化为日期 格式
	 * { "yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm", 
	 *   "yyyy/MM/dd", "yyyy/MM/dd HH:mm:ss", "yyyy/MM/dd HH:mm",
	 *   "yyyy.MM.dd", "yyyy.MM.dd HH:mm:ss", "yyyy.MM.dd HH:mm" }
	 */
	public static Date parseDate(Object str) {
		if (str == null){
			return null;
		}
		try {
			return parseDate(str.toString(), parsePatterns);
		} catch (ParseException e) {
			return null;
		}
	}

	/**
	 * 获取过去的天数
	 * @param date
	 * @return
	 */
	public static long pastDays(Date date) {
		long t = new Date().getTime()-date.getTime();
		return t/(24*60*60*1000);
	}

	/**
	 * 获取过去的小时
	 * @param date
	 * @return
	 */
	public static long pastHour(Date date) {
		long t = new Date().getTime()-date.getTime();
		return t/(60*60*1000);
	}
	
	/**
	 * 获取过去的分钟
	 * @param date
	 * @return
	 */
	public static long pastMinutes(Date date) {
		long t = new Date().getTime()-date.getTime();
		return t/(60*1000);
	}
	
	/**
	 * 转换为时间（天,时:分:秒.毫秒）
	 * @param timeMillis
	 * @return
	 */
    public static String formatDateTime(long timeMillis){
		long day = timeMillis/(24*60*60*1000);
		long hour = (timeMillis/(60*60*1000)-day*24);
		long min = ((timeMillis/(60*1000))-day*24*60-hour*60);
		long s = (timeMillis/1000-day*24*60*60-hour*60*60-min*60);
		long sss = (timeMillis-day*24*60*60*1000-hour*60*60*1000-min*60*1000-s*1000);
		return (day>0?day+",":"")+hour+":"+min+":"+s+"."+sss;
    }
	
	/**
	 * 获取两个日期之间的天数
	 * 
	 * @param before
	 * @param after
	 * @return
	 */
	public static double getDistanceOfTwoDate(Date before, Date after) {
		long beforeTime = before.getTime();
		long afterTime = after.getTime();
		return (afterTime - beforeTime) / (1000 * 60 * 60 * 24);
	}
	
	/**
	 * 判断传入的日期是否为当天
	 * @param date
	 * @return
	 */
	public static boolean isSameDay(Date date) {
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    String ds1 = sdf.format(date);
	    String ds2 = sdf.format(new Date());
	    if (ds1.equals(ds2)) {
	        return true;
	    } else {
	        return false;
	    }
	}
	/**
	 *  传入的date格式为2016-1
	 * @Title: getThisMonthFirstDay
	 * @Description: 获取前月的第一天
	 * @author yaogai
	 * @return
	 */
	public static String getThisMonthFirstDay(String date){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		//获取前月的第一天
		String[] dateString =  date.split("-");
		int year = Integer.parseInt(dateString[0].trim());
		int month = Integer.parseInt(dateString[1].trim());
		Calendar c = Calendar.getInstance(); 
		c.set(Calendar.YEAR,year);
		c.set(Calendar.MONTH, month-1);
        c.set(Calendar.DAY_OF_MONTH,1);//设置为1号,当前日期既为本月第一天
        String firstDay = format.format(c.getTime());
        return firstDay;
        
	}
	/**
	 * 传入的date格式为2016-1-1
	 * @Title: getThisMonthLastDay
	 * @Description: 获取当前月的最后一天
	 * @author yaogai
	 * @return
	 */
	public static String getThisMonthLastDay(String date){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		//获取前月的最后一天
		String[] dateString =  date.split("-");
		int year = Integer.parseInt(dateString[0].trim());
		int month = Integer.parseInt(dateString[1].trim());
		Calendar c = Calendar.getInstance();  
		c.set(Calendar.YEAR,year);
		c.set(Calendar.MONTH, month-1);
        c.set(Calendar.DAY_OF_MONTH, c.getActualMaximum(Calendar.DAY_OF_MONTH)); 
        String lastDay = format.format(c.getTime());
        return lastDay;
	}
	
	 /**
     * @Title: 传入一个日期参数，返回该日期所在月份的第一天
	 * @Description: 传入一个日期参数，返回该日期所在月份的第一天
	 * @author baddyzhou
     * @return
     */
    public static Date getMonthStartTime(Date date) { 	
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        
        try {
            c.set(Calendar.DATE, 1);  
            
            return parseDate(formatDate(c.getTime(),"yyyy-MM-dd")+ " 00:00:00");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c.getTime();
    }

	
	/**
    * @Title: 传入一个日期参数，返回该日期所在月份的最后一天
	* @Description: 传入一个日期参数，返回该日期所在月份的最后一天
	* @author baddyzhou
    * @return
    */
    public static Date getMonthEndTime(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        
        try {
        	c.set(Calendar.DAY_OF_MONTH, c.getActualMaximum(Calendar.DAY_OF_MONTH)); 
            return parseDate(formatDate(c.getTime(),"yyyy-MM-dd") + " 23:59:59");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c.getTime();
    }
    
	 /**
     * @Title: 传入一个日期参数，返回该日期所在季度的第一天
	 * @Description: 传入一个日期参数，返回该日期所在季度的第一天
	 * @author baddyzhou
     * @return
     */
    public static Date getQuarterStartTime(Date date) { 	
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        
        int currentMonth = c.get(Calendar.MONTH) + 1;
        try {
            if (currentMonth >= 1 && currentMonth <= 3)
                c.set(Calendar.MONTH, 0);
            else if (currentMonth >= 4 && currentMonth <= 6)
                c.set(Calendar.MONTH, 3);
            else if (currentMonth >= 7 && currentMonth <= 9)
                c.set(Calendar.MONTH, 4);
            else if (currentMonth >= 10 && currentMonth <= 12)
                c.set(Calendar.MONTH, 9);
            c.set(Calendar.DATE, 1);  
            
            return parseDate(formatDate(c.getTime(),"yyyy-MM-dd")+ " 00:00:00");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c.getTime();
    }

	
	/**
    * @Title: 传入一个日期参数，返回该日期所在季度的最后一天
	* @Description: 传入一个日期参数，返回该日期所在季度的最后一天
	* @author baddyzhou
    * @return
    */
    public static Date getQuarterEndTime(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        
        int currentMonth = c.get(Calendar.MONTH) + 1;
        try {
            if (currentMonth >= 1 && currentMonth <= 3) {
                c.set(Calendar.MONTH, 2);
                c.set(Calendar.DATE, 31);
            } else if (currentMonth >= 4 && currentMonth <= 6) {
                c.set(Calendar.MONTH, 5);
                c.set(Calendar.DATE, 30);
            } else if (currentMonth >= 7 && currentMonth <= 9) {
                c.set(Calendar.MONTH, 8);
                c.set(Calendar.DATE, 30);
            } else if (currentMonth >= 10 && currentMonth <= 12) {
                c.set(Calendar.MONTH, 11);
                c.set(Calendar.DATE, 31);
            }
            return parseDate(formatDate(c.getTime(),"yyyy-MM-dd") + " 23:59:59");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c.getTime();
    }

	 /**
     * @Title: 传入一个日期参数，返回该日期所在半年的第一天
	 * @Description: 传入一个日期参数，返回该日期所在半年的第一天
	 * @author baddyzhou
     * @return
     */    
    public static Date getHalfYearStartTime(Date date){
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        
        int currentMonth = c.get(Calendar.MONTH) + 1;
        try {
            if (currentMonth >= 1 && currentMonth <= 6){
                c.set(Calendar.MONTH, 0);
            }else if (currentMonth >= 7 && currentMonth <= 12){
                c.set(Calendar.MONTH, 6);
            }
            c.set(Calendar.DATE, 1);
            
            return parseDate(formatDate(c.getTime(),"yyyy-MM-dd")+ " 00:00:00");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c.getTime();
        
    }
	 /**
     * @Title: 传入一个日期参数，返回该日期所在半年的最后一天
	 * @Description: 传入一个日期参数，返回该日期所在半年的最后一天
	 * @author baddyzhou
     * @return
     */ 
    public static Date getHalfYearEndTime(Date date){
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        
        int currentMonth = c.get(Calendar.MONTH) + 1;
        try {
            if (currentMonth >= 1 && currentMonth <= 6){
                c.set(Calendar.MONTH, 5);
                c.set(Calendar.DATE, 30);
            }else if (currentMonth >= 7 && currentMonth <= 12){
                c.set(Calendar.MONTH, 11);
                c.set(Calendar.DATE, 31);
            }
            
            return parseDate(formatDate(c.getTime(),"yyyy-MM-dd") + " 23:59:59");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c.getTime();
    }
    
	 /**
     * @Title: 传入一个日期参数，返回该日期所在年的第一天
	 * @Description: 传入一个日期参数，返回该日期所在年的第一天
	 * @author baddyzhou
     * @return
     */    
    public static Date getYearStartTime(Date date){
        Calendar c = Calendar.getInstance();
        c.setTime(date);
       
        try {
            c.set(Calendar.MONTH, 0);
            c.set(Calendar.DATE, 1);
            return parseDate(formatDate(c.getTime(),"yyyy-MM-dd")+ " 00:00:00");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c.getTime();
        
    }
	 /**
     * @Title: 传入一个日期参数，返回该日期所在年的最后一天
	 * @Description: 传入一个日期参数，返回该日期所在年的最后一天
	 * @author baddyzhou
     * @return
     */ 
    public static Date getYearEndTime(Date date){
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        
        try {
            c.set(Calendar.MONTH, 11);
            c.set(Calendar.DATE, 31);
            return parseDate(formatDate(c.getTime(),"yyyy-MM-dd") + " 23:59:59");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c.getTime();
    }    
	/**
	 * @param args
	 * @throws ParseException
	 */
	public static void main(String[] args) throws ParseException {
//		System.out.println(formatDate(parseDate("2010/3/6")));
//		System.out.println(getDate("yyyy年MM月dd日 E"));
//		long time = new Date().getTime()-parseDate("2012-11-19").getTime();
//		System.out.println(time/(24*60*60*1000));
		//String hm = DateFormatUtils.format(new Date(), "HH:mm");
		//System.out.println(hm);
		getThisMonthFirstDay("2016-07");getThisMonthLastDay("2016-5");
	
	}
	
}
