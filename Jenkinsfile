pipeline {
    agent {
        kubernetes {
            label 'node'
            defaultContainer 'node'
        }
    }
    environment {
        GH_TOKEN    = credentials('github-token')
        REGISTRY    = 'ghcr.io'
    }
    stages {
        stage('Checkout') {
            steps {
                script {
                    sh 'git config --global --add safe.directory "/home/jenkins/agent/workspace/node-hello-world_main"'
                }
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Run Tests') {
            steps {
                // Add test commands here if needed
            }
        }
        stage('Release') {
            steps {
                sh 'npx semantic-release'
            }
        }
        stage('Build and Push Image') {
            steps {
                container('buildah') {
                    sh '''
                        echo $GH_TOKEN | buildah login --username victorposada --password-stdin $REGISTRY
                        buildah bud --format=docker --no-cache -t $REGISTRY/victorposada/node-hello-world/web:$IMAGE_TAG .
                        buildah push $REGISTRY/victorposada/node-hello-world/web:$IMAGE_TAG
                    '''
                }
            }
        }
    }
}
