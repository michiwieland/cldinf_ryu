import csv


class CSVReader:

    def __init__(self, fn='/opt/ryu/ryu/app/my/policies/policy.csv', delimiter=';'):
        self.filename = fn
        self.delimiter = delimiter
        with open(self.filename, 'rb') as csvfile:
            reader = csv.reader(csvfile, self.delimiter)
            for row in reader:
                source = row[0]
                destinations = row[1: len(row)]
                self.policies[source] = destinations
