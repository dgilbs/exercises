def reverse_words(sentence):
    counter = 0
    str = ""
    word_list = []
    while counter < len(sentence):
        if sentence[counter] != " " and counter != len(sentence) -1:
            str += sentence[counter]
        elif counter == len(sentence)-1:
            str += sentence[counter]
            word_list.append(str)
            str = ""
        else:
            word_list.append(str)
            str = ""
        counter +=1
    final_string = ""
    counter = len(word_list)-1
    while counter >= 0:
        if counter > 0:
            final_string += word_list[counter] + " "
        else:
            final_string += word_list[counter]
        counter -= 1

    return final_string


message = "I am here"
print reverse_words(message)