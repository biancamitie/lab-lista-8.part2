#include <stdio.h>

int main() {
    float array[10] = {1.1, 1.2, 3.7, 5.5, 5.1, 6.4, 7.7, 9.7, 4.4, 22.5};
    float *p = array;

    for (int i = 0; i < 10; i++) {
        printf("Endereco do elemento %d: %p\n", i, p);
        p++; 
    }

    return 0;
}

#include <stdio.h>

int main() {
    float matriz[3][3] = {
        {1.1, 1.2, 1.3},
        {2.1, 2.2, 2.3},
        {3.1, 3.2, 3.3}
    };
    float *p = &matriz[0][0]; 

    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            printf("Endereço eh [%d][%d]: %p\n", i, j, p);
            p++; 
        }
    }
    
    #include <stdio.h>

int main() {
    int array[5];
    int *ptr = array; 

    printf("5 inteiros:\n");

   
    for (int i = 0; i < 5; i++) {
        scanf("%d", ptr);
        ptr++; 
    }

    ptr = array; 

    printf("dobro\n");
    for (int i = 0; i < 5; i++) {
        printf("%d\n", *ptr * 2);
        ptr++; 
    }

    return 0;
}

#include <stdio.h>

int main() {
    int array[5];
    int i;

    printf("5 inteiros\n");


    for (i = 0; i < 5; i++) {
        scanf("%d", &array[i]);
    }

    printf("end das posicoes pares eh\n");

    
    for (i = 0; i < 5; i++) {
        if (array[i] % 2 == 0) {
            printf("%p\n", &array[i]);
        }
    }

    return 0;
}

#include <stdio.h>

int stringC(char *str1, char *str2) {
    char *p1, *p2, *p3;
    
    while (*str1) {
        p1 = str1;
        p2 = str2;
        
        while (*p1 && *p2 && *p1 == *p2) {
            p1++;
            p2++;
        }
        
        if (!*p2)
            return 1;
        
        str1++;
    }
    
    return 0;
}

int main() {
    char string1[100], string2[100];
    
    printf("Digite a primeira string: ");
    fgets(string1, sizeof(string1), stdin);
    
    printf("Digite a segunda string: ");
    fgets(string2, sizeof(string2), stdin);
    
    if (stringC(string1, string2))
        printf("segunda string eh da primeira.\n");
    else
        printf("segunda string nao eh da primeira.\n");
    
    return 0;
}

#include <stdio.h>

void preencherArray(int *array, int tamanho, int valor) {
    int *ptr = array;
    int *end = array + tamanho;

    while (ptr < end) {
        *ptr = valor;
        ptr++;
    }
}

int main() {
    int array[5];
    int valor;

    printf("Digite o valor");
    scanf("%d", &valor);

    preencherArray(array, sizeof(array) / sizeof(array[0]), valor);
    for (int i = 0; i < sizeof(array) / sizeof(array[0]); i++) {
        printf("%d ", array[i]);
    }

    return 0;
}

#include <stdio.h>

void e(int *array, int tamanho, int *min, int *max) {
    int i;
    *min = *max = array[0];  

    for (i = 1; i < tamanho; i++) {
        if (array[i] < *min) {
            *min = array[i]; 
        }
        if (array[i] > *max) {
            *max = array[i];  
        }
    }
}

int main() {
    int array[10];
    int i;

    printf("Digite 10 números inteiros:\n");
    for (i = 0; i < 10; i++) {
        scanf("%d", &array[i]);
    }

    int min, max;
    e(array, sizeof(array) / sizeof(int), &min, &max);

    printf("Menor %d\n", min);
    printf("Maior %d\n", max);

    return 0;
}

#include <stdio.h>

int main() {
    int A, *B, **C, ***D;

    printf("valor de A: ");
    scanf("%d", &A);

    B = &A;
    C = &B;
    D = &C;

    printf("Dobro: %d\n", *B * 2);
    printf("Triplo: %d\n", **C * 3);
    printf("Quadruplo: %d\n", ***D * 4);

    return 0;
}

