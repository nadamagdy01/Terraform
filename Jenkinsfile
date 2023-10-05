pipeline {

    agent any

    parameters {
        choice(name: 'ENVIRONMENT', choices: ['dev', 'prod'], description: 'Select the environment to deploy to')
    }

    stages {
        
                stage('AWS Verification') {
            steps {
                withcredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialId: 'aws-jenkins-demo',
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]){
                    sh "aws s3 ls"
                }
        }
        }

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
