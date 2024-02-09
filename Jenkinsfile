pipeline {
    agent none
    stages {
        stage("Build & SonarQube Analysis") {
            agent any
            steps {
                script {
                    sh 'chmod +x mvnw' // Donner les autorisations d'exécution au fichier mvnw
                    environment {
                        scannerHome = tool 'SonarQube Scanner' // the name you have given the Sonar Scanner (in Global Tool Configuration)
                    }
                    withSonarQubeEnv('Sonar_Qube') {
                        //sh "${scannerHome}/bin/sonar-scanner -X"
                        sh './mvnw sonar:sonar'
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
