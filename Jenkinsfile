pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
      label 'slave_node'
    }
  }
  stages {
    stage("example stage") {
      steps {
        script {
          sh 'cat /etc/os-release'
          sh 'curl --version'
          sh 'echo Successfully compiled'
        }
      }
    }
  }
}
