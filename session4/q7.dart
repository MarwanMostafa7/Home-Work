void main (){
  List <int> numbers= [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
  for( int number in numbers ){
    if(number %3 ==0 &&number %5 ==0){
    print(' FizzBuzz $number');
  }  else if(number %3 ==0){
      print(' Fizz $number');
    }else if(number %5 ==0){
print(' Buzz $number');
    }
    else{
      print(number);
    }
  }
    }
