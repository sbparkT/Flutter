void main(){
  List<int> numbers=[1,4,5,7,9];
  
  //fold<반환 type>(초기값,(value,element))
  //value에 가장처음 초기값
  //element에 가장처음 첫번째 요소
  final sum=numbers.fold<int>(0,(prev,next){
    print("-------------");
    print("prev : $prev");
    print("next : $next");
    print("total : ${prev+next}");
    return prev+next;
    
  }) ;
  print(sum);
  
  List<String> words=['안녕하세요','저는','홍길동입니다.'];
  fianl sentence=words. fold<String>
}
