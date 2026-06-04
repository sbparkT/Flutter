void main(){
  Boygroup bts=Boygroup("bts");
  Girlgroup aespa=Girlgroup("에스파");
  
  bts.sayname();
  aespa.sayname();
 // Idolinterface new=Idolinterface('뉴진스'); //error 인스턴스 생성 불가 
  
  print(bts is Idolinterface);
  print(bts is Boygroup);
  print(bts is Girlgroup);
  
  print(aespa is Idolinterface);
  print(aespa is Boygroup);
  print(aespa is Girlgroup);
  
  
}

//interface란 서로 다른 두 대상을 연결하는 '표준 규격'이자 '약속(계약)
//<dart>클래스가 반드시 구현해야 하는 메서드와 프로퍼티의 "규격(껍데기)"을 정의하는 설계도
//별도 생성방법은 없고 class로 interface생성 & implements로 연결
abstract class Idolinterface{
  String name;
  Idolinterface(this.name);
  void sayname(){} 
  // 이 틀(규격을) 그대로 따라서 만들어야 해
}


/*class Boygroup implements Idolinterface{
  //error
}*/

class Boygroup implements Idolinterface{
  String name;
  Boygroup(this.name);
  void sayname(){}
}

class Girlgroup implements Idolinterface{
  String name;
  Girlgroup(this.name);
  void sayname(){}
}
