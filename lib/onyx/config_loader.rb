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

    def write_file(path)
      File.open(path, 'w') do |f|
        @config.each_key do |key|
          f.write "set :#{key}, '#{@config[key]}'\n"
        end
      end
    end

    def get(key)
      return @config[key]
    end

    def set(key, value)
      @config[key] = value
    end
  end
end
