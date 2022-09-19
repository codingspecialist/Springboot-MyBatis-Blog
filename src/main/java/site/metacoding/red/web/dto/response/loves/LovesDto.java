package site.metacoding.red.web.dto.response.loves;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class LovesDto {
	private boolean isLoved;
	private Integer count;
}
