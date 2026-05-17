  void main() {
    String name="대현고";
    String name2="박수빈";
    print(name);
    print(name2);
    
    //var vs string
    var number=20; //var은 자동으로 할당하는 값의 자료형으로 인식
    var name3="대현고등학교";
    
    print(number.runtimeType);
    print(name3.runtimeType);//runtime때 자료형 인식
    
    Map<String, Map<int,List<double>>> testType={};//되도록 코드의 가독성과 변수의 역할을 정확히 명시 위해 각 type정확히 표현하는게 좋아
    //var testType={};이렇게 그때마다 상황에 맞춰야할때(유연한 상황일 필요할때)var 사용 추천
    
    print('${name} ${name2}');
    print('$name $name2'); //변수 1개만 사용할때 {} 생략가능
    print('${name.runtimeType} ${name2}'); //함수까지 사용하려면 {}으로 정확히 명시
    
    
  }
