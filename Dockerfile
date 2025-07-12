# 
# Use the official TensorFlow CPU image as the base
FROM tensorflow/tensorflow:2.11.1 

#RUN apt-get update && apt-get install -y python3 python3-pip
#RUN pip3 install tensorflow==2.4.0

# Set the working directory inside the container
WORKDIR /app

# Copy your Python script (e.g., your_script.py) into the container
# This is optional; you can also mount a volume when running the container
COPY . .

# Install any additional Python packages required by your script
# For example, if your script uses pandas:
# RUN pip install pandas
RUN pip install -r requirements.txt

# Command to run when the container starts
# This will execute your Python script
#CMD ["python", "your_script.py"]

# to build container and run it, use following:
#  docker build -t tbcnn .
#  docker run --rm --name tb -it dabg/tbcnn
# if you left the above container without exiting it, you might get back by:
#  docker exec -it tb
# Once you get into docker container with TF2.11.1 installed, 
# you can start running scripts at 
# https://github.com/bdqnghi/tbcnn.tensorflow?tab=readme-ov-file#data-preparation
