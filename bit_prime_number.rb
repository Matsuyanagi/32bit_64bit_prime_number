#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
#-----------------------------------------------------------------------------
#	指定ビット数の素数を大きい方から求める
#		ruby bit_prime_number.rb 31
#	
#	2017-04-22
#-----------------------------------------------------------------------------
require 'pp'
require 'fileutils'
require 'date'
require 'time'
require 'strscan'

require 'prime'

Encoding.default_external="utf-8"
#-----------------------------------------------------------------------------
#	
#-----------------------------------------------------------------------------
settings = {
	
}



#-----------------------------------------------------------------------------
#	
#-----------------------------------------------------------------------------
def main( settings )
	argv0 = ARGV[ 0 ]
	
	bit_number = argv0.to_i
	
	max_number = ( 2 << ( bit_number - 1 ) ) - 1
	
	need_count = 10
	count = 0
	n = max_number
	10000.times do
		if n.prime?
			count += 1
			puts n
			STDOUT.flush
			if count == need_count
				break
			end
		end
		n -= 2
	end
	
	
end

main( settings )
