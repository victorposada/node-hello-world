# node-hello-world ![Node.js](https://img.shields.io/badge/Node.js-%20%20%20%20%20%20%20-green) ![Jenkins](https://img.shields.io/badge/Jenkins-%20%20%20%20%20%20-blue) ![Kubernetes](https://img.shields.io/badge/Kubernetes-%20%20%20%20-lightblue)

This repository demonstrates a basic Node.js web server setup alongside a Jenkins pipeline to automate versioning using **Semantic Release**. The project is focused on showcasing DevOps practices, particularly continuous integration and deployment (CI/CD) pipelines, versioning, and leveraging Kubernetes for deployment. 🚀

In addition to Docker, **Buildah** is used for building the Docker images, offering a more flexible and lightweight approach to container image creation. 

## Project Overview 📚

The repository contains the following key components:

- **Node.js Web Server**: A simple "Hello, World!" web server built using Node.js.
- **Jenkinsfile**: A Jenkins pipeline that automates the versioning process using **Semantic Release** to ensure proper versioning based on commit messages.
- **Kubernetes + Helm**: The Jenkins server is deployed on a Kubernetes cluster using Helm charts, and the pipeline runs within this Kubernetes environment.
- **Buildah**: Used for building Docker images, providing a fast and efficient way to construct container images directly without requiring a Docker daemon.

## Features ⚙️

- **Semantic Release**: Automatically handles versioning (major, minor, patch) based on commit messages following the Conventional Commits specification. 🔖
- **Jenkins Pipeline**: Automated pipeline to run tests, release a new version, and update the version on GitHub. 🔄
- **GitHub + Jenkins Integration**: Utilizes Jenkins GitHub plugin to trigger the pipeline when code is pushed to the repository. 🌐
- **Kubernetes + Helm**: Jenkins is deployed on Kubernetes using Helm, providing a scalable and maintainable infrastructure for CI/CD workflows. 🏗️
- **Buildah**: Enables fast and efficient container image creation for deployment in a CI/CD environment. ⚡