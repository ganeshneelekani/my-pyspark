# Use the official Apache Spark Docker image as the base image
FROM apache/spark:3.4.0

RUN apt-get update && apt-get install -y python3-pip
RUN pip3 install jupyter

# Expose the Jupyter Notebook port
EXPOSE 8888
# Set working directory to /app
WORKDIR /opt/application
COPY . /opt/application
RUN pip3 install -r requirements.txt
# Copy the current directory contents into the container at /app
# CMD [ "python3", "./my-pyspark/pyspark_app.py"]
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]