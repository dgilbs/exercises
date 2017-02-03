#I have a list where every number in the range 1...n1...n appears once except for one number which appears twice. Find which one

def which_appears_twice(list):
    already_counted = set()

    for num in list:
        if num in already_counted:
            return num
        else:
            already_counted.add(num)

    return "none"


list = [1,2,3,4,5,1,6,7,8]

print which_appears_twice(list)