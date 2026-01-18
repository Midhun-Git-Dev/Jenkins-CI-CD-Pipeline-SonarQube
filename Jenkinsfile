pipeline {
    agent any

    tools {
        maven 'maven3'   // Make sure Maven is configured in Jenkins Global Tools
    }

    environment {
        SONARQUBE_ENV = 'sonarqube-server'   // Name used in Jenkins config
    }

    stages {

        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Build & Package') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv("${SONARQUBE_ENV}") {
                    sh 'mvn sonar:sonar'
                }
            }
        }

        stage('Deploy to Staging') {
            steps {
                echo 'Deploying to Staging Tomcat...'
                sh '''
                  cp target/*.war /opt/tomcat-staging/webapps/
                '''
            }
        }

        stage('Deploy to Production') {
            steps {
                input message: 'Approve deployment to PRODUCTION?', ok: 'Deploy'
                echo 'Deploying to Production Tomcat...'
                sh '''
                  cp target/*.war /opt/tomcat-prod/webapps/
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

