pipeline {
    agent any   

    environment {
        TF_WORKDIR = "environments/${env.BRANCH_NAME}"
    }
    
    stages {

        stage('Checkout Code') {
            steps {
                git branch: "main", url: "https://github.com/Wasim30596/Infra_pipeline_Exercise.git"
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
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform apply'
                }
            }
        }
    }
}