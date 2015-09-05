
long max_profit(long * arrayOfPrices, long size){

  long i = size - 1;
  long currentLargestPriceInTheFuture = arrayOfPrices[i];
  long profit = 0;
  i--;


  for (i; i >= 0; i--) {
    long currentPrice = arrayOfPrices[i];

    if(currentPrice < currentLargestPriceInTheFuture){
      long profitOfTransation = currentLargestPriceInTheFuture - currentPrice;
      profit += profitOfTransation;
    }
    else{
      currentLargestPriceInTheFuture = currentPrice;
    }
  }

  return profit;
}


//int main(){
//  int testCases;
//  scanf("%d", &testCases);
//
//  int i = 0;
//
//  for (i; i < testCases; i++) {
//    int arraySize;
//    scanf("%d", &arraySize);
//
//    long arrayOfPrices[arraySize];
//    int j;
//    for (j = 0; j < arraySize; j++) {
//      scanf("%ld", &arrayOfPrices[j]);
//    }
//
//    long profit = max_profit(arrayOfPrices, arraySize);
//
//    printf("%ld\n", profit);
//  }
//}
