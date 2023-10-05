pipeline {
    agent any

    parameters {
        choice(name: 'ENVIRONMENT', choices: ['dev', 'prod'], description: 'Select the environment to deploy to')
    }

    stages {
        stage('Checkout') {
            steps {
                https://github.com/nadamagdy01/Terraform.git
                scm checkout: true
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    if (params.ENVIRONMENT == 'dev') {
                        sh 'terraform init -backend-config=backend-dev.tfvars'
                    } else if (params.ENVIRONMENT == 'prod') {
                        sh 'terraform init -backend-config=backend-prod.tfvars'
                    } else {
                        error "Invalid environment parameter"
                    }
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    if (params.ENVIRONMENT == 'dev') {
                        sh 'terraform apply -var-file=dev.tfvars'
                    } else if (params.ENVIRONMENT == 'prod') {
                        sh 'terraform apply -var-file=prod.tfvars'
                    } else {
                        error "Invalid environment parameter"
                    }
                }
            }
        }
    }

    post {
        success {
            echo "Build was successful. Performing success-related tasks..."
        }
    }
}
