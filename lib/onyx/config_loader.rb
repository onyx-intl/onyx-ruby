module Onyx
  class ConfigLoader
    def initialize
      @config = {}
    end

    def self.load_file(path)
      loader = ConfigLoader.new
      loader.instance_eval(IO.read(path))
      return loader
    end

    def get(key)
      return @config[key]
    end

    private

    def set(key, value)
      @config[key] = value
    end
  end
end
