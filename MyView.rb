# MyView.rb
# type_speed
#
# Created by Piet Jaspers on 15/03/10.
# Copyright 2010 10to1. All rights reserved.

class MyView < NSView

	ESCAPE_KEY_CODE = 27
	SPACE_KEY_CODE  = 32
	P_KEY_CODE      = 112
	X_KEY_CODE      = 120
	Q_KEY_CODE      = 113
	ENTER_KEY_CODE  = 13

	attr_accessor :input_label
	
 	def awakeFromNib
		@value	= ''
		@buffer	= ''
		@words	= %w{ dit is een woord boe ba doe di li dee moeilijk valt nog al mee ja woopsie daisy }
		@nr_para = @nr_corr = @timer = @nr_missed = 0
		@where = []
		@ypos = [25, 50, 75, 100, 125, 150, 175]
	end
    
	def iets
		@timer = NSTimer.scheduledTimerWithTimeInterval 1,
                                           target: self,
                                           selector: 'refresh_screen:',
                                           userInfo: nil,
                                           repeats: true
	end
	
	def keyDown(event)
		characters = event.characters
		if characters.length == 1
			character = characters.characterAtIndex(0)
#			if character == NSLeftArrowFunctionKey
#				puts "LEFT pressed"
#			elsif character == NSRightArrowFunctionKey
#				puts "RIGHT pressed"
#			elsif character == NSUpArrowFunctionKey
#				puts "UP pressed"
#			elsif character == NSDownArrowFunctionKey
#				puts "DOWN pressed"
#			elsif character == SPACE_KEY_CODE || character == P_KEY_CODE
#				puts "SPACE pressed"
#			elsif character == ESCAPE_KEY_CODE || character == X_KEY_CODE
#				puts "ESCAPE pressed"
			if character == ENTER_KEY_CODE
				puts "Enter pressed"
			elsif character == NSDeleteCharacter || character == NSBackspaceCharacter
				@buffer.slice!(-1)
			else
				@buffer = @buffer.concat(character)
			end
			input_label.setStringValue(@buffer)
		end
		
	end
	
	def acceptsFirstResponder
		true
	end	
		
end
