pipeline {
    agent any

    tools {
        maven 'maven3'   // must EXACTLY match Global Tool name
    }

    environment {
        SONARQUBE_ENV = 'sonarqube-server'   // Jenkins → Configure System → SonarQube name
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
                    mvn clean verify ^
                      org.sonarsource.scanner.maven:sonar-maven-plugin:3.10.0.2594:sonar ^
                      -Dsonar.projectKey=maven-project ^
                      -Dsonar.projectName=maven-project
                    '''
                }
            }
        }

        stage('Deploy to Staging') {
            steps {
                echo 'Deploying to Staging Tomcat...'
                bat '''
                copy target\\*.war C:\\tomcat-staging\\webapps\\
                '''
            }
        }

        stage('Deploy to Production') {
            steps {
                input message: 'Approve deployment to PRODUCTION?', ok: 'Deploy'
                echo 'Deploying to Production Tomcat...'
                bat '''
                copy target\\*.war C:\\tomcat-prod\\webapps\\
                '''
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
