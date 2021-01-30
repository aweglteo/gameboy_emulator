module GameboyEmulator
  class Launcher

    def initialize(rom_file)
      @rom = Cartridge.new(rom_file)
      binding.pry
    end

    def run
      puts "running emnulator ... "
    end

  end
end
