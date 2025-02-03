unisgned int* get_sink_vertices(Digraph* g){
    unsigned int n = g->n;
    unsigned int* result = (unsigned int*)malloc((n + 1) * sizeof(unsigned int));
    unsigned int count = 0;
    int index_count = 0;
    unsigned int temp = 0;
    unsigned int temp2 = 0;
    Matrix m = g -> m;

    for(unsigned int i = 0; i < n; i++){
        temp = 0;
        temp2 = 0;
        for(unsigned int j = 0; j < n; j++){
            temp += get_matrix_elem(m,i,j);
            temp2 += get_matrix_elem(m,j,i);
        }
        if(temp == 0 && temp2 != 0){
            result[++index_count] = i;
            count++;
        }

    }
        result[0] = count;
        return result;
}