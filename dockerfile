# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]

#Build docker image: docker build -t my-flask-app .
#Run the container: docker run -p 5000:5000 my-flask-app
#Tag your image: docker tag my-flask-app your-dockerhub-username/my-flask-app
#sandesh3715 - my username
#Assure you are logged in to Docker Hub: docker login
#Push your image to Docker Hub: docker push your-dockerhub-username/my-flask-app:latest1
#Pull your image from Docker Hub: docker pull your-dockerhub-username/my-flask-app:latest1
#Run the Pulled image: docker run -p 5000:5000 your-dockerhub-username/my-flask-app:latest1
#To remove the image: docker rmi your-dockerhub-username/my-flask-app:latest1
#To remove the container: docker rm -f <container_id>