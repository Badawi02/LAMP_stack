
## Tools Used
 - AWS
 - Terraform
 - Bash script

--------------------------------------------------------------

### Project Details:
 - Infrastructure as code using Terraform that builds an environment on AWS
    - VPC in US-EAST-1
    - Public-subnet in availability zone A
    - Security Group (SG)
    - EC2 instance of type T2.micro with Ubuntu image Linux
    - Internet Gateway (IGW)        
 - Run script_installation.sh to install (apache - mysql - php)
 - Configure apache to show custom web page
 - Configure mysql to craete ( User with password - Database)

--------------------------------------------------------------

### Getting Started

- Download The Code
```bash
  git clone https://github.com/Badawi02/atw_task.git
```
```bash
  cd atw_task
```
--------------------------------------------------------------

- Enter your AWS account credentials at file "terraform.tfvars" :
<p align="center">
 <img src="https://github.com/Badawi02/atw_task/blob/main/ScreenShots/1.png"/>
</p>

- Build the Infrastructure
```bash
  terraform init
```
```bash
  terraform plan
```
```bash
  terraform apply
```
<p align="center">
 <img src="https://github.com/Badawi02/atw_task/blob/main/ScreenShots/3.png"/>
</p>
--------------------------------------------------------------

- Now you can check your AWS account, you can see this resources has been created:
  - VPC named "simple-web-app".
  - 1 Subnet "webserver-subnet".
  - 1 Internet gateway "Web-IGW"
  - 1 Security group "webserver-sg"
  - 1 public EC2 named "Web_Server"

--------------------------------------------------------------

- You have to connect to EC2 using ssh and the private key generated when the infrastructure was created:
```bash
  chmod 400 ec2_key.pem
```
```bash
  ssh -i ec2_key.pem ubuntu@< public ip of ec2 > 
```
<p align="center">
 <img src="https://github.com/Badawi02/atw_task/blob/main/ScreenShots/4.png"/>
</p>
--------------------------------------------------------------

- Download The Code enter the EC2 :
```bash
  git clone https://github.com/Badawi02/atw_task.git
```
```bash
  cd atw_task
```

--------------------------------------------------------------

- Run the "script_installation.sh" to install (apache - mysql - php) and configure apache :
```bash
  bash script_installation.sh
```
<p align="center">
 <img src="https://github.com/Badawi02/atw_task/blob/main/ScreenShots/5.png"/>
</p>
--------------------------------------------------------------

- Configure mysql to create user with password and create database :
```bash
  sudo mysql
```
```bash
  CREATE DATABASE testDB;
```
```bash
  CREATE USER 'phpUser'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
```
```bash
  GRANT ALL ON testDB.* TO 'phpUser'@'%';
```
```bash
  exit;
```
<p align="center">
 <img src="https://github.com/Badawi02/atw_task/blob/main/ScreenShots/6.png"/>
</p>
--------------------------------------------------------------

- Now you can hit EC2 from public ip of it then:
  - you can see "Hello world" and your IP and the current time
- Output :
<p align="center">
 <img src="https://github.com/Badawi02/atw_task/blob/main/ScreenShots/2.png"/>
</p>

--------------------------------------------------------------

You can destroy the infrastructure and delete all resources created from my code 
```bash
  terraform destroy
```
--------------------------------------------------------------

## Let's talk about some basics network  :
- what IP address, MAC address, switches, routers, and routing protocols are ?

1- IP address: An IP (Internet Protocol) address is a numerical label assigned to each device connected to a computer network that uses the Internet Protocol for communication. It serves two primary functions: identifying the host or network interface, and providing the location of the host in the network.

2- MAC address: A MAC (Media Access Control) address is a unique identifier assigned to a network interface controller (NIC) for use as a network address in communications within a network segment. It is a hardware address that is assigned to a device by the manufacturer and cannot be changed.

3- Switches: A switch is a networking device that connects devices together on a local area network (LAN). It operates at the data link layer (Layer 2) of the OSI (Open Systems Interconnection) model and forwards data packets between devices based on their MAC addresses.

4- Routers: A router is a networking device that forwards data packets between computer networks. It operates at the network layer (Layer 3) of the OSI model and uses routing tables to determine the best path for data to travel between networks.

5- Routing protocols: Routing protocols are sets of rules that determine how routers communicate with each other to exchange information about network topology and the status of network links. They allow routers to dynamically adjust their routing tables and find the best path for data to travel through a network.
