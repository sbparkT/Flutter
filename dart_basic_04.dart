 void main() {
    //nullable : null이 될 수 있다
    // non- nullable : null이 될 수 없다
    // null : 아무런 값도 있지 않다 
    
    String name="짱구";
    print(name);
    //name=null; //error 기본적으로 null값 할당 불가능 
    
    //어떤 type이든 null 할당가능하게 하는 방법 -> ? 붙이기 
    String? name2="철수";
    name2=null;
    print(name2);
    
    //null값이 할당된 변수에 null값이 못 들어가게 하기 -> ! 붙이기
    //print(name2!); 이 값은 null이 아니다라는 것을 의미 
    
  }
