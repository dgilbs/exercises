def reverse_string(str):
    start = 0
    finish = len(str)-1
    while finish > start:
        str[start], str[finish] = str[finish], str[start]
        start += 1
        finish -= 1

    print str


word = "hello"
reverse_string(word)
