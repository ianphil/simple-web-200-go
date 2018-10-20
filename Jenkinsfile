pipeline {
  agent any
  stages {
    stage('Build') {
      agent {
        docker {
          image 'golang:1.11'
        }
      }
      // Again and
      steps {
        sh 'echo build file'
      }
    }
  }
}
