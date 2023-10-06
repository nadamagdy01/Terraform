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
                        sh 'terraform force-unlock 40c048ab-855e-4788-aa0d-73b9d7d9b438'
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
                        sh 'terraform apply -var-file=dev.tfvars -auto-approve'

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
