enum Status{ //자신만의 자료형을 만든다고 생각하기 , 대문자로 시작
  approved, //승인
  pending, //대기
  rejected, //거절
}

void main(){
  Status status=Status.approved;
  if(status==Status.approved){
    print("승인");
  }else if(status==Status.pending){
    print("대기");
  }else{
    print("거절");
  }
  
  //그냥 string으로하면 안되나??
  String st="승인";
  /*
   * 일반 문자열로 저장할 경우 :오타발생위험
   * enum으로다른 개발자들이 한 번에 이해 가능성 높아짐
   * 고정된 상태들을 enum을 통해 정의할 수 있음
   * /
  
}
