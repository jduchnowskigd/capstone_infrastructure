

pipeline {
  agent any
  
  stages {
    
 stage('terraform init'){
            steps{
                sh '/usr/local/bin/terraform init' 
            }
        }
        stage('terraform validate'){
            steps{
                sh '/usr/local/bin/terraform validate' 
            }
        }
           stage('terraform plan'){
            steps{
                 withAWS(credentials: 'capstone-access', region: 'eu-west-1') {
                    sh '/usr/local/bin/terraform plan' 
                 }
                
            }
        }
        stage('Provision resources') {
            steps {
                input message: 'Do you want to continue?'
                sh '/usr/local/bin/terraform apply -auto-approve'
            }
        }

        stage("Destroy resources") {
            steps {
                input message: 'Do you want to continue?'
                sh '/usr/local/bin/terraform destroy -auto-approve'
            }
        }
  }
}
