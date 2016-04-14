FIXTURES_DIR = 'tools/validate/test/fixtures'

def capture_stderr(*)
  original_stderr = $stderr
  original_stdout = $stdout
  $stderr = fake_err = StringIO.new
  $stdout = fake_out = StringIO.new unless ENV['NOISE']
  begin
    yield
  rescue RuntimeError
  ensure
    $stderr = original_stderr
    $stdout = original_stdout unless ENV['NOISE']
  end
  fake_err.string
end

def make_proofer(file, options)
  options[:log_level] ||= :error
  options[:disable_external] = true
  HTMLProofer.check_file(file, options)
end

def run_proofer(file, options = {})
  proofer = make_proofer(file, options)

  capture_stderr { proofer.run }
  proofer
end
