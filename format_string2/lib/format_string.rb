require "format_string/version"

module FormatString
  #class Error < StandardError; end
  module FormatString
  #class Error < StandardError; end
  class Moeda 
  	def self.br(num)
  		"RS#{num}"
  	end
  	
  	def self.en(num)
  		"$#{num}"
  	end
  end
end

  # Your code goes here...
end
