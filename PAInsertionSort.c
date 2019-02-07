#include <stdio.h>

int *createArray() {               // Array of pointers creation method

	int holder, i, j;
	static int toSort[5];

	for(i = 0; i < 5; ++i){

		printf("Number to insert: ");   // Allow users to insert #s
		scanf("%d", &toSort[i]);
	}

        printf("\n");

	for (i = 0; i < 5; ++i){

		printf("Your array contains %d\n", toSort[i]);  // Prints array
}
	printf("\n");
	return toSort;

}


int main(){

	int *p;
	int i,j, temp;

	p = createArray();

	printf("The values we're getting back: %p", p);  

	for (i = 0; i < 5; ++i){

		printf("*p + %d): %d\n", i, *(p + i));   // Pointer arithmetic
	}

	printf("\n");


        for(i = 1; i <= sizeof(p) - 1; ++i) {           // Insertion sort 

        temp = *(p + i);

        j = i - 1;
 
        while((temp < *(p + j)) && (j >= 0)) {

            p[j + 1] = p[j];		   
            j = j - 1;
        }
 
        p[j + 1] = temp;   

    }

    printf("\nSorted list:\n");

    for(i = 0; i < sizeof(p); i++){          // Print

        printf("%d\n", *(p + i));

    }
 
    return 0;
}
