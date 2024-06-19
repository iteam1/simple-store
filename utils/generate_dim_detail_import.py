import csv
from faker import Faker
import random

# Initialize Faker
fake = Faker()

# Constants based on table requirements
NUM_ROWS = 2000  # Number of rows to generate
MIN_IMPORT_ID = 0
MAX_IMPORT_ID = 199
MIN_PRODUCT_ID = 1
MAX_PRODUCT_ID = 60
MIN_QUANTITY = 5
MAX_QUANTITY = 50
MIN_REPEAT_PRODUCT = 60
MAX_REPEAT_PRODUCT = 200

# Generate data
data = []
for _ in range(NUM_ROWS):
    import_id = fake.random_int(min=MIN_IMPORT_ID, max=MAX_IMPORT_ID)
    product_id = fake.random_int(min=MIN_PRODUCT_ID, max=MAX_PRODUCT_ID)
    quantity = fake.random_int(min=MIN_QUANTITY, max=MAX_QUANTITY)
    
    data.append({
        'detail_import_id': _,
        'import_id': import_id,
        'product_id': product_id,
        'quantity': quantity
    })

# Ensure each product_id appears at least 60 times
product_counts = {}
for entry in data:
    product_id = entry['product_id']
    if product_id not in product_counts:
        product_counts[product_id] = 0
    product_counts[product_id] += 1

for product_id, count in product_counts.items():
    while count < MIN_REPEAT_PRODUCT:
        # Find an entry with a different product_id to replace
        replacement_index = random.randint(0, len(data) - 1)
        if data[replacement_index]['product_id'] != product_id:
            data[replacement_index]['product_id'] = product_id
            count += 1

# Export data to CSV
csv_filename = 'dim_detail_import_data.csv'
with open(csv_filename, 'w', newline='') as csvfile:
    fieldnames = ['detail_import_id', 'import_id', 'product_id', 'quantity']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

    writer.writeheader()
    for row in data:
        writer.writerow(row)

print(f"Generated {NUM_ROWS} rows of data. Exported to {csv_filename}")
