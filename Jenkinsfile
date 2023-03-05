node (label: 'agent1') {
     def app
     tools {
    // a bit ugly because there is no `@Symbol` annotation for the DockerTool
    // see the discussion about this in PR 77 and PR 52: 
    // https://github.com/jenkinsci/docker-commons-plugin/pull/77#discussion_r280910822
    // https://github.com/jenkinsci/docker-commons-plugin/pull/52
    'org.jenkinsci.plugins.docker.commons.tools.DockerTool' '18.09'
  }
  environment {
    DOCKER_CERT_PATH = credentials('id-for-a-docker-cred')
  }
     stage('clone repository') {
          checkout scm  
    }
     stage('Build docker Image'){
      app = docker.build("mosher55/node-app")
    }
          stage('Test Image'){
       app.inside {
            sh 'echo "TEST PASSED"'}
      }  
     stage('Build docker Image'){
       docker.withRegistry('https://registry.hub.docker.com', 'dockerHub')           
       app.push("${env.BUILD_NUMBER}")            
       app.push("latest")   
     }
}

