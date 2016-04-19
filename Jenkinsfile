{ ->
    tools = evaluate(new File('/tools/tools.groovy'))

    stage name: 'Release'
    node {
      // Set a tag in git
      tools.tagForRelease()
    }
}
