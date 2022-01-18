package edu.kosmo.ex.controller;

import java.sql.SQLException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.kosmo.ex.service.TxTestService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
public class TxTestController {
	
	private TxTestService service;
	
	@GetMapping("/tx/{num}")
	public void transion(@PathVariable("num") int num) throws SQLException{
		
		if(num == 1) {
			log.info("테스트 1번");
			service.txTest1();
		}else if(num == 2) {
			log.info("테스트 2번");
			service.txTest2();
		}else if(num == 3) {
			log.info("테스트 3번");
			service.txTest3();
		}else if(num == 4) {
			log.info("테스트 4번");
			service.txTest4();
		}else if(num == 5) {
			log.info("테스트 5번");
			service.txTest5();
		}
		
	}
	
	
}
