def label = "mypod-${UUID.randomUUID().toString()}"
podTemplate(label: label, containers: [
    containerTemplate(name: 'ruby-alpine', image: 'ruby:2.4.1-alpine', ttyEnabled: true, command: 'cat')]) {
    node(label) {
        container('ruby-alpine'){
            
            stage('Download Code') {
                checkout scm
            }
            
            stage('Build') {
                sh 'apk --update add make build-base'
                sh 'ls'
                sh 'gem install bundler && bundle install'
            }
            
            stage('Unit Tests') {
                sh 'rspec tests/unit_tests.rb'
            }
            
            stage('API Tests') {
                sh 'rspec tests/api_tests.rb'
            }

            stage('Package Application') {
                archiveArtifacts '.'
            }
        }
    }
}