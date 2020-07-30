pipeline {
    agent any
    
    
  
    stages {
        stage ('Compile') {

            steps {
                withMaven(maven : 'maven_3_5_0') {
              //      sh 'mvn clean package'
                    sh 'mvn clean compile'
                }
            }
        }
        
          
        stage ('Package') {

            steps {
                withMaven(maven : 'maven_3_5_0') {
              //      sh 'mvn clean package'
                    sh 'mvn  package'
                }
            }
        }
        
          

       // stage ('Testing Stage') {
        //    steps {
        //        withMaven(maven : 'maven_3_5_0') {
        //            sh 'mvn test'
        //        }
        //    }
        //}

 
     stage('Deployment in remote Hosts') {
      steps {
          sh '''
          PWD=`pwd`
         ansible-playbook -i $PWD/hosts $PWD/ansible.yaml -u root
          '''
      }
    }
    
   
    }
    //post {
    //   always {
            //archiveArtifacts artifacts: 'build/libs/**/*.jar', fingerprint: true
           //junit 'target/surefire-reports/*.xml'
           //junit '*.xml'
      //     jacoco(
      //         execPattern: 'target/*.exec',
      //classPattern: 'target/classes',
      //sourcePattern: 'src/main/java',
      //exclusionPattern: 'src/test*'
      //-DmaximumBranchCoverage: '70',
      //-DmaximumClassCoverage: '70',
      //-DmaximumComplexityCoverage: '70',
      //-DmaximumInstructionCoverage: '100',
      //-DmaximumLineCoverage: '70',
      //-DmaximumMethodCoverage: '70',
      //-DrunAlways: true
               //changeBuildStatus: true,
    //minimumInstructionCoverage: '0', maximumInstructionCoverage: '100', minimumMethodCoverage: '0', maximumMethodCoverage: '100'
    //       )
   //     }
  // } 

}
