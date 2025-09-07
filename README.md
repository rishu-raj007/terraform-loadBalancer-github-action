# ⚙️ Azure Load Balancer Deployment with Terraform

This project uses [Terraform](https://www.terraform.io/) to provision a fully functional **Azure Load Balancer** setup, including all the necessary networking and compute resources in Microsoft Azure.

## 📌 Features

- Deploys a **Public or Internal Load Balancer**
- Creates:
  - Resource Group
  - Virtual Network & Subnets
  - Network Security Groups
  - Public IP Address (for public LB)
  - Load Balancer with:
    - Backend Address Pool
    - Load Balancer Rules
    - Health Probes
    - NAT Rules (optional)
  - Network Interfaces
  - Optional Virtual Machines as backend pool members
- Fully modular and customizable

## 📁 Project Structure

