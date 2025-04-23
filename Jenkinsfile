pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
        TERRAFORM_PATH        = 'C:\\Terraform\\terraform.exe'
    }

    stages {
        stage('Terraform Init') {
            steps {
                bat "${env.TERRAFORM_PATH} init"
            }
        }
        stage('Terraform Plan') {
            steps {
                bat "${env.TERRAFORM_PATH} plan"
            }
        }
        stage('Terraform Apply') {
            steps {
                input 'Approve to Apply?'
                bat "${env.TERRAFORM_PATH} apply -auto-approve"
            }
        }
        stage('Terraform Destroy') {
            steps {
                input 'Approve to Destroy?'
                bat "${env.TERRAFORM_PATH} destroy -auto-approve"
            }
        }
    }
}
