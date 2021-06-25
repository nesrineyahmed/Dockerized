pipeline {
    agent {
        docker { image 'nesrineyahmed/node-git' }
    }

    stages {
        stage ("cloning") {
            steps{
                echo "cloning"
                sh "git clone https://github.com/contentful/the-example-app.nodejs.git"
            }
        }
        stage ("Install dependenciess"){
            steps{
                echo "installing dependencies"
                sh "cd /the-example-app.nodejs && npm install"
            }
        }
        stage ("Deploy"){
            steps{
                echo "start project"
                sh "cd /the-example-app.nodejs && npm run start:dev &"
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
