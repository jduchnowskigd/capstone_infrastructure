

pipeline {
  agent any
  
  stages {
    
 stage('terraform init'){
            steps{
                sh 'terraform init' 
            }
        }
        stage('terraform validate'){
            steps{
                sh 'terraform validate' 
            }
        }
           stage('terraform plan'){
            steps{
                 withAWS(credentials: 'sam-jenkins-demo-credentials', region: 'us-west-2') {
                    sh 'terraform plan' 
                 }
                
            }
        }
//Manual apply job

//Manual destroy job
  }
}
