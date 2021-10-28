
pipeline {
agent any

stages {

stage('SCM Checkout') {
        steps {
                checkout scm
          //  git 'https://github.com/akash64574/maven-hello-world'
}
}

stage('Build') {
steps {
         sh"/opt/maven/bin/mvn clean package -Dmaven.test.skip=true"
}
}
stage("build & SonarQube analysis") {
           
            steps {
              withSonarQubeEnv('sonar') {
                sh '/opt/maven/bin/mvn sonar:sonar'
              }
            }
          }
        stage("testing") {
                when {
                   branch 'QA'
                }
                steps {
                    sh 'echo hello' 
                }
        }
          
    }
}
