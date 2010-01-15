require 'ffi/packets/mac_addr'

module FFI::Packets
  class TokenRing 
    class Hdr < FFI::Struct
      include ::FFI::DRY::NetStructHelper

      dsl_layout do
        field  :ac,   :uint8,   :desc => 'access control'
        field  :fc,   :uint8,   :desc => 'frame control'
        struct :dst,  MacAddr,  :desc => 'destination address'
        struct :src,  MacAddr,  :desc => 'source address'
      end
    end

  end
end
