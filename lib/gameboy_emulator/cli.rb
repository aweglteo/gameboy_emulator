require 'optparse'
require "pry"

module GameboyEmulator
  class CLI
    def initialize(argv)
      @argv = argv.dup
      setup_options

      begin
        args = @parser.parse(@argv)
      rescue OptionParser::InvalidOption => e
        GameboyEmulator.logger.log(e)
        exit 0
      end
    end
    
    def run
      launcher = GameboyEmulator::Launcher.new(@rom)
      launcher.run
    end

    private
    def setup_options
      @parser = OptionParser.new do |o|
        o.on "-v", "--version", "Print the version information" do
          puts "GameboyEmulator version is #{VERSION}"
          exit 0
        end

        o.on "-r [VALUE]", "--rom", "Designate to booting rom" do |arg|
          @rom = arg
        end

      end
    end
  end
end
