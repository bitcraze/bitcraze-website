{ ->
    tools = evaluate(new File('/tools/tools.groovy'))

    stage name: 'Release'
    node {
      // Set a tag in git
      tag = tools.tagForRelease()

      // Trigger next build
      tools.triggerBuildOfWebDockerImage(tag)
    }
}
