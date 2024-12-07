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
        stage('Test') {
            steps {
                sh 'sleep 200'
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