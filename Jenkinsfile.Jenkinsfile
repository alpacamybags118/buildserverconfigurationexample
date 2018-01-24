node {
    stage 'Checkout'
        checkout scm

    stage 'Build Dockerfile'
        def customImage = docker.build("ansiblewin:${env.BUILD_ID}")

    stage 'Run playbook'
        customImage.inside {
            sh 'ansible-playbook -i hosts.txt main.ansible'
        }

}