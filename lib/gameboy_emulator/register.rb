module GameboyEmulator
  class Register
    attr_reader :a, :b, :c, :d, :e, :f, :h, :l

    def initialize
      @a = @b = @c = @d = @e = @f = @h = @l = 0x00
      @pc = 0x0100
      @sp = 0x0000
    end

    def read_pc
      current_pc = @pc
      @pc += 0x01
      return current_pc
    end

  end
end
