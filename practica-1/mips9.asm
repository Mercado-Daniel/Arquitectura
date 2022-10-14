	.data
palabra:.word 0x10203040
octeto: .space 4
	.text
main: lb $s0, palabra($0)
      sb $s0, octeto+3($0)
      lb $s0, palabra+1($0)
      sb $s0, octeto+2($0)
      lb $s0, palabra+2($0)
      sb $s0, octeto+1($0)
      lb $s0, palabra+3($0)
      sb $s0, octeto($0)
      
	
	