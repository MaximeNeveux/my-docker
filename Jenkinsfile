pipeline {
   agent any
   stages {
       stage('Build') {
           steps {
               sh """
                   docker build -t 'tncy2021mne' . > build.out
                   cat build.out
               """
           }
       }
       stage('Test') {
           steps {
               sh """
                   mkdir -p app-log
                   docker run --rm  -d -v app-log:/var/log/snake-basket: --name snake-basket tncy2021mne/snake-basket
                   echo "Container started"
                                      docker stop snake-basket
                                  """
                              }
                          }
                          stage('Deploy') {
                              steps {
                                  sh 'echo DEPLOY'
                              }
                          }
                      }
                   }
