def stocks(array):
    current_min = array[0]
    current_profit = 0

    for count in array:
        current_min = min(current_min, count)

        pot_profit = count-current_min

        current_profit = max (current_profit, pot_profit)

    return current_profit


times = [10, 7, 5, 8, 11, 9]

print stocks(times)