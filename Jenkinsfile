pipeline{

	agent any

		stages{

			stage('Checkout'){

					steps{

						git branch: "main", url: 'https://github.com/sriramaleti9238/g1-config-service.git'

						}

					}

			stage('Build'){

					steps{

						sh 'chmod a+x mvnw'

						sh './mvnw clean package -DskipTests=true'

						}

					post{

						always{

							archiveArtifacts 'target/*.jar'

							}

						}

				}

			stage(DockerBuild) {

						steps {

							sh 'docker build -t sriramaleti9238/g1-config-service:latest .'

							}

						}

			stage('Login') {

					steps {

						sh 'echo As@13042000 | docker login -u sriramaleti9238 --password-stdin'

						}

					}

			stage('Push') {

					steps {

						sh 'docker push sriramaleti9238/g1-config-service'

						}
	
					}

				}

		post {

			always {

				sh 'docker logout'

				}

			}

}