🚀 Jenkins CI/CD Pipeline with SonarQube & Tomcat

A real-world, end-to-end CI/CD pipeline built using Jenkins, Maven, SonarQube, and Apache Tomcat.
This project focuses on how CI/CD works in real companies, including debugging, failures, and fixing production-like issues.

📌 Project Overview

This project demonstrates a company-level CI/CD pipeline where:

Source code is pushed to GitHub

Jenkins Pipeline automatically triggers on every commit

Application is built using Maven

Code quality is analyzed using SonarQube

Quality Gate is enforced

Application is deployed to Apache Tomcat

Final application is accessible via browser

This is not a freestyle job, but a declarative Jenkins Pipeline, which reflects real enterprise practices.

🏗️ CI/CD Architecture
GitHub
  ↓ (Webhook)
Jenkins Pipeline
  ├── Checkout Code
  ├── Build & Package (Maven)
  ├── SonarQube Code Analysis
  ├── Quality Gate Validation
  ├── Deploy to Tomcat (Staging / Production)
  ↓
Apache Tomcat

🛠️ Tools & Technologies Used

Jenkins – CI/CD Orchestration

GitHub – Source Control & Webhooks

Maven – Build & Dependency Management

SonarQube – Static Code Analysis & Quality Gates

Apache Tomcat 9 – Application Server

Java (JDK 21) – Runtime

Windows OS – Jenkins & Tomcat Host

📂 Jenkins Pipeline Highlights

Declarative Jenkinsfile

Global Tool Configuration (Maven)

Secure SonarQube token authentication

withSonarQubeEnv integration

Artifact-based deployment (.war)

Clear stage separation

Real error handling via console logs

🔐 SonarQube Integration

SonarQube Server configured in Jenkins

Token-based authentication

Maven Sonar Plugin execution

Quality Gate enforcement

Build fails if Quality Gate fails

Result:

SonarQube Quality Gate → PASSED ✅

🌍 Deployment Details

WAR file generated using Maven

Artifact copied to:

<TOMCAT_HOME>/webapps/


Tomcat auto-deploys application

Application accessible via browser:

http://localhost:8080/webapp

⚠️ Real Problems Faced (and Solved)

This project intentionally documents real struggles, because real DevOps is about debugging.

🔴 Jenkins & Maven Issues

Incorrect Maven tool name (Maven3 vs maven3)

Java version mismatch with Jenkins

Jenkins service failing to start

Understanding Jenkins workspace structure

🔴 SonarQube Challenges

SonarQube server not running

Port 9000 connectivity issues

Missing authentication token

Not authorized errors

Quality Gate failures

Understanding Sonar logs vs Jenkins logs

🔴 Pipeline Debugging

Misunderstanding artifact location

WAR file not found in expected path

Windows path escaping issues

Jenkins running from C:\ProgramData

Tomcat installed on D:\ drive

Correcting absolute paths in pipeline

🔴 Deployment Problems

Wrong Tomcat webapps path

Copy command failures

Verifying deployment manually

Confirming app availability via browser

Every issue was debugged using:

Jenkins Console Output

Manual workspace inspection

SonarQube UI & logs

Incremental pipeline testing

📚 Key Learnings from This Project

✅ How real Jenkins Pipelines work

✅ Why freestyle jobs are not used in companies

✅ How to read and debug Jenkins console output

✅ How Jenkins manages workspaces

✅ How SonarQube integrates with Jenkins

✅ Importance of Quality Gates

✅ How real CI/CD pipelines fail — and recover

✅ How artifacts move from build → deploy

✅ Why DevOps is more about problem-solving than tools

🧠 Real-World Takeaway

CI/CD is not about tools working perfectly.
It’s about understanding what breaks — and fixing it.

This project mirrors real company scenarios, not tutorial-only success paths.

🚀 Future Improvements

Dockerize the application

Deploy using Docker containers

Add rollback strategy

Integrate Nexus/Artifactory

Add Slack or Email notifications

Introduce Blue-Green deployments

Infrastructure as Code (Terraform)

👨‍💻
Built with real effort, real failures, and real learning.
