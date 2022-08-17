mixin Division {

  num divide(num a, num b){
    if (b == 0){
      return 0;
    }
    
    return a / b;
  }
  
}