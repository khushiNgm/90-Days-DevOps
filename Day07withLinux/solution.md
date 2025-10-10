## Day 7 Answers: Understanding Package Manager and Systemctl

# Tasks

1. Install Docker and Jenkins:

⚪ Install Docker and Jenkins on your system from your terminal using package managers.

Answer</br>
⚪ First-Installing Docker</br>
    ■ Update the package list and install required packages:</br>
   <pre>
   sudo apt update</br>
   sudo apt install apt-transport-https ca-certificates curl software-properties-common 
   </pre>
  
   ■ Add Docker’s official GPG key:</br>
   <pre>
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -      
   </pre>    

   ■ Add the Docker APT repository: </br>
   <pre>
   sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" '
   </pre> 

   ■ Update the package list again:</br>
  <pre>
   sudo apt update
  </pre>

   ■ Install Docker:</br>
  <pre>
   sudo apt install docker-ce</br>
  </pre>

   ■ Check Docker installation:</br>
  <pre>
   sudo systemctl status docker
  </pre>

⚪ Installing Jenkins</br>
   ■ Add the Jenkins repository key to the system:</br>
  <pre>
   curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
  </pre>
 
   ■ Add the Jenkins repository:</br>
  <pre>
   sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'</pre>

   ■ Update the package list:</br>
  <pre>
   sudo apt update
  </pre>

   ■ Install Jenkins:</br>
<pre>
   sudo apt install jenkins
</pre>

  ■ Start Jenkins:</br>
<pre>
   sudo systemctl start jenkins
</pre>

## Note:</br>

 ■ First, check whether JAVA is installed or not.</br>
  <pre>
   java -version
  </pre>

 ■ If you have not installed</br>
 <pre>
   sudo apt install default-jre
 </pre>

## Output </br>
![](Images/task01.png)

Output (Jenkins-UI)</br>
![](Images/task02.png)

2. Write a Blog or Article: </br>

 ⚪ Write a small blog or article on how to install these tools using package managers on Ubuntu and CentOS.

Answer</br>

i. Introduction:</br>
  ■ Briefly introduce Docker and Jenkins.</br>
  ■ Mention the operating systems (Ubuntu and CentOS) covered.

ii. Installing Docker on Ubuntu:</br>
  ■ List the steps as detailed above.</br>

iii. Installing Docker on CentOS:</br>
  ■ Provide similar steps adjusted for CentOS.</br>

iv. Installing Jenkins on Ubuntu:</br>
  ■ List the steps as detailed above.</br>

v. Installing Jenkins on CentOS:</br>
  ■ Provide similar steps adjusted for CentOS.</br>

## Systemctl and Systemd
Systemctl is used to examine and control the state of the “systemd” system and service manager. Systemd is a system and service manager for Unix-like operating systems (most distributions, but not all).</br>

## Tasks</br>
1. Check Docker Service Status:</br>
Check the status of the Docker service on your system (ensure you have completed the installation tasks above).
</br>
Answer </br>
![](Images/task03.png)

2. Manage Jenkins Service:</br>

 ⚪ Stop the Jenkins service and post before and after screenshots.</br>

Answer</br>
![](Images/task04.png)

3. Read About Systemctl vs. Service:</br>

  ⚪Read about the differences between the systemctl and service commands.
  ⚪ Example: systemctl status docker vs. service docker status.</br>

## Answer</br>

 ⚪ Understanding the systemctl and service Commands </br>
     ■ Both systemctl and service commands are used to manage system services in Linux, but they differ in terms of usage, functionality, and the system architectures they support.</br>
      ■ systemctl Command </br>
          ■ systemctl is a command used to introspect and control the state of the systemd system and service manager. It is more modern and is used in systems that use systemd as their init system, which is common in many contemporary Linux distributions.
## Examples:</br>
  ■ Check the status of the Docker service:</br>
<pre>
   sudo systemctl status docker 
</pre>   
  ■ Start the Jenkins service:</br>
<pre>
   sudo systemctl start jenkins 
</pre>
  ■ Stop the Docker service:
<pre>
   sudo systemctl stop docker
</pre>
  ■ Enable the Jenkins service to start at boot:
<pre>
   sudo systemctl enable jenkins
</pre>
 
■ service Command</br>
  ■ 'service' is a command that works with the older 'init' systems (like SysVinit). It provides a way to start, stop, and check the status of services. While it is still available on systems using 'systemd' for backward compatibility, its usage is generally discouraged in favor of 'systemctl'.</br>

■ Examples:</br>

1) Check the status of the Docker service:</br>
<pre>
   sudo service docker status 
</pre>   
2) Start the Jenkins service:</br>
<pre>
   sudo service jenkins start
</pre>
3) Stop the Docker service:</br>
<pre>
   sudo service docker stop
</pre>

## Key Differences </br>

1 System Architecture:</br>
  ■ systemctl works with systemd. </br>
  ■ service works with SysVinit and is compatible with systemd for backward compatibility.

2 Functionality:</br>
  ■ systemctl offers more functionality and control over services, including management of the service's state (start, stop, restart, reload), enabling/disabling services at boot, and querying detailed service status.</br>
  ■ service provides basic functionality for managing services, such as starting, stopping, and checking the status of services.

3 Syntax and Usage:</br>
  ■ systemctl uses a more unified syntax for managing services.</br>
  ■ service has a simpler and more traditional syntax.

## Additional Tasks
</br>
4. Automate Service Management:</br>

 ⚪ Write a script to automate the starting and stopping of Docker and Jenkins services.</br>

Answer </br>
![](Images/task.png)

5. Enable and Disable Services:</br>

 ⚪ Use systemctl to enable Docker to start on boot and disable Jenkins from starting on boot.</br>

Answer</br>
⚪ Enable Docker to start on boot:</br>
![](Images/task1.png)

⚪ Disable Jenkins from starting on boot: 
![](Images/task2.png)

Analyze Logs:</br>
⚪ Use journalctl to analyze the logs of the Docker and Jenkins services. Post your findings.</br>

Answer
⚪ Docker Logs: 
![](Images/task3.png)

⚪ Jenkins Logs: 
![](Images/task4.png)