pipeline{
	agent any
	tools{
		jdk 'java8'
		maven 'MavenNov2022'
	}
	stages{
		stage('compile'){
			steps{
				script{
					echo "COMPILING THE CODE"
					sh 'mvn compile'
				}
			}
		}
		stage('UnitTest'){
			steps{
				script{
					echo "Run the Unit Test case. thank you."
					sh 'mvn test'
				}
			}
		}
		stage('Package'){
			steps{
				script{
					echo "Package the code"
					sh 'mvn package'
				}
			}
		}
	}
}
