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
			input{
				message "Select the version to continue:"
				ok "Version Selected"
				parameters{
					choice(name:'Version', choices:['1','2','3'])
				}
			}
			when{
				expression{
					params.executeTests == true
				}
			}
			steps{
				script{
					echo "Run the Unit Test case. thank you."
				}
			}
		}
		stage('Package'){
			when{
				expression{
					BRANCH_NAME == 'master' || BRANCH_NAME == 'QA'
				}
			}
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
