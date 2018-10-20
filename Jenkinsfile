// pipeline {
//   agent any
//   stages {
//     stage('Build') {
//         steps {
//             checkout([
//               $class: 'GitSCM', 
//               branches: [[name: '*/master', name:'*/small']], 
//               doGenerateSubmoduleConfigurations: false, 
//               extensions: [[
//                 $class: 'SparseCheckoutPaths', 
//                 sparseCheckoutPaths: [[
//                   path: 'sample'
//                 ]]
//               ]], 
//                 submoduleCfg: [], 
//                 userRemoteConfigs: [[
//                   credentialsId: 'JenkinsSSH', 
//                   url: 'git@github.com:iphilpot/simple-web-200-go.git'
//                 ]]
//             ])
//           sh 'ls -all'
//         }
//     }
//     stage('Test') {
//       steps {
//         sh 'go version'
//       }
//     }
//   }
// }



node {
  checkout([
    $class: 'GitSCM', 
    branches: [[name: '*/master', name:'*/small']], 
    doGenerateSubmoduleConfigurations: false, 
    extensions: [[
      $class: 'SparseCheckoutPaths', 
      sparseCheckoutPaths: [[
        path: 'sample'
      ]]
    ]], 
      submoduleCfg: [], 
      userRemoteConfigs: [[
        credentialsId: 'JenkinsSSH', 
        url: 'git@github.com:iphilpot/simple-web-200-go.git'
      ]]
  ])
  stage('Example') {
      if (env.BRANCH_NAME == 'master') {
          echo 'I only execute on the master branch'
      } else {
          echo 'I execute elsewhere'
          sh 'ls -all'
          sleep(time:5,unit:"SECONDS")
          // error(message:'Fail this build')

          // golang:1.11
          docker.image('golang:1.11').withRun() { c ->
              sh 'go version'
          }
      }
  }
}
