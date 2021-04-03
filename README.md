# Project-1
For Cyber Security BootCamp
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![TODO: Update the path with the name of your diagram](Images/diagram_filename.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly acessable, in addition to restricting traffic to the network.
- _TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?

Load Balancers protect the availability portion of security. the Jump Box is an extra layer someone has to jump through in order to access your load balancers.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the network and system  security.
- _TODO: What does Filebeat watch for? Log Files
- _TODO: What does Metricbeat record? changes to the OS or metrics such as elastisearch.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| Web1     | Server   | 10.0.0.9   | Linux            |
| Web2     | Server   | 10.0.0.8   | Linux            |
| Web3     | Server   | 10.0.0.11  | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Host machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: Add whitelisted IP addresses_
68.47.72.92
Machines within the network can only be accessed by Whitelisted IPS.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?
I allowed the JumpBox Provisioner access to my VM 104.43.162.25

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/No              | 10.0.0.4 10.0.0.2    |
|          |                     |                      |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?
Makes Installation on multiple applications easier

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
-Install Docker
- Download Image
- Start Image
- Attach Image

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)
/Project-1/Diagrams/docker\ ps\ Screenshot.jpg
### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

13.90.58.138
104.43.162.25
40.122.78.5


We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_
We Installed FileBeat and MetricBeat
These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._
FileBeat was installed onto our webservers along with metricbeat. FileBeat watched over the log data on the dvwa server. Metric Beat keeps track of your hardware or cpus and memory.
### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the Playbook file to Ansible.
- Update the playbook file to include...
- Run the playbook, and navigate to the image to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it? You copy the playbook to /etc/ansible
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on? You update the hosts file in /etc/ansible/hosts
- _Which URL do you navigate to in order to check that the ELK server is running?
http://13.90.58.138:5601/app/kibana
