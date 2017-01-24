def reverse(string):
    string_list = list(string)

    left_pointer = 0
    right_pointer = len(string_list) - 1

    while left_pointer < right_pointer:
        # swap characters
        string_list[left_pointer], string_list[right_pointer] = \
            string_list[right_pointer], string_list[left_pointer]

        # move towards middle
        left_pointer += 1
        right_pointer -= 1

    return ''.join(string_list)