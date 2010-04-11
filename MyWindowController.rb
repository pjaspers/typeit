# MyWindowController.rb
# type_speed
#
# Created by Piet Jaspers on 15/03/10.
# Copyright 2010 10to1. All rights reserved.

class MyWindowController < NSWindowController
	attr_accessor :word_view	
	
	def awakeFromNib
		#MacRubyHTTP.post("http://www.postbin.org/1ka5qz6", {:payload => "user=pidet&score=519", :delegation => self }) 
	end
	
#	def send_post_data
#		post = "user=piet&score=516"
#		post_data = post.to_s.dataUsingEncoding(NSUTF8StringEncoding)
#		url = NSURL.URLWithString("http://www.postbin.org/1ka5qz6")
#		request = NSMutableURLRequest.requestWithURL(url, cachePolicy:NSURLRequestReloadIgnoringCacheData, timeoutInterval:10.0)
#		request.setHTTPMethod "POST"
#		request.setHTTPBody post_data
#		connection   = NSURLConnection.connectionWithRequest(request, delegate:self)
#	end
#	
#	def connectionDidFinishLoading(connection)
#		puts "Klaar als een klontje."
#	end
	
	def handle_query_response(response)
		puts response
    end
end