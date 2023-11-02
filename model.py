import pandas as pd
from sklearn.cluster import KMeans
import subprocess
import sys

# Check if the user provided the dataset file path as an argument
if len(sys.argv) != 2:
    print("Usage: python model.py <file_path>")
    sys.exit(1)

# Get the file path from the command-line argument
file_path = sys.argv[1]

try:
    # Load the dataset
    df = pd.read_csv(file_path)
    
    X= df.drop('Survived', axis=1)
    y= df['Survived'] 
    kmeans = KMeans(n_clusters=3, n_init=10, random_state=42)
    kmeans.fit(X)
    
    cluster_labels = kmeans.labels_
    # Count the number of records in each cluster
    cluster_counts = pd.Series(cluster_labels).value_counts().sort_index()
    
    # Save the cluster counts to a text file
    cluster_counts.to_csv('k.txt', header=False, index=False)

except FileNotFoundError:
    print(f"File not found: {file_path}")

except Exception as e:
    print(f"An error occurred: {e}")
