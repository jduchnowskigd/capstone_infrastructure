

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
                 withAWS(credentials: 'capstone-access', region: 'eu-west-1') {
                    sh 'terraform plan' 
                 }
                
            }
        }
        stage('Provision resources') {
            steps {
                input message: 'Do you want to continue?'
                sh 'terraform apply -auto-approve'
            }
        }

        stage("Destroy resources") {
            steps {
                input message: 'Do you want to continue?'
                sh 'terraform destroy -auto-approve'
            }
        }
  }
}
