void main(){
  //instance에귀속된다는 것
  Student jjang=Student("짱구");
  Student hong=Student("길동");
  jjang.printinfo();
  hong.printinfo(); //인스턴스에서 적용되는 것들
  
  //static에 귀속된다는 것
  Student.school="대현고등학교";
  Student.printschool(); //class자체에 바로 적용되는 것들
  
  jjang.printinfo();
  hong.printinfo(); //한번에 school값 적용
  
}

class Student{
  //static은 instance에 귀속되지 않고 class에 귀속된다
  static String? school;
  final String name;
  Student(
    this.name,
  );
  
  void printinfo(){
    print("제 이름은 $name 이고, $school에 재학중입니다");
  }
  static void printschool(){
    print("저는 $school에 다니고 있습니다.");
  }
  
  
}
