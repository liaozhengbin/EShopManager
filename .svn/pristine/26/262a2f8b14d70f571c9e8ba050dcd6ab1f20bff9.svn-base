package com.iyunhe.common;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Administrator
 * 用于分页
 */
public class PageUtil {
	private static final Integer CURRENTPAGE = 1;
	private static final Integer PAGESIZE = 10;
	/**
	 * 分页初始化
	 */
	public static void initPage(Map<String, Object> map){
		Object currentPage = map.get("currentPage");
		Object pageSize = map.get("pageSize");
		if (pageSize==null) {
			pageSize = PAGESIZE;
			map.put("pageSize", PAGESIZE);
		}
		if (currentPage==null) {
			currentPage = CURRENTPAGE;
			map.put("beginIndex", CURRENTPAGE-1);
		}else{
			map.put("beginIndex", (Integer.valueOf(currentPage+"")-1)*Integer.valueOf(pageSize+""));
		}
	}
	public static void pageing(Object currentPage,Object pageSize, long totalCount, Model model){
		try {
			Integer pageNo = Integer.valueOf(currentPage.toString());
			Integer count = Integer.valueOf(pageSize.toString());
			pageing(pageNo, count, totalCount, model);
		} catch (Exception e) {
			pageing(CURRENTPAGE, PAGESIZE, totalCount, model);
		}
	}
	public static void pageing(Integer currentPage,Integer pageSize, long totalCount, Model model){
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("pageSize", pageSize);
		long totalPage=(totalCount-1)/pageSize+1;
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("currentPage", currentPage);
		int beginPage=(currentPage-10)>0?(currentPage-10):1;
		model.addAttribute("beginPage", beginPage);
		long endPage=(beginPage+19)<totalPage?(beginPage+19):totalPage;
		model.addAttribute("endPage", endPage);
	}
	public static void pageing(Object currentPage,Object pageSize, long totalCount, ModelAndView model){
		try {
			Integer pageNo = Integer.valueOf(currentPage.toString());
			Integer count = Integer.valueOf(pageSize.toString());
			pageing(pageNo, count, totalCount, model);
		} catch (Exception e) {
			pageing(CURRENTPAGE, PAGESIZE, totalCount, model);
		}
	}
	public static void pageing(Integer currentPage,Integer pageSize, long totalCount, ModelAndView model){
		model.addObject("totalCount", totalCount);
		model.addObject("pageSize", pageSize);
		long totalPage=(totalCount-1)/pageSize+1;
		model.addObject("totalPage", totalPage);
		model.addObject("currentPage", currentPage);
		int beginPage=(currentPage-10)>0?(currentPage-10):1;
		model.addObject("beginPage", beginPage);
		long endPage=(beginPage+19)<totalPage?(beginPage+19):totalPage;
		model.addObject("endPage", endPage);
	}
	public static void pageing(Object currentPage,Object pageSize, long totalCount,HttpServletRequest request){
		try {
			Integer pageNo = Integer.valueOf(currentPage.toString());
			Integer count = Integer.valueOf(pageSize.toString());
			pageing(pageNo, count, totalCount, request);
		} catch (Exception e) {
			pageing(CURRENTPAGE, PAGESIZE, totalCount, request);
		}
	}
	public static void pageing(Integer currentPage,Integer pageSize, long totalCount, HttpServletRequest request){
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("pageSize", pageSize);
		long totalPage=(totalCount-1)/pageSize+1;
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("currentPage", currentPage);
		int beginPage=(currentPage-10)>0?(currentPage-10):1;
		request.setAttribute("beginPage", beginPage);
		long endPage=(beginPage+19)<totalPage?(beginPage+19):totalPage;
		request.setAttribute("endPage", endPage);
	}
}
