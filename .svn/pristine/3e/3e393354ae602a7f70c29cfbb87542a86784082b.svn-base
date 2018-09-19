package com.iyunhe.util;

import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

/**
 * @author sunny
 * 从其他数据源得到参数
 */
public class ParameterUtil {

	/**
	 * get a object from the request which is mapping from the request 
	 * @param clazz 	the type of the object
	 * @param request 	the data resource 
	 * @return the object of T which is mapping for the request
	 */
	public static <T> T getJavaBeans(Class<T> clazz,HttpServletRequest request){
		return ORMUtil.getJavaBeans(clazz, request);
	}
	
	/**
	 * filled to the map by request
	 * @param request
	 * @return map
	 */
	public static Map<String,Object> fillMapFromRequest(HttpServletRequest request){
		return ORMUtil.getParameters(request);
	}
	
	/**
	 * filled to the request by map
	 * @param request
	 * @param map
	 */
	public static void setRequestParamters(HttpServletRequest request,Map<String,Object> map){
		if (map != null && request != null) {
			Set<String> keys = map.keySet();
			if (keys.size() > 0) {
				for (String str : keys) {
					if (map.get(str)!=null) {
						request.setAttribute(str, map.get(str));
					}
				}
			}
		}
	}
}
