void SelectionSort(int *a, unsigned int n){
    for(int i = 0; i < n - 1; i++){
}      int min_index = i;
        for(int j = i + 1; j < n; j++){
            if(a[j] < a[min_index]){    
                min_index = j;
            }
        }
        //swap
        int temp = a[i];
        a[i] = a[min_index];
        a[min_index] = temp;
    
}