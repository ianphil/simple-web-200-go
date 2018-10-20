pipeline {
  agent any
  stages {
    stage('Build') {
      agent {
        docker {
          image 'golang:1.11'
        }
      }
      // This is new
      steps {
        sh 'echo build file'
      }
    }
  }
}