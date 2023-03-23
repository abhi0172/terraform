
# Use parameterized project and define values for it 
pipeline {
    agent any

    stages {
        stage('GIT Pull') {
            steps {
              git branch: 'main', url: 'https://github.com/abhi0172/terraform.git'
          }
        }
        
        stage ("terraform init") {
            steps {
                sh ('terraform init') 
            }
        }
        
        stage ("terraform Action") {
            steps {
                echo "Terraform action is --> ${userinput}"
                sh ('terraform ${userinput} --auto-approve') 
           }
        }
    }
}
