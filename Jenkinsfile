

pipeline {
  agent any
  
  stages {
    
    stage('Infrastructure automation') {

      steps {
          sh 'terraform init'
          sh 'terraform fmt'
          sh 'terraform validate'
          sh 'terraform plan'
  }
}


//Manual apply job

//Manual destroy job
  }
}
