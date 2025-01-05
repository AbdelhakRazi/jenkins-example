pipeline {
    agent { 
        node {
            label 'docker-agent-python'
            }
      }
	triggers {
		pollSCM '*/2 * * * *'
	}
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
		pip3 --version
                pip3 install  --break-system-packages fire		
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                echo "doing test stuff.."
		python3 hello.py
		python3 hello.py --name=Abdelhak
                '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....'
                sh '''
                echo "doing delivery stuff.."
                '''
            }
        }
    }
}
