## Day 7 Answers: Understanding Package Manager and Systemctl

# Tasks

1. Install Docker and Jenkins:

⚪ Install Docker and Jenkins on your system from your terminal using package managers.

Answer</br>
⚪ First-Installing Docker</br>
    -> Update the package list and install required packages:</br>
   sudo apt update</br>
   sudo apt install apt-transport-https ca-certificates curl software-properties-common 

⚪ Add Docker’s official GPG key:</br>
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -          </br>

⚪ Add the Docker APT repository: </br>
   sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"</br>

⚪ Update the package list again:</br>
   sudo apt update</br>

⚪ Install Docker:</br>
   sudo apt install docker-ce</br>

⚪ Check Docker installation:</br>
   sudo systemctl status docker</br>

⚪ Installing Jenkins</br>
  -> Add the Jenkins repository key to the system:</br>
   curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -</br>

⚪ Add the Jenkins repository:</br>
   sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'</br>

⚪ Update the package list:</br>
   sudo apt update</br>

⚪ Install Jenkins:</br>
   sudo apt install jenkins</br>

⚪ Start Jenkins:</br>
   sudo systemctl start jenkins

## Note:</br>

 -> First, check whether JAVA is installed or not.</br>
   java -version</br>

 -> If you have not installed</br>
   sudo apt install default-jre</br>

## Output image</br>

Output (Jenkins-UI) image</br>

Write a Blog or Article: </br>

Write a small blog or article on how to install these tools using package managers on Ubuntu and CentOS.
Answer</br>

Introduction:</br>
Briefly introduce Docker and Jenkins.
Mention the operating systems (Ubuntu and CentOS) covered.
Installing Docker on Ubuntu:
List the steps as detailed above.
Installing Docker on CentOS:
Provide similar steps adjusted for CentOS.
Installing Jenkins on Ubuntu:
List the steps as detailed above.
Installing Jenkins on CentOS:
Provide similar steps adjusted for CentOS.
Systemctl and Systemd
Systemctl is used to examine and control the state of the “systemd” system and service manager. Systemd is a system and service manager for Unix-like operating systems (most distributions, but not all).</br>

## Tasks</br>
Check Docker Service Status:</br>

Check the status of the Docker service on your system (ensure you have completed the installation tasks above).
</br>
Answer image</br>

# Manage Jenkins Service:</br>

Stop the Jenkins service and post before and after screenshots.</br>

Answer image</br>

Read About Systemctl vs. Service:</br>

Read about the differences between the systemctl and service commands.
Example: systemctl status docker vs. service docker status.</br>

## Answer</br>

Understanding the systemctl and service Commands
Both systemctl and service commands are used to manage system services in Linux, but they differ in terms of usage, functionality, and the system architectures they support.
systemctl Command
systemctl is a command used to introspect and control the state of the systemd system and service manager. It is more modern and is used in systems that use systemd as their init system, which is common in many contemporary Linux distributions.</br>

Examples:</br>
Check the status of the Docker service:</br>
   sudo systemctl status docker </br>   
Start the Jenkins service:</br>
   sudo systemctl start jenkins </br>
Stop the Docker service:</br>
   sudo systemctl stop docker</br>
Enable the Jenkins service to start at boot:</br>
   sudo systemctl enable jenkins</br>
 
service Command</br>
'service' is a command that works with the older 'init' systems (like SysVinit). It provides a way to start, stop, and check the status of services. While it is still available on systems using 'systemd' for backward compatibility, its usage is generally discouraged in favor of 'systemctl'.</br>

Examples:</br>

1) Check the status of the Docker service:</br>
   sudo service docker status    
2) Start the Jenkins service:</br>
   sudo service jenkins start
3) Stop the Docker service:</br>
   sudo service docker stop

## Key Differences </br>

1 System Architecture:</br>
systemctl works with systemd.
service works with SysVinit and is compatible with systemd for backward compatibility.

2 Functionality:</br>
systemctl offers more functionality and control over services, including management of the service's state (start, stop, restart, reload), enabling/disabling services at boot, and querying detailed service status.</br>
service provides basic functionality for managing services, such as starting, stopping, and checking the status of services.

3 Syntax and Usage:</br>
systemctl uses a more unified syntax for managing services.
service has a simpler and more traditional syntax.
Additional Tasks
</br>
Automate Service Management:</br>

Write a script to automate the starting and stopping of Docker and Jenkins services.</br>

Answer image</br>

Enable and Disable Services:</br>

Use systemctl to enable Docker to start on boot and disable Jenkins from starting on boot.</br>

Answer</br>

Enable Docker to start on boot: image</br>

Disable Jenkins from starting on boot: image

Analyze Logs:</br>
Use journalctl to analyze the logs of the Docker and Jenkins services. Post your findings.</br>

Answer
Docker Logs: image

Jenkins Logs: 