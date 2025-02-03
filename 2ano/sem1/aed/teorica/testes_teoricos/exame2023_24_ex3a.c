unsigned int CountNonLeafNOdes(pointer root){

    if(root == NULL) return 0;
    if(root->left == NULL && root->right == NULL) return 0;
    
    int esquerda = CountNonLeafNOdes(root->left);
    int direita = CountNonLeafNOdes(root->right);

    return esquerda + direita + 1;
}


unsigned int CountValuesInRange(pointer root, int a, int b) {
    if (root == NULL) return 0;

    // If current node's value is in range, count it and search both (left and right) subtrees
    if (root->value >= a && root->value <= b) {
        return 1 + CountValuesInRange(root->left, a, b) + CountValuesInRange(root->right, a, b);
    }
    
    // If current value is less than lower bound, search right subtree
    if (root->value < a) {
        return CountValuesInRange(root->right, a, b);
    }
    
    // If current value is greater than upper bound, search left subtree
    return CountValuesInRange(root->left, a, b);
}  