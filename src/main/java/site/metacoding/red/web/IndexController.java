package site.metacoding.red.web;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class IndexController {

	@CrossOrigin
	@GetMapping("/username")
	public String user1() {
		try {
			Thread.sleep(5000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "ssar";
	}
	
	@CrossOrigin
	@GetMapping("/password")
	public String user2() {
		return "1234";
	}
}
