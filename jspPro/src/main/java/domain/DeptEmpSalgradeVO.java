package domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class DeptEmpSalgradeVO {
	
	private int deptno;
	
	private int empno;
	private String dname;
	private String ename;
	private Date hiredate; // java.util.date
	private Double pay;
	private int grade;
	
	@Override
	public String toString() {
		return String.format("%d\t%s\t%d\t%s\t%.2f\n"
				, deptno
				, dname
				, empno
				, ename
				, pay );
	}

}
