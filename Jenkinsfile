pipeline {
    agent {
        kubernetes {
            label 'node'
            defaultContainer 'node'
        }
    }
    environment {
        GH_TOKEN  = credentials('github-token')
    }
    stages {
        stage('Checkout') {
            steps {
                sh 'git config --global --add safe.directory /home/jenkins/agent/workspace/node-hello-world_main'
            }
        }
        stage('Test') {
            steps {
                sh 'npm install'
            }
        }
        stage('Release') {
            steps {
                sh '''
                # Run optional required steps before releasing
                npx semantic-release
                '''
            }
        }
        stage('Build docker image') {
            steps {
                container('kaniko'){
                    sh '''
                    /kaniko/executor --context=dir://. --dockerfile=Dockerfile --destination=ghcr.io/victorposada/node-hello-world:latest    
                    '''
                }
            }
        }
    }
}