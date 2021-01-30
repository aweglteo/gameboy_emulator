module GameboyEmulator
  class CPU
    attr_reader :a, :b, :c, :d, :e, :f, :h, :l

    def initialize(mmu)
      @mmu = mmu
      @register = Register.new

      @halted = false
      @timer = Timer.new
      @ime = false
    end
  
    # exec means 1 clock of cpu
    def exec
      bytecode = @mmu.fetch_memory(@register.pc)
    end

    def halted?
      @halted
    end

  end
end
