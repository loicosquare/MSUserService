pipeline {
    agent none
    stages {
        stage("Build & SonarQube Analysis") {
            agent any
            steps {
                script {
                    sh 'chmod +x mvnw' // Donner les autorisations d'exécution au fichier mvnw
                    withSonarQubeEnv('Sonar_Qube') {
                        sh './mvnw clean package sonar:sonar'
                    }
                }
            }
        }
        stage("Quality Gate") {
            agent none
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    waitForQualityGate abortPipeline: true
                }
            }
        }
    }
}
