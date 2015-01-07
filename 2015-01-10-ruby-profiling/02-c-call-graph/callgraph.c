#include <stdio.h>

void long_running_function() {
    unsigned int count = 1000000;
    while(--count);
}

void short_running_function() {
    unsigned int count = 1000;
    while(--count);
}


int main()
{
    for (int iter = 0; 50 != iter; ++iter) {
        printf("iter=%d\n", iter);
        long_running_function();
        short_running_function();
    }

    return 0;
}
