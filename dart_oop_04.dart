void main(){
  TimesTwo tt=TimesTwo(2);
  
  print(tt.calculate());
  TimesFour tf= TimesFour(2);
  print(tf.calculate()); //부모 메소드 사용가능
  }

//method (funcion) class 내부에 있는 함수
//override 덮어쓰다 

class TimesTwo{
  final int number;
  TimesTwo(
    this.number,
  );
  
  int calculate(){
    return number*2; //변수 number가 위에 선언한 number 1개만 존재하므로 굳이 this.number x
  }
}

class TimesFour extends TimesTwo{
  TimesFour(
    int number,
  ):super(number);
  
  @override
  //오버라이드를 하려면 부모 함수의 반환형, 함수 이름, 매개변수 타입 및 개수가 기본적으로 모두 일치해야 한다.
  //이를 함수의 '시그니처(Signature)'가 일치해야 한다
  //@override 생략해도 자동으로 인식가능하나 통상적으로 명시하기 위해 표시함
  
  int calculate(){
    //return super.number*4;
    //return this.number*4; //가능
    return number*4; //가능
    return super.calculate()*2; // super키워드 사용하여 부모 것 가져오기가능 
  } 
}
