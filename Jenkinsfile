pipeline {
    agent any

    tools {
        maven 'maven3'
    }

    environment {
        SONARQUBE_ENV = 'sonarqube-server'
    }

    stages {

        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Build & Package') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv("${SONARQUBE_ENV}") {
                    bat '''
                    mvn -pl webapp -am verify ^
                      org.sonarsource.scanner.maven:sonar-maven-plugin:3.10.0.2594:sonar ^
                      -Dsonar.projectKey=maven-project ^
                      -Dsonar.projectName=maven-project
                    '''
                }
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                echo 'Deploying WAR to Tomcat...'
                bat '''
                dir webapp\\target
                copy /Y webapp\\target\\*.war ^
                "C:\\Users\\user\\Downloads\\apache-tomcat-9.0.65-windows-x64\\Tomcat-9\\webapps\\"
                '''
            }
        }
    }

    post {
        success {
            echo 'CI/CD Pipeline completed successfully!'
            slackSend(
                channel: '#jenkins-builds',
                color: 'good',
                message: "✅ SUCCESS: ${env.JOB_NAME} #${env.BUILD_NUMBER}\nSonarQube: PASSED\nURL: ${env.BUILD_URL}"
            )
        }

        failure {
            echo 'Pipeline failed!'
            slackSend(
                channel: '#jenkins-builds',
                color: 'danger',
                message: "❌ FAILED: ${env.JOB_NAME} #${env.BUILD_NUMBER}\nCheck logs: ${env.BUILD_URL}"
            )
        }
    }
}
