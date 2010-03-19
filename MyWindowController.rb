# MyWindowController.rb
# type_speed
#
# Created by Piet Jaspers on 15/03/10.
# Copyright 2010 10to1. All rights reserved.

class MyWindowController < NSWindowController
	attr_accessor :my_label
	attr_accessor :word_view	
	
	def awakeFromNib
		my_label.setStringValue("Piet")
	end
end