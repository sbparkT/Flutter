  void main() {
    final String name= '짱구';
    print(name);
    //name='철수'; // final은 값 선언 후 변경 불가
    
    const String name2='짱구';
    print(name2);
    //name2="철수"; //const 또한 값 선언 후 변경 불가 
    
    //final , const 모두 type 생략 가능 
    final  name3= '짱구';
    const  name4= '짱구';
    
    print(name3);
    print(name4);
    
    DateTime now=DateTime.now();
    print(now); //run버튼을 누를때 시간이 아닌 17번 코드가 실행될 때 시간값 
    
    DateTime now2=DateTime.now();
    print(now2); 
    
    //build : pl를 실행시켜 이진수로 번역하는 것
    final DateTime now3=DateTime.now(); //final은 빌드타임 몰라도 됨
    print(now3);
    
    const DateTime now4=DateTime.now();//error const는 빌드타임을 알아야 해
    //build -> run
    //const 변수는 build 할 때 모든 값 셋팅 
    //now() 는 run할 때 값이 할당되는 기능
    //final 변수는 run 할 때 값 셋팅
  }
