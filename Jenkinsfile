node (label: 'agent1') {
     def app
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

// node {
//      def app 
//      stage('clone repository') {
//       checkout scm  
//     }
//      stage('Build docker Image'){
//       app = docker.build("mosher55/node-app")
//     }
//      stage('Test Image'){
//        app.inside {
//          sh 'echo "TEST PASSED"'
//       }  
    
//      stage('Push Image'){
//        docker.withRegistry('https://registry.hub.docker.com', 'dockerHub')           
//        app.push("${env.BUILD_NUMBER}")            
//        app.push("latest")   
//      }
          
//      }
