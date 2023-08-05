

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
                sh 'terraform plan' 
            }
        }
//Manual apply job

//Manual destroy job
  }
}
