module GameboyEmulator
  class MMU
    # MemoryMapAddress
    OAM = 0xfe00
    JOYPADIO = 0xff00
    SBIO = 0xff01
    SCIO = 0xff02
    DIVIO = 0xff04
    TIMAIO = 0xff05
    TMAIO = 0xff06


    def initialize(cartiridge)
      @cartiridge = cartiridge
    end

    # Read 1 byte from memory
    def fetch_memory(address)
      # カートリッジのアドレス空間から取得
      if address < 0x8000
        @cartridge[address]
      elsif 0x8000 <= address && 
      end
    end
  end
end
