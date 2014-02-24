require 'compass'
#require 'normalize'
extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register('translucencss', :path => extension_path)

module Sass::Script::Functions
	
	def is_substring(string, substring)
		assert_type string, :String
		assert_type substring, :String
		Sass::Script::Bool.new(string.value.include?(substring.value))
	end
	declare :is_substring, [:string, :substring]

	#####################
	# Number Manipulation
	#####################
	
	# https://github.com/nex3/sass/issues/740
	# return a number without its unit
	def strip_unit(number)
		assert_type number, :Number
		Sass::Script::Number.new(number.value)
	end
	#declare :strip_unit, [:number]
 
	# return 1 * the unit of the input number
	def one_unit(number)
		assert_type number, :Number
		Sass::Script::Number.new(1, ["#{number.unit_str}"])
	end
	#declare :one_unit, [:number]
 
	# force the unit of a given number
	def add_unit(number, unit)
		assert_type number, :Number
		assert_type unit, :String
		Sass::Script::Number.new(number.value, ["#{unit}"])
	end
	#declare :add_unit, [:number]
end