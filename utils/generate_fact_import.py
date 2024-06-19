import csv
import random
from faker import Faker
from datetime import datetime, timedelta
from collections import defaultdict

# Initialize Faker
fake = Faker()

# Function to generate a random date within the specified range
def random_date(start, end):
    delta = end - start
    random_days = random.randint(0, delta.days)
    return start + timedelta(days=random_days)

# Generate dates ensuring each month has at least one date
start_date = datetime(2022, 12, 1)
end_date = datetime(2024, 5, 31)

# Create a dictionary to store at least one date for each month
date_dict = defaultdict(list)
current_date = start_date

while current_date <= end_date:
    date_dict[(current_date.year, current_date.month)].append(current_date)
    current_date += timedelta(days=1)

# Ensure at least one date per month
dates = [random.choice(dates) for dates in date_dict.values()]

# Fill the remaining dates to reach 200 entries
while len(dates) < 200:
    dates.append(random_date(start_date, end_date))

random.shuffle(dates)  # Shuffle dates to randomize

# Define employee and location ID ranges
employee_ids = list(range(24, 36))
location_ids = list(range(1, 6))

# Generate data
data = []
for i in range(200):
    import_id = i
    employee_id = random.choice(employee_ids)
    location_id = random.choice(location_ids)
    date_import = dates[i].strftime('%Y-%m-%d')
    data.append([import_id, employee_id, location_id, date_import])

# Write data to CSV
with open('fact_import_data.csv', mode='w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(['import_id', 'employee_id', 'location_id', 'date_import'])
    writer.writerows(data)

print("Data generation complete. File 'fact_import_data.csv' created.")