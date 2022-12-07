pipeline{
	agent none
	tools{
		jdk 'java8'
		maven 'MavenNov2022'
	}
	environment{
		BUILD_SERVER_IP='ec2-user@172.31.28.134'
	}
	stages{
		stage('compile'){
			agent {label 'linux_slave'}
			steps{
				script{
					echo "COMPILING THE CODE"
					sh 'mvn compile'
				}
			}
		}
		stage('UnitTest'){
			agent any
			steps{
				script{
					echo "Run the Unit Test case. thank you."
					sh 'mvn test'
				}
			}
			post{
				always{
					junit 'target/surefire-reports/*.xml'
				}
			}
		}
		stage('Package'){
			agent any
			steps{
				script{
					sshagent(['ssh-key']){
						echo "Package the code"
						sh "scp -o StrictHostKeyChecking=no server-script.sh ${BUILD_SERVER_IP}:/home/ec2-user"
						sh "ssh -o StrictHostKeyChecking=no ${BUILD_SERVER_IP} 'bash ~/server-script.sh'"
					}
				}
			}
		}
	}
}
