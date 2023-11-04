# Use a base image as Ubuntu
FROM ubuntu

# Update the package list and install necessary packages
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-dev \
    curl \
    && apt-get clean

# Install Docker
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh

# Install Python packages
RUN pip3 install pandas numpy seaborn matplotlib scikit-learn scipy

# Set the working directory inside the container
WORKDIR /home/doc-bd-a1

# Copy the dataset file to the container (replace 'your_dataset_filename' with the actual dataset file)
COPY titanic.csv .

# Open the bash shell upon container startup
CMD ["/bin/bash"]
