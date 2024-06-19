import faker
import random
import pandas as pd

# Initialize Faker
fake = faker.Faker()

# Configuration for data generation
num_rows = 5000
start_date = pd.Timestamp('2023-01-01')
end_date = pd.Timestamp('2024-06-30')

# Function to generate the data
def generate_fact_sales_data(num_rows):
    data = []
    for sale_id in range(1, num_rows + 1):
        employee_id = random.randint(6, 20)
        location_id = random.randint(1, 5)
        customer_id = 0 if random.random() < 0.6 else random.randint(1, 2000)
        date_sale = fake.date_between(start_date=start_date, end_date=end_date)
        
        data.append({
            'sale_id': sale_id,
            'employee_id': employee_id,
            'location_id': location_id,
            'customer_id': customer_id,
            'date_sale': date_sale
        })
    
    return data

# Generate the data
fact_sales_data = generate_fact_sales_data(num_rows)

# Convert to DataFrame for better visualization (optional)
fact_sales_df = pd.DataFrame(fact_sales_data)

# Display the first few rows of the generated data
print(fact_sales_df.head())

# Save to a CSV file (optional)
fact_sales_df.to_csv('fact_sales_data.csv', index=False)