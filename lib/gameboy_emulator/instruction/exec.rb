module GameboyEmulator
  module Instruction
    module EXEC
      include 
      def exec_instruction(instruction)
        opecode = get_opecode(instruction)
        case instruction
        when :nop
        end
      end
    end
  end
end
