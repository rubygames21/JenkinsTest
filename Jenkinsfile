pipeline {
  agent any

  stages {
    stage('Build and Run') {
      steps {
        script {
          def imageName = 'sportier2002/testjenkins:latest'
          def containerName = 'my-jenkins-container'
          
          // Clone the repository
          checkout scm
          
          // Build the Docker image
          sh 'docker build -t ${imageName} .'
          
          // Stop and remove the existing container (if any)
          sh 'docker stop ${containerName} || true'
          sh 'docker rm ${containerName} || true'
          
          // Run the Docker container
          sh "docker run -d --name ${containerName} -p 8080:80 ${imageName}"
        }
      }
    }
  }
}
