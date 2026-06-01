void main(){
  Idol aespa=Idol(name:"에스파",memcnt:4);
  aespa.sayname();
  aespa.saymember();
}


//상속 inheritance
//상속을 받으면 부모 클래스의 모든 속성을 자식 클래스가 부여받아 

/*Dart에서 클래스 이름은 첫 글자를 대문자로 시작하는 파스칼 케이스(PascalCase) 규칙을 따릅니다.클래스 이름 작명 규칙파스칼 케이스(PascalCase): 단어의 첫 글자를 모두 대문자로 작성합니다 (예: UserAccount, HttpConnection)*/
class Idol{
  
  String name; //아이돌이름
  int memcnt; //멤버수 
  
  Idol({
    required this.name,
    required this.memcnt,
  });
  
  void sayname(){
    print("저희는 ${this.name}");
  }
  
  void saymember(){
    print("${this.name}은 ${this.memcnt}명으로 구성");
  }
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void main(){
  Idol aespa=Idol(name:"에스파",memcnt:4);
  aespa.sayname();
  aespa.saymember();
  //aespa.saymale(); // 자식내에서 만들어진 것은 부모가 사용불가 !
  
  print("-----boy group----");
  Boygroup bts=Boygroup('bts',7);
  bts.sayname();
  bts.saymember();
  bts.saymale();
  
  print("-----girl group----");
  // 직접 완성 
  
  print("-----type comparison 1 -----");
  print(aespa is Idol);
  print(aespa is Boygroup);
  //걸그룹 비교도 완성
  
  print("-----type comparison 2-----");
  print(bts is Idol);
  print(bts is Boygroup);
  //걸그룹 비교도 완성
  
  print("-----type comparison 3-----");
  print(bts is Idol);
  print(bts is Boygroup);
  //걸그룹 비교도 완성
}


//상속 inheritance
//상속을 받으면 부모 클래스의 모든 속성을 자식 클래스가 부여받아 

/*Dart에서 클래스 이름은 첫 글자를 대문자로 시작하는 파스칼 케이스(PascalCase) 규칙을 따릅니다.클래스 이름 작명 규칙파스칼 케이스(PascalCase): 단어의 첫 글자를 모두 대문자로 작성합니다 (예: UserAccount, HttpConnection)*/
class Idol{
  
  String name; //아이돌이름
  int memcnt; //멤버수 
  
  Idol({
    required this.name,
    required this.memcnt,
  });
  
  void sayname(){
    print("저희는 ${this.name}");
  }
  
  void saymember(){
    print("${this.name}은 ${this.memcnt}명으로 구성");
  }
}

//자식클래스 생성 : 자식클래스명 extends 부모클래스명
class Boygroup extends Idol{
  //생성자까지 모두 동일하게 상속받기
    Boygroup(
      String n,
      int mem
    ) : super(
      name:n,
      memcnt:mem
    );
  
  //무조건 부모클래스에서 자식클래스로 넘겨줘 
 
  void saymale(){
    print("저는 남자 아이돌이에요");
  }
  
  
}


//걸그룹 만들기 
