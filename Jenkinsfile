pipeline {
    agent any

    environment {
        IMAGE_NAME = 'gokul6gj/calculator'
        IMAGE_TAG  = 'latest'
    }

    stages {
        stage('Clone Source') {
            steps {
                git url: 'https://github.com/gokul6gj/calculator.git', branch: 'main'
            } 
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                    docker build -t $IMAGE_NAME:$IMAGE_TAG .
                '''
            }
        } 
       
        stage('Run Container (Test)') {
            steps {
                sh '''
                    docker stop test-site || true
                    docker rm test-site || true
                    docker image prune -f
                    docker ps -q --filter "publish=8000" | xargs -r docker stop

                    docker run -d --name test-site -p 8000:80 gokul6gj/calculator:latest
                   
                    
                     docker stop test-site 
                    docker rm test-site 
                  
                '''
            }
        }
    }

    post {
        always {
            sh 'docker image prune -f'
        }
    }
}
