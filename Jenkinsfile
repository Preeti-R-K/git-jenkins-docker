pipeline{
    agent any
    stages{
        stage('GIT clone repo'){
            steps {
               //clone repo
               //git 'https://github.com/faldesaivishvaja/git-jenkins-docker.git'
				git branch: 'main', url: 'https://github.com/faldesaivishvaja/git-jenkins-docker.git'
                }
		}
		stage('Docker build and publish nginx image'){
		    steps{
				bat 'docker build -t vishvajafaldesai/nginx .'
		    }
		}
		stage('Running docker conatiners'){
		    steps{
				bat 'docker run --name nginx -p 3000:80 vishvajafaldesai/nginx'
		    }
		}
    		}
		post{
	           always{
	                bat 'docker rm -f nginx'
	                }
	            }
}
