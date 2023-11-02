# Big Data Analysis Project

## Introduction

The project involves the analysis of a dataset using Python, Docker, and various data analysis and visualization tools.

## Project Overview

The project consists of the following components:

- Dockerized environment for data analysis
- Python scripts for data loading, cleaning, analysis, and visualization
- Final script for result extraction and container shutdown

## Usage

### Docker Setup

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/MalakShalaby/BigDataassi1.git
2. Build the Docker image from the provided Dockerfile:
   ```bash
    docker build -t assignment_1 .
4. Run the Docker container:
   ```bash
   docker run -it assignment_1

## Project Pipeline

1. Inside the container, navigate to the /home/doc-bd-a1/ directory.
2. Run the data loading script:
   
python3 load.py /path/to/your/dataset.csv

3.The pipeline will generate output files and figures.

4.To copy the results to your local machine and stop the container, execute the final script:

./final.sh

## Contributors
Malak Essam
Shahd Fekry
Nada Adel

## Files and Directories

| File/Directory       | Description                                    |
|----------------------|-----------------------------------------------|
| `load.py`            | Data loading script.                          |
| `dpre.py`            | Data preprocessing script.                   |
| `eda.py`             | Exploratory data analysis script.            |
| `vis.py`             | Data visualization script.                   |
| `model.py`           | K-means clustering script.                   |
| `final.sh`           | Bash script for result extraction and container shutdown. |
| `Dockerfile`         | Docker configuration file.                   |
| `Service-result`     | Contains output files.                  |
| `requirements.txt`   | Python dependencies.                          |
| `titanic.csv`        | Sample dataset used for analysis. |
| `README.md`          | This file.                                    |




