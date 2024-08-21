pipeline{
    agent any
    stages{
        stage('GIT clone repo'){
            steps {
             	git branch: 'main', url: 'https://github.com/Preeti-R-K/git-jenkins-docker.git'
                }
	}
	stage('Docker build nginx image'){
		    steps{
				bat 'docker build -t preetirk/nginx .'
		    }
		}
	stage('Running docker container'){
		    steps{
				bat 'docker run --name nginx -p 3000:80 preetirk/nginx'
		    }
		}
    }
}
