pipeline{
	agent any
	parameters{
		string(name:'ENV',defaultValue:'Test',description:'Env. to deploy')
		booleanParam(name:'executeTests', defaultValue:true, description:'Decide to run Test Case')
		choice(name:'APPVERSION',choices:['1.1','1.2','1.3'])
	}
	stages{
		stage('compile'){
			steps{
				script{
					echo "COMPILING THE CODE"
				}
			}
		}
		stage('UnitTest'){
			steps{
				script{
					echo "Run the Unit Test case. thank you."
				}
			}
		}
		stage('Package'){
			steps{
				script{
					echo "Package the code"
					echo "Deploy to env: ${params.ENV}"
					echo "Deploying the app version: ${params.APPVERSION}"
				}
			}
		}
	}
}
