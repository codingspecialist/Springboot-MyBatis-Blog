package site.metacoding.red.domain.boards;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Boards {
	private Integer id;
	private String title;
	private String content;
	private Integer usersId;
	private Timestamp createdAt; // At 시분초 다 표현할때, Dt 년원일
}
