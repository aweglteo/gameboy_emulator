module GameboyEmulator
  class Cartridge
    # This class is cartiridge parser
    
    def initialize(rom_file)
      binary = File.binread(rom_file).bytes
    end

    def parse_rom
      @title = binary[0x134..0x13E].collect {|c| c.chr}.join
      @is_cgb = (binary[0x143] == 0xc0 || binary[0x143] == 0x80)
      @type = binary[0x0147]
    end

  end
end
