require 'test/unit'

$:.unshift("#{File.expand_path(File.dirname(__FILE__))}/../lib")
require 'onyx/config_loader'

TEST_DATA_DIR = "#{File.expand_path(File.dirname(__FILE__))}/data"

class ConfigLoaderTest < Test::Unit::TestCase
  def test_read_config
    config = Onyx::ConfigLoader.load_file("#{TEST_DATA_DIR}/config.txt")
    assert('testuser' == config.get(:user))
    assert('testpassword' == config.get(:password))
  end
end
