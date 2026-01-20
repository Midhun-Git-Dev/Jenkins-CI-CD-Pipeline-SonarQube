pipeline {
    agent any

    tools {
        maven 'maven3'   // EXACT name from Global Tool Configuration
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
                echo 'Building Maven project...'
                bat 'mvn clean package'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                echo 'Running SonarQube analysis...'
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

        stage('Deploy to Staging') {
            steps {
                echo 'Deploying to Staging Tomcat...'
                bat '''
                dir webapp\\target
                copy /Y webapp\\target\\*.war C:\\tomcat-staging\\webapps\\
                '''
            }
        }

        stage('Deploy to Production') {
            steps {
                input message: 'Approve deployment to PRODUCTION?', ok: 'Deploy'
                echo 'Deploying to Production Tomcat...'
                bat '''
                copy /Y webapp\\target\\*.war C:\\tomcat-prod\\webapps\\
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
