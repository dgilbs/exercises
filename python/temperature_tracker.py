
'''
Write a class TempTracker with these methods:

insert()—records a new temperature
get_max()—returns the highest temp we've seen so far
get_min()—returns the lowest temp we've seen so far
get_mean()—returns the mean ↴ of all temps we've seen so far
get_mode()—returns a mode ↴ of all temps we've seen so far
Optimize for space and time. Favor speeding up the getter functions (get_max(), get_min(), get_mean(), and get_mode()) over speeding up the insert() function.

get_mean() should return a float, but the rest of the getter functions can return integers. Temperatures will all be inserted as integers. We'll record our temperatures in Fahrenheit, so we can assume they'll all be in the range 0..1100..110.

If there is more than one mode, return any of the modes.
'''


class TempTracker:

    def __init__(self):

        # for mode
        self.occurrences = [0] * (111) # list of 0s at indices 0..110
        self.max_occurrences = 0
        self.mode = None

        # for mean
        self.total_numbers = 0
        self.total_sum = 0.0 # mean should be float
        self.mean = None

        # for min and max
        self.min_temp = None
        self.max_temp = None

    def insert(self, temperature):

        # for mode
        self.occurrences[temperature] += 1
        if self.occurrences[temperature] > self.max_occurrences:
            self.mode = temperature
            self.max_occurrences = self.occurrences[temperature]

        # for mean
        self.total_numbers += 1
        self.total_sum += temperature
        self.mean = self.total_sum / self.total_numbers

        # for min and max
        if (self.max_temp is None) or (temperature > self.max_temp):
            self.max_temp = temperature
        if (self.min_temp is None) or (temperature < self.min_temp):
            self.min_temp = temperature

    def get_max(self):
        return self.max_temp

    def get_min(self):
        return self.min_temp

    def get_mean(self):
        return self.mean

    def get_mode(self):
        return self.mode