# DevOps Documentation & Hands-On Labs

A learning repository containing command notes, configuration files, screenshots, and practical exercises from a Cloud Native DevOps learning program. The repository is organized by day, with separate folders for assignments and larger projects.

## What This Repository Covers

- **Git and GitHub** — Git commands, repositories, and SSH key setup
- **Docker** — images, containers, Dockerfiles, and containerized web applications
- **Docker Compose and networking** — multi-container applications and service communication
- **Jenkins and GHCR** — build-job configuration and publishing container images to GitHub Container Registry
- **Terraform and AWS** — infrastructure as code, VPCs, subnets, EC2 instances, IAM, and outputs
- **Kubernetes** — Pods, Deployments, scaling, Services, and local practice with Minikube
- **Amazon EKS** — connecting to an EKS cluster, inspecting worker nodes, running workloads, scaling Deployments, and exposing services
- **Practical assignments** — web app containerization and a Jenkins + Terraform Simon Says project

The repository also contains the **Cloud Native DevOps 12-Day Program** PDF used as reference material. The visible day folders currently cover **Day1 through Day11**; the contents may evolve as more exercises are added.

## Repository Structure

    DevOps_Documentation/
    ├── Assignment/
    │   ├── Containerize the webapp/
    │   └── jenkins-terraform-project/
    ├── Day1/     # Git/GitHub commands and SSH key setup
    ├── Day2/     # Docker images, containers, and Git command notes
    ├── Day3/     # Dockerfile creation and running a static site in a container
    ├── Day4/     # Docker Compose, Docker networking, and Django project
    ├── Day5/     # Jenkins build configuration and publishing an image to GHCR
    ├── Day6/     # Terraform notes and practice
    ├── Day7/     # Terraform with AWS: VPC, EC2, and IAM resources
    ├── Day8/     # Terraform infrastructure configuration and outputs
    ├── Day9/     # Kubernetes Pod manifests and Minikube notes
    ├── Day10/    # Kubernetes Service commands
    ├── Day11/    # Amazon EKS, worker nodes, Pods, Deployments, scaling, and Services
    ├── Cloud_Native_DevOps_12_Day_Program_Sep24_Oct10_2026 (1).pdf
    └── .gitignore

## Daily Notes

Each DayN folder holds the notes and artifacts captured for that stage: command logs, configuration files, screenshots, or practical examples. Open the folders to follow the original hands-on sequence.

| Folder | Main topics indicated by the files |
|---|---|
| [Day1](Day1/) | Git/GitHub commands and SSH key setup |
| [Day2](Day2/) | Docker images and containers; Git command notes |
| [Day3](Day3/) | Dockerfile creation and serving a web page with Docker |
| [Day4](Day4/) | Docker Compose, Docker networking, and a Django web project |
| [Day5](Day5/) | Jenkins build jobs and publishing an image to GHCR |
| [Day6](Day6/) | Terraform concepts and practice |
| [Day7](Day7/) | Terraform configuration for AWS networking, EC2, and IAM |
| [Day8](Day8/) | Terraform resources, variables, and outputs |
| [Day9](Day9/) | Kubernetes Pod YAML and Minikube |
| [Day10](Day10/) | Kubernetes Service commands |
| [Day11](Day11/) | Amazon EKS, kubeconfig, worker nodes, Pods, Deployments, scaling, and NodePort Services |

These summaries are based on folder and file names. Refer to the individual notes and configuration files for the exact steps and implementation details.

## Assignments

### 1. Containerize the web app

Folder: [Assignment/Containerize the webapp](Assignment/Containerize%20the%20webapp/)

Contains command notes, Docker container/image screenshots, Jenkins build output, and an AWS S3 deployment subfolder related to the web app assignment.

### 2. Jenkins + Terraform — Simon Says

Folder: [Assignment/jenkins-terraform-project](Assignment/jenkins-terraform-project/)

Contains the Simon Says DevOps project work combining Terraform-managed AWS infrastructure and Jenkins-based automation. Explore the project folder for its source and configuration files.

## Getting Started

This repository is primarily a documentation and lab-notes collection, rather than a single application with one universal build command.

1. Clone the repository:

   `git clone https://github.com/Adhityae-506/DevOps_Documentation.git`

2. Open the day or assignment folder you want to explore.
3. Read the accompanying notes before running commands.
4. For Docker, Terraform, AWS, Jenkins, or Kubernetes exercises, make sure the corresponding tools and credentials are configured for your environment.

Commands and file paths can depend on your operating system and local setup, so verify them before executing.

## Tools and Prerequisites

Depending on the exercise, you may need:

- Git and a GitHub account
- Docker Desktop / Docker Engine
- Jenkins
- Terraform
- An AWS account with appropriately scoped IAM permissions
- AWS CLI and an authorized EKS cluster context for the Day11 EKS exercises
- A GitHub Personal Access Token with the required GHCR package permissions
- kubectl and Minikube for local Kubernetes exercises

You do not need every tool installed just to read the notes.

## Security and Cleanup

- **Never commit secrets:** keep AWS access keys, GHCR tokens, passwords, and private keys out of Git and screenshots.
- Use Jenkins Credentials or another secret manager to provide credentials to automation jobs.
- Restrict exposed security-group ports to the sources that need access. In particular, avoid opening SSH (TCP 22) to all IPv4 addresses.
- Terraform state and saved plan files can include sensitive values; keep them out of version control.
- AWS resources can incur charges. Check which resources an exercise creates and remove resources you no longer need. Before using `terraform destroy`, review the proposed deletions and make sure you are in the correct Terraform working directory and state.

## Purpose

The goal of this repository is to keep an organized, practical record of DevOps learning: the commands used, infrastructure and container configurations, build results, and screenshots from the exercises.
