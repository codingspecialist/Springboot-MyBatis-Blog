package site.metacoding.red;

import org.junit.jupiter.api.Test;

import site.metacoding.red.util.MyUtils;

public class MyTest {
	
	@Test
	public void 한글_테스트() {
		int size = MyUtils.문자길이를바이트로리턴("한글A안녕23");
		System.out.println(size);
	}
	
	@Test
	public void 압축하기_테스트1() {
		String data = "class User { \n"
				+ "  private String name; \n"
				+ "  private String password; \n"
				+ "}";
		
		System.out.println(data);
		
		String data2 = "class User{prviate String name;private String password;}";
	}
	
	@Test
	public void 압축하기_테스트2() {
		String data = "AAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCCAAABBBBCCC";
		String dataReduce = "10*A3B4C3";
	}
}
