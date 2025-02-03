header_pointer Merge(header_pointer seq_1, header_pointer seq_2) {
    if (seq_2 == NULL) return seq_1;
    if (seq_1 == NULL) return seq_2;

    pointer current2 = seq_2;
    while (current2 != NULL) {
        int insertion_value = current2->value;
        pointer current1 = seq_1;
        pointer prev1 = NULL;

        // Find insertion point
        while (current1 != NULL && current1->value <= insertion_value) {
            prev1 = current1;
            current1 = current1->next;
        }

        // Create and insert new node
        pointer new_node = malloc(sizeof(node));
        new_node->value = insertion_value;
        new_node->next = current1;

        if (prev1 == NULL) {
            seq_1 = new_node; // Insert at the beginning
        } else {
            prev1->next = new_node; // Insert in the middle or end
        }

        current2 = current2->next;
    }

    return seq_1;
}