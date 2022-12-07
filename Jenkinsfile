pipeline{
	agent none
	tools{
		jdk 'java8'
		maven 'MavenNov2022'
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
					echo "Package the code"
					sh 'mvn package'
				}
			}
		}
	}
}
