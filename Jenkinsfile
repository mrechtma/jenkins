node (label: 'agent1') {

    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {

        def customImage = docker.build("mosher55/test:dockerwebapp")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
