require 'jekyll'
require 'test/testbase'

require 'src/_plugins/step_instruction_tags'

class TestStepInstructionTags < Testbase

  def setup
    @converter_mock = Minitest::Mock.new()

    @site_mock = Minitest::Mock.new()
    @site_mock.expect(:find_converter_instance, @converter_mock, [Jekyll::Converters::Markdown])
  end

  def test_that_intro_is_rendered
    # Fixture
    @converter_mock.expect(:convert, 'converted md', ['md'])

    tag = '{% si_intro My title %}md{% endsi_intro %}'

    expected = '<div class="step-instruction-intro"><h2 id="my-title">My title</h2>converted md</div>'

    # Test
    actual = Liquid::Template.parse(tag).render!({'page' => {}}, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end


  def test_that_intro_is_rendered_when_body_is_empty
    # Fixture
    @converter_mock.expect(:convert, 'converted md', [''])

    tag = '{% si_intro My title %}{% endsi_intro %}'

    expected = '<div class="step-instruction-intro"><h2 id="my-title">My title</h2>converted md</div>'

    # Test
    actual = Liquid::Template.parse(tag).render!({'page' => {}}, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end


  def test_that_intro_is_rendered_with_specific_id
    # Fixture
    @converter_mock.expect(:convert, 'converted md', ['md'])

    tag = '{% si_intro My title; my-id %}md{% endsi_intro %}'

    expected = '<div class="step-instruction-intro"><h2 id="my-id">My title</h2>converted md</div>'

    # Test
    actual = Liquid::Template.parse(tag).render!({'page' => {}}, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end


  def test_that_step_is_rendered
    # Fixture
    @converter_mock.expect(:convert, 'converted md', ['md'])

    tag = '{% si_step My title %}md{% endsi_step %}'

    expected = '<div class="step-instruction-info-step"><h3 id="my-title">My title</h3>converted md</div>'

    # Test
    actual = Liquid::Template.parse(tag).render!({'page' => {}}, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end


  def test_that_step_is_rendered_with_specific_id
    # Fixture
    @converter_mock.expect(:convert, 'converted md', ['md'])

    tag = '{% si_step My title; my-id %}md{% endsi_step %}'

    expected = '<div class="step-instruction-info-step"><h3 id="my-id">My title</h3>converted md</div>'

    # Test
    actual = Liquid::Template.parse(tag).render({'page' => {}}, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end


  def test_that_duplicate_ids_raises
    # Fixture
    @converter_mock.expect(:convert, 'converted md', ['md'])
    @converter_mock.expect(:convert, 'converted md', ['bla'])
    @site_mock.expect(:find_converter_instance, @converter_mock, [Jekyll::Converters::Markdown])

    tags = '{% si_intro My title; my-id %}md{% endsi_intro %}{% si_step Other title; my-id %}bla{% endsi_step %}'

    # Test and assert
    context = {'page' => {}}
    assert_raises do
      Liquid::Template.parse(tags).render!(context, registers: {site: @site_mock})
    end
  end
end
