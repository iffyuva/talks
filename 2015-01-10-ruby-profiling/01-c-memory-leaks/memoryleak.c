#include <stdlib.h>


// introduce malloc here

int* alloc_space_for_10_integers() {
    return (int*) malloc( 10 * sizeof(int) );
}


int main()
{
    int* array = alloc_space_for_10_integers();

    return 0;
}
