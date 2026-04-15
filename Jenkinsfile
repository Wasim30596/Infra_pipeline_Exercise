pipeline{
    agent any 
    stages{

        stage('Checkout') {
            steps {
                checkout scm 
            }
        }   
        stage('Terraform Init'){
            steps{
                sh 'terraform init'
            }
        }
        stage('Terraform Plan'){
            steps{
                sh 'terraform plan -out=tfplan'
                sh 'terraform show -no-color tfplan > plan.txt'
                sh 'cat plan.txt'
            }
        }
        stage('Approval') {
            steps {
                
                    input message: 'Approve the changes?', ok: 'Apply'
                
            }
        }
        stage('Terraform Apply'){
            steps{
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
}