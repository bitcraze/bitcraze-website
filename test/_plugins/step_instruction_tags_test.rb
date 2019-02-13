require 'jekyll'
require 'test/testbase'

require 'src/_plugins/step_instruction_tags'

class TestStepInstructionTags < Testbase

  def setup
    @converter_mock = MiniTest::Mock.new()

    @site_mock = MiniTest::Mock.new()
    @site_mock.expect(:find_converter_instance, @converter_mock, [Jekyll::Converters::Markdown])
  end

  def test_that_intro_is_rendered
    # Fixture
    Jekyll::StepInstruction::Intro.reset_id_counter
    @converter_mock.expect(:convert, 'converted md', ['md'])

    tag = '{% si_intro My title %}md{% endsi_intro %}'

    expected = '<div class="step-instruction-intro"><h2 id="intro1">My title<a class ="anchor-link" href="#intro1"><i class="fa fa-link"></i></a></h2>converted md</div>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end


  def test_that_intro_is_rendered_when_body_is_empty
    # Fixture
    Jekyll::StepInstruction::Intro.reset_id_counter
    @converter_mock.expect(:convert, 'converted md', [''])

    tag = '{% si_intro My title %}{% endsi_intro %}'

    expected = '<div class="step-instruction-intro"><h2 id="intro1">My title<a class ="anchor-link" href="#intro1"><i class="fa fa-link"></i></a></h2>converted md</div>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end


  def test_that_intro_is_rendered_with_specific_id
    # Fixture
    Jekyll::StepInstruction::Intro.reset_id_counter
    @converter_mock.expect(:convert, 'converted md', ['md'])

    tag = '{% si_intro My title; my-id %}md{% endsi_intro %}'

    expected = '<div class="step-instruction-intro"><h2 id="my-id">My title<a class ="anchor-link" href="#my-id"><i class="fa fa-link"></i></a></h2>converted md</div>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end


  def test_that_step_is_rendered
    # Fixture
    Jekyll::StepInstruction::Intro.reset_id_counter
    @converter_mock.expect(:convert, 'converted md', ['md'])

    tag = '{% si_step My title %}md{% endsi_step %}'

    expected = '<div class="step-instruction-info-step"><h3 id="infostep1">My title<a class ="anchor-link" href="#infostep1"><i class="fa fa-link"></i></a></h3>converted md</div>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end


  def test_that_step_is_rendered_with_specific_id
    # Fixture
    Jekyll::StepInstruction::Intro.reset_id_counter
    @converter_mock.expect(:convert, 'converted md', ['md'])

    tag = '{% si_step My title; my-id %}md{% endsi_step %}'

    expected = '<div class="step-instruction-info-step"><h3 id="my-id">My title<a class ="anchor-link" href="#my-id"><i class="fa fa-link"></i></a></h3>converted md</div>'

    # Test
    actual = Liquid::Template.parse(tag).render(nil, registers: {site: @site_mock})

    # Assert
    assert_html(expected, actual)
  end
end
