  void main() {
    //어떤 Type이든 뭐든 다 넣을 수 있는 dynamic(이건 var과 거의 비슷)
    dynamic name='짱구';
    print(name);
    dynamic number=1;
    print(number);
    var name2='철수';
    print(name2);
    print(name.runtimeType);
    print(name2.runtimeType);
    name=true; //dynamic은 type 변형 가능
    //name2=true; //error :var은 type 변형 불가 
    print(name);
  }
