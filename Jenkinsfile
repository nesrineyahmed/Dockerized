pipeline {
    agent { dockerfile true }
    stages {
        stage ("Deploy"){
            steps{
                echo "start project"
                sh "cd the-example-app.nodejs && npm run start:dev &"
            }
        }
        stage ("Test"){
            steps{
                echo "verify"
                sh "curl http://localhost:3000"
            }
        }

    }

}
