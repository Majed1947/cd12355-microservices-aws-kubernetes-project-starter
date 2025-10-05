# Coworking Space Analytics Service

## Project Overview
Microservices-based analytics application deployed on AWS EKS using Infrastructure as Code.

## Architecture
- **ECR**: Docker container registry
- **CodeBuild**: CI/CD pipeline triggered by GitHub commits
- **EKS**: Kubernetes cluster (2 nodes, t3.small)
- **PostgreSQL**: Database deployed in Kubernetes
- **Flask API**: Analytics service with LoadBalancer exposure

## Deployment Process
1. Code pushed to GitHub triggers CodeBuild
2. Docker image built and pushed to ECR automatically
3. Kubernetes pulls image from ECR
4. Application exposed via AWS LoadBalancer

## API Endpoints
- `GET /api/reports/daily_usage` - Daily analytics
- `GET /api/reports/user_visits` - User visit statistics

## Technologies
Python, Flask, PostgreSQL, Docker, Kubernetes, AWS (EKS, ECR, CodeBuild, CloudWatch)
