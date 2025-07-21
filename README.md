# calculator
calculator_project
	
🧮 Simple Web Calculator Project using AWS + Docker			✅
📌 What I Did:

1) Created EC2 Instance ✅

2) Used terminal (CLI) to connect to the EC2 instance via SSH. ✅

	ssh -i your-key-file.pem -L 8000:localhost:80 username@<EC2-Public-IP> 
— Securely access a web app running on EC2’s port 80 via your local localhost:8000 without exposing any public ports.	

3) Installed Docker inside the EC2 instance.✅

	sudo apt update
	sudo apt install docker.io -y
	sudo systemctl enable docker
	sudo systemctl start docker

4) Added my EC2 user to the Docker group to use Docker without sudo. ✅

	 sudo usermod -aG docker $USER       ((Gave Permission to Run Docker))
	 
	 logout and login EC2.

5)  use ssh for copy  simple calculator project from local (HTML, CSS, JavaScript). ✅

	scp -i AWS_EC2.pem -r caculator ubuntu@3.108.185.111:/home/ubuntu/
	
6) Wrote a Dockerfile to build a Docker image for the web app. ✅

	Built and Ran Docker Container

	* docker build -t calculator .
	* docker run -d -p 8000:80 calculator

	* The app runs inside the container and can be accessed on localhost:80 (inside EC2).

7) Opened Port in EC2 Security Group  ✅

		1) In the AWS console, I allowed inbound traffic on port 80 in the Security Group settings so I can access the app from the browser.


8) Opened the EC2 public IP in the browser to use the calculator app.

1) http://<Your-EC2-Public-IP>:<PORT> (cost charged in aws for ip expose) ✅


2)Securely access a web app running on EC2’s port 80 via your local localhost:8000 without exposing any public ports.  ✅
														(ssh port forward)	








