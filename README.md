# Ansible Kubernetes Deployment

This repository contains Ansible playbooks and scripts for deploying a Kubernetes cluster with Kubeadm.
## Prerequisites

- **Infra provisioned through IAC**: Deployed infrastructure using [terraform multi cloud iac](https://github.com/Moody-san/terraform-multicloud-infra) (as it contains a module to automatically update inventory for ansible scripts given that ansible repo and terraform repo are in the same directories). 
- **Ansible Controller Scripts**: Run the setupiptables.yml and acceptfingerprint.yml from ansible_controller_setup repository . Link in Additional Resources .
- **Software Requirements**: Ensure Ansible cli is installed.

## Installation

Clone the repository to your local machine to get started with the Kubernetes deployment:

```bash
git clone https://github.com/Moody-san/ansible-k8s-deployment.git
cd ansible-k8s-deployment/playbooks
```
## Usage
```bash
ansible-playbook initmaster.yml -i ../inventory/oracleinventory
ansible-playbook addworkernodes.yml -i ../inventory/oracleinventory
ansible-playbook addcontrolnodes.yml -i ../inventory/oracleinventory
ansible-playbook addistiomesh.yml -i ../inventory/oracleinventory
```
## Configuration

you can use the -l limit tag to add specific nodes only for example 
```bash
ansible-playbook addworkernodes.yml -i ../inventory/oracleinventory -l oraclemaster,oracleworker
```

## Additional Resources
- **MariaDB Cluster Setup**: For setting up a MariaDB cluster with Kubernetes-based failover, visit [ansible-galeracluster-deployment](https://github.com/Moody-san/ansible-galeracluster-deployment).
- **CI/CD and Automation**: For CI/CD and other automation scripts, refer to [ansible-controller-setup](https://github.com/Moody-san/ansible-controller-setup).

## Notes
- You will be prompted for your private load balancer ip when initializing kubernetes cluster . The one provisioned through the terraform .
- When using limit with for example with addworkernodes oraclemaster is required as we use oracle master to generate the join string .

## Demo


https://github.com/Moody-san/ansible-k8s-deployment/assets/87976665/ed06bf91-d8e8-4191-bf77-ecddeb326a32

