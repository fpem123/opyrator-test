FROM python3

RUN apt-get update && \
    apt-get install -y && \
    apt-get install -y apt-utils wget

RUN pip install --upgrade pip
RUN pip install transformers \
    opyrator

RUN mkdir -p /app
WORKDIR /app
COPY . .

EXPOSE 80

CMD ["opyrator", "launch-api", "my_opy:Generate_crime_punish", "--port", "80"]