package com.iyunhe.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.iyunhe.common.FileUpload;
import com.iyunhe.common.PageUtil;
import com.iyunhe.pojo.TbBook;
import com.iyunhe.pojo.TbType;
import com.iyunhe.serivce.TbBookBiz;
import com.iyunhe.serivce.TbTypeBiz;
import com.iyunhe.serivce.impl.TbBookBizImpl;
import com.iyunhe.serivce.impl.TbTypeBizImpl;
import com.iyunhe.util.ParameterUtil;

@Controller
@RequestMapping("books")
public class BookController {

	private TbBookBiz bookbiz = new TbBookBizImpl();
	private TbTypeBiz typebiz = new TbTypeBizImpl();
	@RequestMapping("/query")
	public String query(HttpServletRequest request,Model model ) throws Exception{
		Map<String, Object> map = ParameterUtil.fillMapFromRequest(request);
		if (map==null) {
			map = new HashMap<String, Object>();
		}
		//书籍列表分页	
		PageUtil.pageing(map.get("currentPage"), map.get("pageSize"), bookbiz.count(map), model);
		//查询书籍列表
		model.addAttribute("booklist",bookbiz.select(map));
		model.addAllAttributes(map);
		//查询分类
		model.addAttribute("typelist",typebiz.select());
		return "books_query.jsp";
	}

	//修改热销状态
	@RequestMapping("/updateIsHot/{isHot}/{book_id}")
	public @ResponseBody int updateIsHot(@PathVariable int isHot,
			 				@PathVariable int book_id
			 				) throws Exception{
		int num=bookbiz.updateIsHot(isHot, book_id);
		return num;
	}
	
	//修改新品状态
	@RequestMapping("/updatenew/{isNew}/{book_id}")
	public @ResponseBody int updateNew(@PathVariable Integer isNew,
						  @PathVariable int book_id
			 ) throws Exception{
		System.out.println("isNew is "+isNew+",bookId is "+book_id);
		int num=bookbiz.updateNew(isNew, book_id);
		return num;
	}
	
	//修改上下架
	@RequestMapping("/updateonline/{book_id}/{status}")			
	public @ResponseBody int updateOnline(@PathVariable("book_id") int bookId,
							 @PathVariable("status") int status
			) throws Exception{
		System.out.println("bookId is "+bookId+"status is "+status);
		int num=bookbiz.updateOnline(status, bookId);
		return num;
		
	}
	
	//图书修改前的查询
	@RequestMapping("/updatebookselect/{bookId}")
	public ModelAndView updatebookselect(@PathVariable int bookId){
		ModelAndView model=new ModelAndView();
		TbBook bookInfo= bookbiz.selectupdatebook(bookId);
		List<TbType> typeList= typebiz.selectAllType();
	
		model.addObject("bookInfo", bookInfo);
		model.addObject("typeList", typeList);
		model.setViewName("updatebook.jsp");
		
		return model;
		
	}
	
	
	//修改
	@RequestMapping("/update")
	public String update(TbBook book,
						@RequestParam("book_logo_big") MultipartFile book_logo_big,
						@RequestParam("book_logo_small") MultipartFile book_logo_small,
						HttpServletRequest request	
		) throws IllegalStateException, IOException{
		
		System.out.println(book);
		//调用上传方法
		String book_logo_big_name = FileUpload.fileUpload(book_logo_big, request);
		String book_logo_small_name = FileUpload.fileUpload(book_logo_small, request);
		book.setBookLogoBig(book_logo_big_name);
		book.setBookLogoSmall(book_logo_small_name);
		//然后将这些信息一起插入到DB
		bookbiz.insert(book);
		
		return "redirect:/books/query";
	}
	
	
	//添加图书前查询分类
	@RequestMapping("/goAdd")	
	public ModelAndView goAdd(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ModelAndView model=new ModelAndView();
		model.setViewName("books_add.jsp");
		return model;
	}
	
	//添加图书
	@RequestMapping("/add")
	public String add(TbBook book,
					  @RequestParam(value="book_logo_big",required=false) MultipartFile book_logo_big,
					  @RequestParam(value="book_logo_small",required=false) MultipartFile book_logo_small,
					  @RequestParam(value="pic_name1",required=false) MultipartFile []  pic_name1,
					  HttpServletRequest request
		) throws Exception {
		
		//调用上传方法
		String book_logo_big_name = FileUpload.fileUpload(book_logo_big, request);
		String book_logo_small_name = FileUpload.fileUpload(book_logo_small, request);
		List<String> filelist = new ArrayList<String>();
		if (pic_name1!=null) {
			for (int i = 0; i < pic_name1.length; i++) {
				filelist.add(FileUpload.fileUpload(pic_name1[i], request));
			}
		}
		book.setBookLogoBig(book_logo_big_name);
		book.setBookLogoSmall(book_logo_small_name);
		//然后将这些信息一起插入到DB
		bookbiz.insert(book);
		return "redirect:/books/query";
		
	}
	
	
	
	//查询回收站
	@RequestMapping("/selectrecycle")
	public ModelAndView selectrecycle() throws Exception{
		
		ModelAndView model=new ModelAndView();
		
		List<TbBook> bookList=bookbiz.selectrecycle();
		model.addObject("bookList", bookList);
		model.setViewName("deletebook.jsp");
		return model;
	}
	
	//从图书管理层移入到回收站
	@RequestMapping("/insertrecycle/{book_id}")
	public @ResponseBody int insertrecycle(@PathVariable("book_id") int book_id) throws Exception{
		//根据书籍ID查询书籍全部信息
		TbBook bookInfo=bookbiz.selectbook(book_id);
		
		//调用biz插入到回收站   将书籍“isGarbage”信息修改
		int num=bookbiz.insertrecycle(book_id, bookInfo.getBookName(), bookInfo.getBookPrice(), bookInfo.getTypeId());
		bookbiz.updateBookIsGarbage(book_id);
		
		//然后删除目前图书管理页面的数据
		bookbiz.deleteBookmanager(book_id);

		return num;
		
	}
	
	//从回收站彻底删除该图书
	@RequestMapping("/deleterecycle/{book_id}")
	public @ResponseBody int deleterecycle(@PathVariable("book_id") int book_id) throws Exception{
		//调用biz
		int num = bookbiz.deleterecycle(book_id);
		return num;
		
	}
	
	
	//从回收站还原到查询页
	@RequestMapping("/backToQuery/{book_id}")
	public String backToQuery(@PathVariable("book_id") int book_id) throws Exception{
		//根据书籍ID查出全部书籍信息
		TbBook bookInfo = bookbiz.selectbook(book_id);
		
		System.out.println(bookInfo);
		
		
		TbBook book=new TbBook();
		book.setBookId(bookInfo.getBookId());
		book.setBookName(bookInfo.getBookName());
		book.setBookLogoSmall(bookInfo.getBookLogoSmall());
		book.setBookLogoBig(bookInfo.getBookLogoBig());
		book.setBookPrice(bookInfo.getBookPrice());
		book.setBookPriceOld(bookInfo.getBookPriceOld());
		book.setBookAuthor(bookInfo.getBookAuthor());
		book.setBookPress(bookInfo.getBookPress());
		book.setTypeId(bookInfo.getTypeId());
		
		//调用插入方法  
		bookbiz.insert(book);
		//还原的同时删除回收站的信息
		bookbiz.deleterecycle(book_id);
		
		return "redirect:/books/selectrecycle";
		
	}
	
	//查询图书页修改图书状态(两个参数 一个为书籍ID的数组  另一个为修改状态 )
	@RequestMapping("/updateBookInfo/{bookId}")
	public String updateBookInfo(@PathVariable("bookId") List<Integer> bookIdList,
								HttpServletRequest request) throws Exception{
		System.out.println("進入該方法");
		Map<String, Object> map = ParameterUtil.fillMapFromRequest(request);
		System.out.println(map);
		System.out.println("bookIdList is "+bookIdList);
		for (Integer integer : bookIdList) {
			System.out.println(integer);
		}
		
		
		return null;
		
	}
	
		
	
	@RequestMapping("/trash")
	public @ResponseBody  String trash(HttpServletRequest request) throws Exception{
		return update(request);
	}
	private String update(HttpServletRequest request){
		Map<String, Object> map = ParameterUtil.fillMapFromRequest(request);
		JSONObject jsonobj = new JSONObject();
		try {
			int result = bookbiz.update(map);
			jsonobj.put("status", 200);//正常
			jsonobj.put("info", result);
		} catch (Exception e) {
			jsonobj.put("status", 500);//服务器异常
			jsonobj.put("info", "服务器异常！");
		}
		return jsonobj.toString();
	}
}
