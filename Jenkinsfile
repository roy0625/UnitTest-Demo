pipeline {
  agent {
    docker {
      args 'LANG=en_US.UTF-8'
      image 'ruby:2.4.0'
      
    }
  }

  environment {
    GITHUB_ORG = 'virtualjoy'
    GITHUB_REPO = 'SensestarLiveIOS'
  }

  stages {

  	//stage('Preparing') {
     //steps {
       //script {
         // 發通知到gitHub
         //githubNotify account: env.GITHUB_ORG, context: 'build', credentialsId: 'githubvjbot', description: 'pending...', gitApiUrl: '', repo: env.GITHUB_REPO, sha: env.GIT_COMMIT, status: 'PENDING', targetUrl: ''
         //githubNotify account: env.GITHUB_ORG, context: 'lint', credentialsId: 'githubvjbot', description: 'pending...', gitApiUrl: '', repo: env.GITHUB_REPO, sha: env.GIT_COMMIT, status: 'PENDING', targetUrl: ''
         //githubNotify account: env.GITHUB_ORG, context: 'report', credentialsId: 'githubvjbot', description: 'pending...', gitApiUrl: '', repo: env.GITHUB_REPO, sha: env.GIT_COMMIT, status: 'PENDING', targetUrl: ''
        //}
      //}
    //}
  
    stage('Test') {
      steps {
        script {
          try {
            //githubNotify account: env.GITHUB_ORG, context: 'build', credentialsId: 'githubvjbot', description: 'building...', gitApiUrl: '', repo: env.GITHUB_REPO, sha: env.GIT_COMMIT, status: 'PENDING', targetUrl: ''
            sh 'gem install fastlane'
            sh 'fastlane test'
            //githubNotify account: env.GITHUB_ORG, context: 'build', credentialsId: 'githubvjbot', description: 'build successfully', gitApiUrl: '', repo: env.GITHUB_REPO, sha: env.GIT_COMMIT, status: 'SUCCESS', targetUrl: ''
          }
          catch(Exception e) {
            //githubNotify account: env.GITHUB_ORG, context: 'build', credentialsId: 'githubvjbot', description: 'build failed', gitApiUrl: '', repo: env.GITHUB_REPO, sha: env.GIT_COMMIT, status: 'ERROR', targetUrl: ''
            error("Unit test stage FAILED") 
          } 
        }
      } 
    }

   	stage('Build') {
      steps {
      	script {
      		try {
      			//githubNotify account: env.GITHUB_ORG, context: 'build', credentialsId: 'githubvjbot', description: 'building...', gitApiUrl: '', repo: env.GITHUB_REPO, sha: env.GIT_COMMIT, status: 'PENDING', targetUrl: ''
            sh 'pod install'
            sh 'fastlane build'
           	//githubNotify account: env.GITHUB_ORG, context: 'build', credentialsId: 'githubvjbot', description: 'build successfully', gitApiUrl: '', repo: env.GITHUB_REPO, sha: env.GIT_COMMIT, status: 'SUCCESS', targetUrl: ''
      		}
      		catch(Exception e) {
      			//githubNotify account: env.GITHUB_ORG, context: 'build', credentialsId: 'githubvjbot', description: 'build failed', gitApiUrl: '', repo: env.GITHUB_REPO, sha: env.GIT_COMMIT, status: 'ERROR', targetUrl: ''
           	error("Build stage FAILED")	
      		}	
      	}
      }
    }

  }
}

