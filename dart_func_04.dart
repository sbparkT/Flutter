void main(){
  List<int> numbers=[1,3,5,7,9];
  /*
   * reduce는 컬렉션(List, Set 등) 내부의 모든 요소를 하나의 값으로 압축하는 함수
   * 매개변수로 (value, element) 구조의 함수
   * value (누적값): 지금까지 연산된 결과가 계속 누적되는 변수
   * element (현재값): 리스트를 순회하며 새로 만나는 현재 요소
   * reduce 함수가 처음 실행될 때, 리스트의 1번째 요소가 value(누적값)에 들어가고, 2번째 요소가 element(현재값)에 자동으로 들어감*/
  final result=numbers.reduce((prev,next){
    print("------------------------");
    print("previous:$prev");
    print("next:$next");
    print("total:${prev+next}");
    return prev+next;
  });
  print(result);
  
  List<String> keywords = ['플러터', '다트', '상태관리'];
  // 단어 사이에 하이픈(-)을 넣어서 하나의 문자열로 결합
  final String hashtag = keywords.reduce((value, element) => '$value - $element');
  
  print(hashtag); // 출력: "플러터 - 다트 - 상태관리"
}
