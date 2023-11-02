FROM ubuntu:latest

RUN apt-get update -y && \
    apt-get install -y python3 python3-pip && \
    pip3 install pandas numpy seaborn matplotlib scikit-learn scipy

RUN mkdir /home/doc-bd-a1
WORKDIR /home/doc-bd-a1

COPY train_titanic.csv /home/doc-bd-a1/train_titanic.csv

CMD ["/bin/bash"]

