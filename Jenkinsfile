pipeline {
    
    agent any

    parameters {
        choice(name: 'ENVIRONMENT', choices: ['dev', 'prod'], description: 'Select the environment to deploy to')
    }

    
    environment {
        AWS_CREDENTIALS = credentials('aws-jenkins-demo')
    }
    
    
    stages {

        stage('Terraform Init') {
            steps {
                script {
                    if (params.ENVIRONMENT == 'dev') {
                        sh 'terraform init '
                    } else if (params.ENVIRONMENT == 'prod') {
                        sh 'terraform init '
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
