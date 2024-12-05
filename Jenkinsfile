pipeline {
    agent {
        kubernetes {
            label 'node'
            defaultContainer 'node'
        }
    }
    stages {
        stage('Test') {
            steps {
                sh '''
                # Configure your test steps here (checkout, npm install, tests etc)
                npm install
                npm test
                '''
            }
        }
        stage('Release') {
            tools {
                nodejs "node LTS"
            }
            steps {
                sh '''
                # Run optional required steps before releasing
                npx semantic-release
                '''
            }
        }
    }
}