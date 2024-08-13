#!/bin/bash



<<task
Deploy Django app
and write code for handle errors
task

code_clone() {
	echo "Cloning the Django app..."
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements() {
	echo "Installing dependencies"
	sudo apt-get install -y docker.io nginx docker-compose-v2
}

required_restarts() {
	sudo chown $USER /var/run/docker.sock
	#sudo systemctl enable docker
	#sudo systemctl enable nginx
        #sudo systemctl restart docker 
}

deploy() {
	docker build -t notes-app .
	#docker run -d -p 8000:8000 notes-app:latest
        docker compose up -d
}


echo "*********************DEPLOYMENT STARTED******************"
if ! code_clone; then
	echo "the code directory already exist"
	cd django-notes-app
fi

if ! install_requirements; then
	echo "installation failed"
	exit 1
fi

if ! required_restarts; then
	echo "system fault identified"
	exit 1
fi 

if ! deploy; then
	echo "Deployment failed,mailing the admin"
	exit 1
fi

echo "*********************DEPLOYMENT END******************"
