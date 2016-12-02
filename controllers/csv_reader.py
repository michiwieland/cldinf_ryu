import csv
import os


class CSVReader:

    def __init__(self, filename='policies/policy.csv', delimiter=';'):
        self.policies = dict()
        self.delimiter = delimiter
        self.filename = os.path.join(os.path.dirname(__file__), filename)

    def read(self):
        with open(self.filename, 'rb') as csvfile:
            reader = csv.reader(csvfile, delimiter=self.delimiter)
            for row in reader:
                # use source host as key
                source = row[0]
                # use remaining hosts as valid destination values
                destinations = row[1: len(row)]
                self.policies[source] = destinations

        return self.policies
