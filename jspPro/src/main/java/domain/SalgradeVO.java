package domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//[V]alue[O]bject
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SalgradeVO {		

	private int grade;
	private int losal;
	private int hisal;

	private int cnt; // 추가

	@Override
	public String toString() {
		return String.format("%d등급 (%d ~ %d) %d명 "
				, grade
				, losal
				, hisal
				, cnt );
	}



}
