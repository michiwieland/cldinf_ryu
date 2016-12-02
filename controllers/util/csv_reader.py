import csv


class CSVReader:

    policies = dict()

    def read(filename='policies/policy.cvs', delimiter=';'):
        with open(filename, 'rb') as csvfile:
            reader = csv.reader(csvfile, delimiter)
            for row in reader:
                    source = row[0]
                    destinations = row[1: len(row)]
                    policies[source] = destinations
                    return policies
