package product;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class ProductDTO {
	private int pdCode;  // 상품코드
	private String pdName; // 상품명
	private String pdDocu; // 상품설명
	
	private int pdImgNum; // 순번
	private String originalimgname; // 원래이미지명
	private String imgsystemname; // 파일저장이미지명
	private long imglength;	// 이미지파일크기
}
