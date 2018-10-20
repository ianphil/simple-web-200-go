#!/usr/bin/env groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sparseCheckout()
                echo 'Building'
                sh 'ls -all'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying'
                input {
                    message "Should we continue?"
                    ok "Yes, we should."
                    submitter "iphilpot,kottofy"
                    parameters {
                        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
                    }
                }
                echo "Hello, ${PERSON}, nice to meet you."
            }
        }
    }
}

def sparseCheckout() {
  checkout scm: [
    $class: 'GitSCM', 
    branches: [[name: '**']], 
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
  ]
}

// node {
//   checkout([
//     $class: 'GitSCM', 
//     branches: [[name: '*/master', name:'*/small']], 
//     doGenerateSubmoduleConfigurations: false, 
//     extensions: [[
//       $class: 'SparseCheckoutPaths', 
//       sparseCheckoutPaths: [[
//         path: 'sample'
//       ]]
//     ]], 
//       submoduleCfg: [], 
//       userRemoteConfigs: [[
//         credentialsId: 'JenkinsSSH', 
//         url: 'git@github.com:iphilpot/simple-web-200-go.git'
//       ]]
//   ])
//   stage('Example') {
//       if (env.BRANCH_NAME == 'master') {
//           echo 'I only execute on the master branch'
//       } else {
//           echo 'I execute elsewhere'
//           // sh 'ls -all'
//           // sleep(time:5,unit:"SECONDS")
//           // error(message:'Fail this build')

//           // golang:1.11
//           // docker.image('golang:1.11').withRun() { c ->
//           //     sh 'go version'
//           // }

//           docker.image('golang:1.11').inside {
//             sh 'go version'
//             sh 'ls -all sample/'
//         }

//         withCredentials([azureServicePrincipal('ianphil')]) {
//             docker.image('microsoft/azure-cli').inside {
//               sh '''
//                 az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID
//                 az account set -s $AZURE_SUBSCRIPTION_ID
//               '''
//             }
//         }
//       }
//   }
// }
