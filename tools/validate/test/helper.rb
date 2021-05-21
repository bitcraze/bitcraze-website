FIXTURES_DIR = 'tools/validate/test/fixtures'

# The HTML proofer is possibly not written for what I want to do, at least it needs some tweaking to
# be useful. This function captures stderr to reduce the noise and rescues system exit since the proofer
# is calling exit when a test fails(!)
def proofer_protector(*)
  original_stderr = $stderr
  original_stdout = $stdout
  $stderr = fake_err = StringIO.new
  $stdout = fake_out = StringIO.new unless ENV['NOISE']
  begin
    yield
  rescue RuntimeError, SystemExit
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

  proofer_protector { proofer.run }

  proofer
end
