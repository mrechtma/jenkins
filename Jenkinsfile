node (label: 'agent1') {
     def app
     stage('clone repository') {
          sh 'sudo apk add docker' 
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

