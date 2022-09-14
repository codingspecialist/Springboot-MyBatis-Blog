package site.metacoding.red.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import site.metacoding.red.domain.boards.Boards;
import site.metacoding.red.domain.users.Users;
import site.metacoding.red.service.BoardsService;
import site.metacoding.red.web.dto.request.boards.UpdateDto;
import site.metacoding.red.web.dto.request.boards.WriteDto;
import site.metacoding.red.web.dto.response.boards.PagingDto;

@RequiredArgsConstructor
@RestController
public class BoardsApiController {

	private final HttpSession session;
	private final BoardsService boardsService;
	
	/***
	 * 
	 *     인증과 권한 체크는 지금 하지 마세요!!
	 */
	
	@PutMapping("/api/boards/{id}")
	public String update(@PathVariable Integer id, UpdateDto updateDto) {
		boardsService.게시글수정하기(id, updateDto);
		return "게시글수정완료";
	}

	@GetMapping("/api/boards/{id}/updateForm")
	public Boards updateForm(@PathVariable Integer id) {
		Boards boardsPS = boardsService.게시글상세보기(id);
		return boardsPS;
	}

	@DeleteMapping("/api/boards/{id}")
	public String deleteBoards(@PathVariable Integer id) {
		boardsService.게시글삭제하기(id);
		return "게시글삭제완료";
	}

	@PostMapping("/api/boards")
	public String writeBoards(WriteDto writeDto) {
		Users principal = (Users) session.getAttribute("principal");
		boardsService.게시글쓰기(writeDto, principal);
		return "게시글쓰기완료";
	}

	@GetMapping({ "/api", "/api/boards" })
	public PagingDto getBoardList(Integer page, String keyword) { // 0 -> 0, 1->10, 2->20
		PagingDto pagingDto = boardsService.게시글목록보기(page, keyword);
		return pagingDto;
	}

	@GetMapping("/api/boards/{id}")
	public Boards getBoardDetail(@PathVariable Integer id) {
		Boards boards = boardsService.게시글상세보기(id);
		return boards;
	}

}









