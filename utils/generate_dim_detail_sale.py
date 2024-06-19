import faker
import random
import pandas as pd

# Initialize Faker
fake = faker.Faker()

# Configuration for data generation
num_rows = 12000

# Function to generate the data
def generate_dim_detail_sale_data(num_rows):
    data = []
    for detail_sale_id in range(1, num_rows + 1):
        sale_id = random.randint(1, 5000)
        product_id = random.randint(1, 60)
        quantity = random.randint(1, 10)
        
        data.append({
            'detail_sale_id': detail_sale_id,
            'sale_id': sale_id,
            'product_id': product_id,
            'quantity': quantity
        })
    
    return data

# Generate the data
dim_detail_sale_data = generate_dim_detail_sale_data(num_rows)

# Convert to DataFrame for better visualization (optional)
dim_detail_sale_df = pd.DataFrame(dim_detail_sale_data)

# Display the first few rows of the generated data
print(dim_detail_sale_df.head())

# Save to a CSV file (optional)
dim_detail_sale_df.to_csv('dim_detail_sale_data.csv', index=False)