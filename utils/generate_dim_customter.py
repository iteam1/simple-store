import csv
from faker import Faker
import random

# Create Faker instance
fake = Faker()

# Define the number of rows to generate
num_rows = 2000

# Open CSV file for writing
csv_filename = 'customer.csv'
with open(csv_filename, 'w', newline='', encoding='utf-8') as csvfile:
    fieldnames = ['customer_id', 'first_name', 'last_name', 'gender', 'birthdate', 'address', 'email', 'phone']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
    
    # Write header row
    writer.writeheader()
    
    # Generate and write rows
    for customer_id in range(1, num_rows + 1):
        gender = random.choice(['M', 'F'])
        birthdate = fake.date_of_birth(minimum_age=18, maximum_age=90).strftime('%Y-%m-%d')
        address = fake.address() if random.random() > 0.2 else None  # 80% chance of having an address
        email = fake.email() if random.random() > 0.2 else None  # 80% chance of having an email
        
        # Generate phone number with maximum length of 15
        phone = fake.phone_number()[:15] if random.random() > 0.2 else None  # 80% chance of having a phone number
        
        writer.writerow({
            'customer_id': customer_id,
            'first_name': fake.first_name(),
            'last_name': fake.last_name(),
            'gender': gender,
            'birthdate': birthdate,
            'address': address,
            'email': email,
            'phone': phone
        })

print(f"Generated {num_rows} rows of data into {csv_filename}.")