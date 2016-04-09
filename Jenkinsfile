{ ->
    tools = evaluate(new File('/tools/tools.groovy'))

    stage name: 'Release'
    node {
      // Set a tag in git
      tag = tools.tagForRelease()

      // Trigger next build
      build job: 'Release-docker-int-web', parameters: [[$class: 'StringParameterValue', name: 'BITCRAZE_WEB_TAG', value: tag]], wait: false
    }
}
