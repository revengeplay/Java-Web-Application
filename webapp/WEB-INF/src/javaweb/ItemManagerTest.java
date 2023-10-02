package javaweb;

//import java.util.List;

public class ItemManagerTest {
	

	public static void main(String[] args) {
		ItemDetailViewModel vm = new ItemDetailViewModel("0001");
		Item item = vm.itemDetail();
		
		System.out.println(item.getProductNm() + " : " + item.getDescription() + " : " + item.getProductImg());

	}

}
