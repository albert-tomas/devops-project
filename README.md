# DevOps Project

Personal project to learn DevOps basics by building a simple deployment pipeline.

## What I did

- Created a small Python application
- Containerized it using Docker
- Set up a CI/CD pipeline with GitHub Actions
- Deployed it to an AWS EC2 instance

## How it works

On each push:

- A Docker image is built
- The image is pushed to Docker Hub
- The server pulls the new version
- The container is restarted with the updated app

## Goal

The idea of this project is to understand how an application goes from code to running in a server, using basic DevOps tools.
