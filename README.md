🚀 Jenkins CI/CD Pipeline with SonarQube & Tomcat Deployment

📌 Project Overview

This project demonstrates a CI/CD pipeline implemented using Jenkins Pipeline as Code (Jenkinsfile) for a Java Maven application.
The pipeline automates build, code quality analysis using SonarQube, and deployment to Tomcat environments, following real-world DevOps practices.

The goal of this project is to establish a strong CI/CD foundation before moving into containerization (Docker) and advanced orchestration.


🛠️ Tech Stack Used

Version Control: Git & GitHub

CI/CD Tool: Jenkins

Build Tool: Apache Maven

Code Quality: SonarQube

Application Server: Apache Tomcat

Operating System: Linux / Windows


🧩 CI/CD Architecture
Developer
   |
   |  git push
   v
GitHub Repository
   |
   |  Webhook trigger
   v
Jenkins Pipeline (Jenkinsfile)
   |
   |-- Build & Package (Maven)
   |-- Code Quality Analysis (SonarQube)
   |-- Deploy to Staging (Tomcat)
   |-- Manual Approval
   |-- Deploy to Production (Tomcat)
   |
SonarQube Dashboard


⚙️ Jenkins Pipeline Stages Explained

 Checkout Code:

Pulls source code from GitHub using SCM configuration.

 Build & Package:

Executes Maven lifecycle:

mvn clean package

Generates a .war artifact.

 SonarQube Code Analysis

Performs static code analysis.

Publishes:

Bugs

Vulnerabilities

Code Smells

Maintainability metrics

 Deploy to Staging:

Automatically deploys the WAR file to Tomcat Staging environment.

 Deploy to Production (Manual Approval)

Requires human approval before production deployment.

Deploys artifact to Tomcat Production environment.


🔐 Security & Credentials Management

SonarQube authentication token is securely stored in Jenkins Credentials.

No secrets are hardcoded in the Jenkinsfile.

Follows industry best practices for credential handling.


📊 SonarQube Integration

SonarQube runs in a Docker container.

Jenkins connects using withSonarQubeEnv.

Results are visible on the SonarQube dashboard after pipeline execution.


🚧 Current Scope & Limitations

Docker is used only for SonarQube, not application deployment.

Deployment is local (learning setup).

Quality Gates are not enforced yet.


🔮 Future Enhancements

Enforce SonarQube Quality Gates

Add Docker image build & push

Replace local deployment with Docker/Kubernetes

Add monitoring & logging

Implement Jenkins distributed builds (master-agent setup)


🎯 Key Learning Outcomes

CI/CD pipeline design using Jenkinsfile

Secure credential handling in Jenkins

Static code analysis integration

Manual approval workflows

Environment-based deployments



