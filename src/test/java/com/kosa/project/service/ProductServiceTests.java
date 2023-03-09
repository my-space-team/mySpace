package com.kosa.project.service;

import javax.swing.text.AbstractDocument.BranchElement;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.project.domain.ProductVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductServiceTests {
	@Autowired
	private ProductService service;

	@Test
	public void getProduct() {
		ProductVO findProduct = service.getProduct(1);
		String brandName = findProduct.getBrand().getName();
		String categoryName = findProduct.getCategory().getName();

		log.info("------------------ LOG START -----------------------");
		log.info("Product : " + findProduct);
		log.info("brandName : " + brandName + "   categoryName : " + categoryName);
	}
}
