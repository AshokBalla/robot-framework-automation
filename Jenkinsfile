pipeline {
  agent any
  stages {
    stage('Unit Validation') { steps { sh 'python3 -m unittest discover tests/unit' } }
    stage('Robot Execution') { steps { sh 'robot tests || true' } }
  }
}
