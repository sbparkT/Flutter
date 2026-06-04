void main(){
  Lecture<String> lec1=Lecture('123','park');
  lec1.printtype();
  
  Lecture2<int,String> lec2=Lecture2(123,'kim');
  lec2.printtype();
  //////////모든 클래스는 object를 상속받는다->object oriented programming///////////
  
  Test test=Test();
  test.
}

//generic : type을 외부에서 전달받을 때
class Lecture<T>{
  final T id;
  final String name;
  Lecture(this.id,this.name);
  
  
  void printtype(){
    print(id.runtimeType);
  }
  
}

class Lecture2<T,X>{
  final T id;
  final X name;
  Lecture2(this.id,this.name);
  
  
  void printtype(){
    print(id.runtimeType);
    print(name.runtimeType);
  }
  
}

//////////////////////////////////////////////
class  Test extends Object{
  //extends Object 생략가능
}
