package com.app.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.javassist.NotFoundException;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;

public class ProductUpdateController implements Action {

	@Override
	public Result excute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ProductDAO productDAO = new ProductDAO();
		
		Long id = Long.parseLong(req.getParameter("id"));
		
		req.setAttribute("product", productDAO.find(id).orElseThrow(RuntimeException::new));

//		포워드 어디로
		result.setPath("/product/update.jsp");
		
		return result;
	}

}
