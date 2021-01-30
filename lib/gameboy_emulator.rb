require "gameboy_emulator/version"
require "gameboy_emulator/cli"
require "gameboy_emulator/cpu"
require "gameboy_emulator/cartridge"
require "gameboy_emulator/launcher"


module GameboyEmulator
  class Error < StandardError; end
  def self.logger
    @logger ||= GameboyEmulator::Logger.new(STDOUT)
  end
end
