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
                    sh 'cat plan.txt'
                }
            }
        }

        
        stage('Approval') {
            steps {
                
                    input message: 'Approve the changes?', ok: 'Apply'
                
            }
        }

        stage('Terraform Apply') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }
        stage('Destroy Approval') {
    input {
        message "Do you want to destroy the infrastructure?"
        ok "Yes, destroy"
    }
}

stage('Terraform Destroy') {
    when {
        expression { return true }
    }
    dir("${TF_WORKDIR}") {
        sh '''
            terraform init
            terraform destroy -auto-approve
        '''
    }
}
    }
}
