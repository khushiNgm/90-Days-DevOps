#!/bin/bash

<< task
Deploy a todo app
and handle the code for errors
task

# Step1: Cloning the code
cloning() {
  echo "Cloning the project"
  if [ -d "ToDo" ]; then
    echo "The code directory already exists"
    cd ToDo || exit 1
  else
    git clone https://github.com/khushiNgm/ToDo.git || { echo "Git clone failed"; exit 1; }
    echo "Cloning successfully :)"
    cd ToDo || exit 1
  fi
}

# Step2: Install requirements
Install_Requirements() {
  echo "Installing dependencies"
  sudo apt-get update
  sudo apt-get install docker.io nginx -y docker-compose || { echo "Failed to install dependencies"; exit 1; }
  echo "Successfully installed dependencies :)"
}

# Step3: Required restart
Required_restart() {
  echo "Restart dependencies"
  sudo chown $USER /var/run/docker.sock
  # Add current user to docker group
  sudo usermod -aG docker $USER || { echo "Failed to add user to docker group"; exit 1; }

  # Stop Apache if running to free port 80
  if sudo systemctl is-active --quiet apache2; then
    echo "Stopping Apache to free port 80..."
    sudo systemctl stop apache2
    sudo systemctl disable apache2
  fi

  # Enable and restart services
  sudo systemctl enable docker
  sudo systemctl enable nginx
  sudo systemctl restart docker nginx || { echo "Failed to restart services"; exit 1; }

  echo "Successfully restarted dependencies :)"
  echo "Note: Docker permissions change requires logout/login or 'newgrp docker'"
  }

# Step4: Deploying the code
Deploy() {
  echo "Deploying the code"

  if [ ! -f Dockerfile ]; then
    echo "Dockerfile not found in $(pwd)"
    exit 1
  fi

  # Run docker commands with sudo to avoid permission denied
  sudo docker build -t todo-app . || { echo "Docker build failed"; exit 1; }
  sudo docker run -d -p 8080:80 todo-app:latest || { echo "Docker run failed"; exit 1; }

  echo "Deployment successful :)"
}

echo "******** Start deploying the code ***********"

# Execute steps
if ! cloning; then
  echo "The code directory already exists"
  cd ToDo || exit 1
fi

if ! Install_Requirements; then
  echo "******* Installing error ******"
  exit 1
fi

if ! Required_restart; then
  echo "****** FAILED TO RESTART *******"
  exit 1
fi

if ! Deploy; then
  echo "******** Sorry deployment failed ********"
  exit 1
fi



               
                                                                                 