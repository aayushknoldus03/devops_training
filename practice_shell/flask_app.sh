#!/bin/bash

function clone_repo {
	echo "cloning the repo"
	git clone https://github.com/aayushknoldus03/practicecape.git
}
install_Requirements(){
        echo "installing requirements"
        sudo apt update -y
        sudo pip install Flask Flask-SQLAlchemy -y 
	if ! grep -q 'export PATH=$PATH:/home/nashtech/.local/bin' ~/.bashrc; then
  	echo 'export PATH=$PATH:/home/nashtech/.local/bin' >> ~/.bashrc
	fi    
}     
deploy(){
	echo "deploying the app"
	docker compose -f docker-compose.yaml up -d 	
}
kill() {
    echo "Checking if container 'flask-count' is running..."

    # Check if the 'flask-count' container is running
    container_status=$(docker ps --filter "name=flask_cont" --filter "status=running" -q)

    if [ -n "$container_status" ]; then
        echo "Container 'flask-count' is running. Stopping it..."
        
        # Stop the container using docker-compose
        cd practicecape
        docker compose -f docker-compose.yaml down
        
        # Verify if the container is stopped
        container_status_after_stop=$(docker ps --filter "name=flask_cont" --filter "status=running" -q)
        
        if [ ! -n "$container_status_after_stop" ]; then
            echo "Container 'flask-count' is stopped."
        else
            echo "Failed to stop container 'flask-count'."
        fi
    else
        echo "Container 'flask-count' is already stopped."
    fi
}

if [ $# -eq 1 ]; then
    kill
    exit 1
fi


if ! clone_repo; then
	echo "repo already exists"
	cd practicecape
fi
if ! install_Requirements; then
	echo "installaing failed"
fi
deploy

echo " if you want to kill the container just pass kill"
