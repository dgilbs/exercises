words = [
    'ptolemaic',
    'retrograde',
    'supplant',
    'undulate',
    'xenoepist',
    'asymptote', # <-- rotates here!
    'babka',
    'banoffee',
    'engender',
    'karpatka',
    'othellolagkage',
]

def find_rotation_point(word_list):
    str = ""
    for index, word in enumerate(word_list):
        if index == len(word_list)-1:
            break

        next_word = word_list[index + 1]
        list = [word, word_list[index+1]]
        if sorted(list) != list:
            str = word_list[index+1]

    if str != "":
        return str
    else:
        return "no rotation point"

# binary search approach
def find_rotation_point_binary_search(words):
    first_word = words[0]

    floor_index = 0
    ceiling_index = len(words) - 1

    while floor_index < ceiling_index:

        # guess a point halfway between floor and ceiling
        guess_index = floor_index + ((ceiling_index - floor_index) / 2)

        # if guess comes after first word
        if words[guess_index] > first_word:
            # go right
            floor_index = guess_index
        else:
            # go left
            ceiling_index = guess_index

        # if floor and ceiling have converged
        if floor_index + 1 == ceiling_index:
            # between floor and ceiling is where we flipped to the beginning
            # so ceiling is alphabetically first
            return ceiling_index


print find_rotation_point(words)
