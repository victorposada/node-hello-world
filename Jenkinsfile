pipeline {
    agent {
        kubernetes {
            label 'node'
            defaultContainer 'node'
        }
    }
    environment {
        GH_TOKEN    = credentials('github-token')
        GH_USER     = "victorposada"
        GH_TEST     = credentials('test')
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
                container('kaniko') {
                    sh 'mkdir -p /kaniko/.docker'
                    sh '''
                        cat <<EOF > /kaniko/.docker/config.json
                        {
                            "auths": {
                                "ghcr.io": {
                                    "username": "$GH_USER",
                                    "password": "$GH_TEST"
                                }
                            }
                        }
                        EOF
                    '''
                    sh '''
                        /kaniko/executor --context=dir://. --dockerfile=Dockerfile \
                                        --destination=ghcr.io/victorposada/node-hello-world/app:latest    
                    '''
                }
            }
        }
    }
}