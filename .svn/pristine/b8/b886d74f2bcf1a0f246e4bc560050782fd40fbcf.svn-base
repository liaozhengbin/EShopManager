package com.iyunhe.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.iyunhe.common.PageUtil;
import com.iyunhe.pojo.TbUserAfter;
import com.iyunhe.serivce.TbInvoiceBiz;
import com.iyunhe.serivce.TbOperateLogBiz;
import com.iyunhe.serivce.TbOrderBiz;
import com.iyunhe.serivce.TbOrderDetailBiz;
import com.iyunhe.serivce.impl.TbInvoiceBizImpl;
import com.iyunhe.serivce.impl.TbOperateLogBizImpl;
import com.iyunhe.serivce.impl.TbOrderBizImpl;
import com.iyunhe.serivce.impl.TbOrderDetailBizImpl;
import com.iyunhe.util.ParameterUtil;

@Controller
@RequestMapping("orders")
public class OrderController {

	private TbOrderBiz orderbiz	= new TbOrderBizImpl();
	private TbOrderDetailBiz orderDetailbiz	= new TbOrderDetailBizImpl();
	private TbOperateLogBiz operateLogbiz	= new TbOperateLogBizImpl();
	private TbInvoiceBiz invoicebiz	= new TbInvoiceBizImpl();
	
	@RequestMapping("/query")
	public String query(HttpServletRequest request,Model model ) throws Exception{
		Map<String, Object> map = ParameterUtil.fillMapFromRequest(request);
		if (map==null) {
			map = new HashMap<String, Object>();
		}
		//书籍列表分页	
		PageUtil.pageing(map.get("currentPage"), map.get("pageSize"), orderbiz.count(map), model);
		//查询书籍列表
		model.addAttribute("orderlist",orderbiz.select(map));
		model.addAllAttributes(map);
		return "orders_query.jsp";
	}

	@RequestMapping("/info")
	public String info(@RequestParam(value="orderId",required=true) String orderId,Model model ) throws Exception{
		//查询订单信息
		model.addAttribute("order",orderbiz.selectById(orderId));
		//查询订单详情
		model.addAttribute("orderDetaillist",orderDetailbiz.select(orderId));
		model.addAttribute("perateLogList", operateLogbiz.selectById(orderId));
		return "orders_info.jsp";
	}

	@RequestMapping("/sendlist")
	public String sendList(HttpServletRequest request,Model model ) throws Exception{
		Map<String, Object> map = ParameterUtil.fillMapFromRequest(request);

		//书籍列表分页	
		PageUtil.pageing(map.get("currentPage"), map.get("pageSize"), orderbiz.countStatusIsSend(), model);
		//查询书籍列表
		model.addAttribute("orderlist",invoicebiz.select(map));
		model.addAllAttributes(map);
		return "orders_sendlist.jsp";
	}

	@RequestMapping("/returnslist")
	public String returnList(HttpServletRequest request,Model model ) throws Exception{
		Map<String, Object> map = ParameterUtil.fillMapFromRequest(request);
		//书籍列表分页	
		PageUtil.pageing(map.get("currentPage"), map.get("pageSize"), orderbiz.countStatusIsCancel(), model);
		//查询书籍列表
		model.addAttribute("orderlist",orderbiz.selectIsCancel(map));
		model.addAllAttributes(map);
		return "orders_returnslist.jsp";
	}

	@RequestMapping("/delete/{orderId}")
	public String delete(@PathVariable("orderId") String orderId) throws Exception{
		return "redirect:/orders/query?result="+orderbiz.delete(orderId);
	}

	@RequestMapping("/setstatus/{orderId}/{orderStatus}")
	public String setStatus(@PathVariable("orderId") String orderId,HttpServletRequest request,
			@PathVariable("orderStatus") int orderStatus,Model model) throws Exception{
		orderbiz.updateStatus(orderId, orderStatus);
		TbUserAfter userInfo = (TbUserAfter) request.getSession().getAttribute("UserInfo");
		//发货
		if (orderStatus==2) {
			invoicebiz.insert(userInfo.getUser_id(),orderId, orderStatus);
		}
		operateLogbiz.updateStatus(userInfo.getUser_id(),orderId, orderStatus);
		//查询操作日志
		model.addAttribute("perateLogList", operateLogbiz.selectById(orderId));
		//查询订单信息
		model.addAttribute("order",orderbiz.selectById(orderId));
		//查询订单详情
		model.addAttribute("orderDetaillist",orderDetailbiz.select(orderId));
		return "orders_info.jsp";
	}

}
