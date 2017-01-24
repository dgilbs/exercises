def fib(number):
    list = [0, 1]
    if number < 2:
        return number

    counter = 2
    while counter <= number:
        list.append(list[-1] + list[-2])
        counter += 1

    return list[-1]


def fib_recursive(n):
    if n in [0, 1]:
        return n
    #print "computing fib_recursive(%i)" % n
    return fib_recursive(n - 1) + fib_recursive(n - 2)

def fib_bottom_up(n):

    # edge cases:
    if n < 0:
        raise Exception("Index was negative. No such thing as a negative index in a series.")

    elif n in [0, 1]:
        return n

    # we'll be building the fibonacci series from the bottom up
    # so we'll need to track the previous 2 numbers at each step
    prev_prev = 0   # 0th fibonacci
    prev = 1        # 1st fibonacci

    for _ in xrange(n - 1):
        # Iteration 1: current = 2nd fibonacci
		            # Iteration 2: current = 3rd fibonacci
		            # Iteration 3: current = 4th fibonacci
		            # To get nth fibonacci ... do n-1 iterations.
        current = prev + prev_prev
        prev_prev = prev
        prev = current

    return current


print fib(100)