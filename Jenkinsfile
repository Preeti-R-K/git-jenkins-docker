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
				script{
		        dockerImage = docker.build("vishvajafaldesai/dockerisednginx")
				}
		    }
		}
    }
}
