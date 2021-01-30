module GameboyEmulator
  module Opecode
    def get_opecode(instruction)
      case instruction
      when 0x00
        return :nop
      when 0x01
        return :ld_bc_d16
      when 0x02
        return :inc_bc_a
      when 0x03
        return :inc_bc
      when 0x04
        return :inc_b
      end
    end
  end
end
