//ex1
void main(void){
    int val, n = 0, min = 0x7FFFFFFF, max = 0x80000000;

    print_string("Digite ate 20 inteiros (zero para terminar):");
    do {
        val = read_int();
        if (val != 0) {
            if (val > max)
                max = val;
            if (val < min)
                min = val;
        }
        n++;
    } while ((n < 20) && (val != 0));

    print_string("Maximo/minimo sao: ");
    print_int10(max);
    print_char(':');
    print_int10(min);
}