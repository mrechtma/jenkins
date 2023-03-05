node (label: 'agent1') {
     stage('clone repository') {
          checkout scm  
    }
          stage('Test Image'){
       app.inside {
         sh 'echo "TEST PASSED"'
      }  
     stage('Build docker Image'){
        docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {

        def customImage = docker.build("mosher55/node-app")

        /* Push the container to the custom Registry */
        customImage.push()
        }}
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
