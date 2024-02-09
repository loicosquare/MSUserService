pipeline {
    agent none
    stages {
        stage("Build & SonarQube Analysis") {
            agent any
            steps {
                withSonarQubeEnv('Sonar_Qube') {
                    sh './mvnw clean package sonar:sonar'
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
