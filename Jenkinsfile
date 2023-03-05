node {

    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {

        def customImage = docker.build("mosher55/dockerwebapp")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
