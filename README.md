# gs-aws-research
Git repository to hold Group Security AWS research scripts, playbooks and code.

The goal of this project is to design, deploy and configure a AWS research environment focused on Security Event visualisation and AWS Security capabilities

Project main tasks:
- Create an automated AWS Environment that can be rebuilt every day
- Install and configure an ELK stack that consumes all AWS events and logs stored in S3
- Create a CI pipeline that starts vulnerable applications and web attacks tools aimed at those apps
- set up AWS WAF to protect the vulnerable apps
-- https://www.slideshare.net/AmazonWebServices/using-aws-waf-and-lambda-for-automatic-protection

# Tools
The following tools and technologies will be used in the environment.

## ELK
Elasticsearch will be used for consuming and visualising logs in the Environment

- https://elastic.co


## Prometheus
Prometheus will be used for monitoring metrics in the enviroment

- https://prometheus.io

## Ansible
Ansible automation tool will be used for provisioning, configuration and orchestration of the whole AWS environment and components deployed in the environment.

- http://www.ansible.com


## Cloud custodian
Cloud-custodian will be used for house-keeping tasks in the AWS environment. Cleaning and destroying old EC2 instances, ensuring security and compliance AWS configurations end setups.

- https://developer.capitalone.com/opensource-projects/cloud-custodian/


## Naming Conventions
Naming and tagging AWS services and components is important and has to be done in order to identify and work with the correct resoures in the AWS environment.

Below are some good examples of naming conventions that can be used:

- https://www.cloudconformity.com/conformity-rules/
- https://www.cloudconformity.com/conformity-rules/EC2/ec2-instance-naming-conventions.html
- https://www.cloudconformity.com/conformity-rules/EC2/security-group-naming-conventions.html
