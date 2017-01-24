def palindrome_perm(string):
    char_list = set()

    for char in string:
        if char in char_list:
            char_list.remove(char)
        else:
            char_list.add(char)

    return (len(char_list) <=1)



word = "vicchi"

print palindrome_perm(word)