node (label: 'agent1') {
    checkout scm
    script  "docker version"
    docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {

        def customImage = docker.build("mosher55/node-app")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
