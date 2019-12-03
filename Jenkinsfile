@Library('hub-jenkins-shared') _

pipeline {
  agent any
  environment {
    ECR = '223221345407.dkr.ecr.us-east-1.amazonaws.com'
  }
  options {
    timeout(time: 30, unit: 'MINUTES')
  }
  stages {
    stage('startup') {
      when { anyOf { branch 'master' } }
      steps {
        sh "echo hi"
      }
    }
    stage('build image') {
      when { anyOf { branch 'master' } }
      agent {
        dockerfile {
          reuseNode true
          dir 'images/docker'
          args "-v /var/run/docker.sock:/var/run/docker.sock"
        }
      }
      steps {
          sh "docker build -t ${env.ECR}/hubbot_temp:${env.GIT_COMMIT} -t ${env.ECR}/hubbot_temp:latest ."
      }
    }
    stage('push image') {
      when { anyOf { branch 'master' } }
      agent {
        dockerfile {
          reuseNode true
          dir 'images/aws-cli'
          args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
      }
      steps {
        sh "eval \$(aws ecr --region us-east-1 get-login | sed 's|https://||')"
        sh "docker push ${env.ECR}/hubbot_temp:latest"
        sh "docker push ${env.ECR}/hubbot_temp:${env.GIT_COMMIT}"
      }
    }
    stage('Deploy to Dev') {
      when { anyOf { branch 'master' } }
      options {
        timeout(time: 5, unit: 'MINUTES')
      }
      agent {
        docker {
          reuseNode true
          image 'esridc/kubeutils:latest'
        }
      }
      steps {
        script {
          kubecfg{} // creates active clusters' kubeconfig and downloads certs for them in the workspace kubeconfig
          deployApp { // sets kubecontext and deploys
            NAMESPACE = 'dev' // you cannot send the value from env var while calling a shared lib function
          }
        }
      }
    }
  }
  post {
    always {
      deleteDir()
    }
  }
}
