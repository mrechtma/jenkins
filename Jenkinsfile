pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    def customImage = docker.build("my-custom-image:${env.BUILD_NUMBER}", "-f Dockerfile .")
                    customImage.push()
                }
            }
        }
    }
}
