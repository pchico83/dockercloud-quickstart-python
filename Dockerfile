# Using official python runtime base image
FROM pchico83/mysql

# Set the application directory
WORKDIR /app

# Make port 80 available for links and/or publish
EXPOSE 80 

# Environment Variables
ENV NAME World

# Install our requirements.txt
ADD requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# Copy our code from the current folder to /app inside the container
ADD . /app

# Define our command to be run when launching the container
CMD ["python", "app.py"]
