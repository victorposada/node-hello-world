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
                checkout scm
                sh 'git rev-parse --is-inside-work-tree'
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
    }
}