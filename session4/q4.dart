void main() {
  Map<String, int> fruitPrices = {
    'apple': 10,
    'banana': 5,
    'orange': 8,
    'mango': 12,
  };
    String fruitName = 'orange';
      int price = getPrice(fruitPrices, fruitName);
      if (price != -1){
      print('The price of $fruitName is ${price}');
      }  else {
          print('Fruit not found');
    }
  }
      int getPrice(Map<String, int> fruitPrices,String fruitName){
      if(fruitPrices.containsKey(fruitName)){
      return fruitPrices[fruitName]!;
      }else{
        return -1;
    }
  }