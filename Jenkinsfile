pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
            }
        }

        stage("Hello DevOps") {
            step {
                echo 'Hello Jenkins!'
                echo 'Hello DevOps Pipeline!'
            }
        }

        stage('Environment Info') {
            steps {
                sh 'uname -a'
                sh 'java -version'
            }
        }
    }

    post {
        success {
            echo 'Pipeline finished successfully!'
        }
        failure {
            echo 'Pipeline FAILED'
        }
    }
}
  
