pipeline {
    agent any   

    environment {
        TF_WORKDIR = "environments/${env.BRANCH_NAME}"
    }
    
    stages {

        stage('Checkout') {
             steps {
                checkout scm
            } 
        }

        stage('Terraform Init') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform plan -out=tfplan'
                    sh 'terraform show -no-color tfplan > plan.txt'
                    cat plan.txt
                }
            }
        }

        
        stage('Approval') {
            steps {
                
                    input message: 'Check plan.txt in artifacts. Proceed with apply?', ok: 'Apply'
                
            }
        }

        stage('Terraform Apply') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }
    }
}
