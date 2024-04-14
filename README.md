# Ansible Kubernetes Deployment

This repository contains Ansible playbooks and scripts for deploying a Kubernetes cluster with Kubeadm. It is designed to streamline the setup and management of Kubernetes .
## Prerequisites

Before you begin, ensure you have the following installed on your machine:

- Ansible
- Git
- Infra deployed using -> https://github.com/Moody-san/terraform-multicloud-infra

## Installation

Clone the repository to your local machine to get started with the Kubernetes deployment:

```bash
git clone https://github.com/Moody-san/ansible-k8s-deployment.git
cd ansible-k8s-deployment/playbooks
```
## Usage
```bash
ansible-playbook initmaster.yml -i ../inventory/oracleinventory
```
You will be prompted for private load balancer ip which was setup using terraform repo . Run the remaining scripts using the same syntax .
