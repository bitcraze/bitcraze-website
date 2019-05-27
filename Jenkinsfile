{ ->
    stage('Validate') {
      node {
        tools.tb(args: "build")
      }
    }
    stage('Release') {
      node {
        // Set a tag in git
        tools.tagForRelease()
      }
    }
}
