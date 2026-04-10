pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = 'nidhirai1105/docker_jenkins_java'
        IMAGE_TAG = 'latest'
    }
    
    stages{
	stage('Checkout'){
		steps {
		   git branch: 'main',
		   url: "https://github.com/Nidhirai05/jenkins_docker_java.git"
                 }
         }

	stage('Docker Build') {
			steps {
			   script {
				if (fileExists('Dockerfile')) {
				   sh "docker build -t ${env.DOCKER_IMAGE_NAME} ."
				}
				else {
				   error "Dockerfile not found in the workspace. Please create one for your python application"
				}
			   }
			}
	}
	stage('Docker Run (Optional)') {
		steps {
		   sh "docker run --rm ${env.DOCKER_IMAGE_NAME}"
		}
	}
	
}

post {
	success {
	  echo "Success"
	}
	failure {
	   echo "Failure"
	}
}

}
