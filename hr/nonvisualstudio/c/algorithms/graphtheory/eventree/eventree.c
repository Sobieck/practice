#include <stdbool.h>

void create_matrix(int edges, int verticies, int pairs[edges][2], int matrix[verticies][verticies]){
  int i, j;

  for (i = 0; i < verticies; i++) {
    for (j = 0; j < verticies; j++) {
      matrix[i][j] = 0;
    }
  }

  for (i = 0; i < edges; i++) {
    int index1 = pairs[i][0] - 1;
    int index2 = pairs[i][1] - 1;

    matrix[index1][index2] = 1;
    matrix[index2][index1] = 1;
  }
}

void sum_matrix(int verticies, int sums[verticies], int matrix[verticies][verticies]){
  int i,j;

  for (i = 0; i < verticies; i++) {
    sums[i] = 0;
    for (j = 0; j < verticies; j++) {
      sums[i] += matrix[i][j];
    }
  }
}

bool cut_edge(int verticies, int sums[verticies], int matrix[verticies][verticies], int i){
  int j = 0;
  int smallest_index;
  bool found = false;
  //always cut top edge would work on examples

  while(found == false && j < verticies){
    if(matrix[i][j] == 1){
      found = true;
      smallest_index = j;
    }
    j++;
  }

  if(found){
    int edge_to_cut = smallest_index;

    matrix[i][edge_to_cut] = 0;
    printf("%d\n", edge_to_cut);
    matrix[edge_to_cut][i] = 0;
  }

  return found;
}

int calculate_cuts(int edges, int verticies, int pairs[edges][2]){

  int matrix[verticies][verticies];

  create_matrix(edges, verticies, pairs, matrix);

  int sums[verticies];

  sum_matrix(verticies, sums, matrix);

  int cuts = 0;

  int i;
  bool has_even_edges = true;
  bool cut_edges_last_round = true;

  while(has_even_edges && cut_edges_last_round){
    cut_edges_last_round = false;
    printf("has even edge");
    for (i = 0; i < verticies; i++) {
      if(sums[i] % 2 == 0){
        cuts++;

        if(cut_edge(verticies, sums, matrix, i)){
          cut_edges_last_round = true;
        }
        sum_matrix(verticies, sums, matrix);
      }
    }


    has_even_edges = false;

    for (i = 0; i < verticies; i++) {
      if(sums[i] % 2 == 0){
        has_even_edges = true;
      }
    }
  }

  return cuts;
}

//int main(){
//  int verticies, edges;
//  scanf("%d", &verticies);
//  scanf("%d", &edges);
//
//  int pairs[edges][2];
//
//  int i, j;
//  for (i = 0; i < edges; i++) {
//    for (j = 0; j < 2; j++) {
//      int currentNumber;
//      scanf("%d", &currentNumber);
//      pairs[i][j] = currentNumber;
//    }
//  }
//
//  int result = calculate_cuts(edges, verticies, pairs);
//
//  printf("%d", result);
//}
