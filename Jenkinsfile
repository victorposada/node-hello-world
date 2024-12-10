pipeline {
    agent {
        kubernetes {
            label 'node'
            defaultContainer 'node'
        }
    }
    environment {
        GH_TOKEN    = credentials('github-token')
        REGISTRY = 'ghcr.io'
        IMAGE_NAME = 'your-image-name'
        IMAGE_TAG = 'latest'
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
        stage('Login to Registry') {
            steps {
                container('buildah'){
                sh '''
                echo $GH_TOKEN | buildah login --username victorposada --password-stdin ghcr.io
                buildah bud -t ghcr.io/victorposada/node-hello-world:$IMAGE_TAG .
                buildah push ghcr.io/victorposada/node-hello-world:$IMAGE_TAG
                '''
                }

            }
        }
    }
}