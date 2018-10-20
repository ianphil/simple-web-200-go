#!/usr/bin/env groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying'
            }
        }
    }
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
