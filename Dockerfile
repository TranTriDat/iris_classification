FROM ubuntu

WORKDIR /src

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-sklearn

COPY iris_classification.py ./iris_classification.py

CMD [ "python3", "iris_classification.py" ]