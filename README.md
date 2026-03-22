# 🚀 Azure Infrastructure using Terraform

This repository contains Infrastructure as Code (IaC) implementation using **Terraform** to provision and manage Azure resources in a modular and scalable way.

## 📌 Project Overview

The project demonstrates how to design and deploy Azure infrastructure using reusable Terraform modules. It focuses on networking and security components commonly used in real-world DevOps environments.

## 🧱 Modules Implemented

- 🔹 **Virtual Network (VNet)**
  - Creates isolated network in Azure
  - Supports custom address spaces

- 🔹 **Subnet**
  - Logical segmentation within VNet
  - Supports multiple subnets

- 🔹 **Network Security Group (NSG)**
  - Controls inbound and outbound traffic
  - Implements security rules

- 🔹 **Network Interface (NIC)**
  - Connects virtual machines to the network
  - Integrated with subnet and NSG

- 🔹 **Azure Key Vault**
  - Secure storage for secrets, keys, and certificates
  - Helps in protecting sensitive data

## ⚙️ Tech Stack

- **Terraform**
- **Microsoft Azure**
- **Azure Resource Manager (ARM)**

## 📁 Project Structure
Azure_Resources/
│
├── modules/
│ ├── vnet/
│ ├── subnet/
│ ├── nsg/
│ ├── nic/
│ └── keyvault/
│
├── main.tf
├── variables.tf
├── outputs.tf
└── provider.tf

## 🚀 How to Use

1. Clone the repository:
      ```bash
   git clone https://github.com/iamyogesh3397/Azure_Resources.git
   cd Azure_Resources
   
2.Initialize Terraform:
   terraform init
   
3.Validate configuration:
    terraform validate

4.Plan deployment:
    terraform plan

5.Apply changes:
    terraform apply

🔐 Best Practices Followed
Modular code design for reusability
Separation of concerns
Parameterized configurations using variables
Secure handling of secrets using Azure Key Vault
Clear resource dependencies
📊 Use Cases
Azure Infrastructure Automation
DevOps Pipeline Integration
Scalable Cloud Deployments
Secure Networking Setup
👨‍💻 Author

Yogesh
DevOps Enthusiast | Azure | Terraform
