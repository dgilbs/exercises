def longest_palindrome(string):
    final_string = ""
    for index, letter in enumerate(string):
        counter = len(string)
        while counter > index:
            #print counter, index
            new_string = string[index:counter]
            test_string = ""
            counter1 = len(new_string)-1
            while counter1 >= 0:
                test_string += new_string[counter1]
                counter1 -= 1

            if new_string == test_string and len(new_string) >1 and len(new_string) > len(final_string):
                final_string = new_string
            counter -= 1
    if final_string != "":
        return len(final_string), final_string
    else:
        return "no palindromes found"



string = "abbakajsdlkasdas"

print longest_palindrome(string)