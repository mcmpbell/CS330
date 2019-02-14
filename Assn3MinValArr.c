#include <stdio.h>

int *createArray() {

int holder, i, j;
static int toSort[5];

for(i = 0; i < 5; ++i){
    printf("Number to insert: ");
    scanf("%d", &toSort[i]);
}

printf("\n");

for(i = 0; i < 5; ++i){
    printf("The array currently contains %d\n", toSort[i]);
}
    printf("\n");
    return toSort;
}

int main(){
	
    int smallest;
    int *p;
    int i, j, temp;

    p = createArray();

    for(i = 0; i < 5; ++i){
	printf("(*p + %d): %d, \n", i, *(p + i));
    }

    printf("\n");

    smallest = *(p + 0);

    for(i = 1; i < 5; ++i){

	if (*(p + i) < smallest) {
		smallest = *(p + i); 
	}
    }

    printf("Smallest number: %x\n", smallest);
	
    for(i = 0; i < 5; ++i){
	if (*(p + i) == smallest){
		printf("Index: %x\n", i);
  }

}
  return 0;
}

