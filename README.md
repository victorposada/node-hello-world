# node-hello-world ![Node.js](https://img.shields.io/badge/Node.js-%20%20%20%20%20%20%20-green) ![Jenkins](https://img.shields.io/badge/Jenkins-%20%20%20%20%20%20-blue) ![Kubernetes](https://img.shields.io/badge/Kubernetes-%20%20%20%20-lightblue)

This repository demonstrates a basic Node.js web server setup alongside a Jenkins pipeline to automate versioning using **Semantic Release**. The project is focused on showcasing DevOps practices, particularly continuous integration and deployment (CI/CD) pipelines, versioning, and leveraging Kubernetes for deployment. 🚀

## Project Overview 📚

The repository contains the following key components:

- **Node.js Web Server**: A simple "Hello, World!" web server built using Node.js.
- **Jenkinsfile**: A Jenkins pipeline that automates the versioning process using **Semantic Release** to ensure proper versioning based on commit messages.
- **Kubernetes + Helm**: The Jenkins server is deployed on a Kubernetes cluster using Helm charts, and the pipeline runs within this Kubernetes environment.

## Features ⚙️

- **Semantic Release**: Automatically handles versioning (major, minor, patch) based on commit messages following the Conventional Commits specification. 🔖
- **Jenkins Pipeline**: Automated pipeline to run tests, release a new version, and update the version on GitHub. 🔄
- **GitHub + Jenkins Integration**: Utilizes Jenkins GitHub plugin to trigger the pipeline when code is pushed to the repository. 🌐
- **Kubernetes + Helm**: Jenkins is deployed on Kubernetes using Helm, providing a scalable and maintainable infrastructure for CI/CD workflows. 🏗️
