{ ->
    stage('Validate') {
      node {
        tools.tb("build")
      }
    }
    stage('Release') {
      node {
        // Set a tag in git
        tools.tagForRelease()
      }
    }
}
