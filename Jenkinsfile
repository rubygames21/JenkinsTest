pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        script {
          def imageName = 'mon-image-docker:latest'
          def containerName = 'mon-container'
          
          // Clone the repository
          checkout scm
          
          // Build the Docker image
          sh "docker build -t ${imageName} ."
          
          // Stop and remove the existing container (if any)
          sh "docker stop ${containerName} || true"
          sh "docker rm ${containerName} || true"
          
          // Run the Docker container
          sh "docker run -t -d --name ${containerName} ${imageName}"
        }
      }
    }
  }
}
