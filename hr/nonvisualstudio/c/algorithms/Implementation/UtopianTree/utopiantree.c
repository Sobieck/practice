

long utopian_tree(int cycles){
  long tree_size = 1;
  int i = 0;

  while(i < cycles){
    if(i % 2 == 0){
      tree_size += tree_size;
    }else{
      tree_size += 1;
    }
    i++;
  }

  return tree_size;
}

//int main(){
//  int number_of_tests;
//  scanf("%d", &number_of_tests);
//  int i = 0;
//  for (i; i < number_of_tests; i++) {
//    int cycles;
//    scanf("%d", &cycles);
//    long size = utopian_tree(cycles);
//    printf("%ld\n", size);
//  }
//}
