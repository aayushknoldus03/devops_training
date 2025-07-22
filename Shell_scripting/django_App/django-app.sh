#!/bin/bash

<< comment
Deploy Django app and handle code errors
comment

code_clone(){
	echo "Cloning the DJango app"
	git clone https://github.com/LondheShubham153/django-notes-app.git
	cd django-notes-app
}
app_requirements(){
	echo "installing dependencied"
	sudo apt update 
	sudo apt install docker nginx -y
}
required_restart(){
	sudo systemctl enable docker
	sudo systemctl enable nginx
}
deploy(){
	docker build -t notes-app .
	docker compose up -d
}

echo "*****Deployment started*****"
if ! code_clone; then
	echo "the code already exists"
	cd django-notes-app
fi
app_requirements
required_restart
deploy
echo "*****Deployment Done*****"
