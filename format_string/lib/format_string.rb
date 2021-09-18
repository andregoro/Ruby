require "format_string/version"
 module FormatString
  #class Error < StandardError; end
  class Moeda
	  def self.br(num)
			"R$#{num}"
	   end
	   def self.en(num)
		"R#{num}"
	end
  end
#   class Moeda 
#   	def self.br(num)
#   		"RS#{num}"
#   	end
  	
#   	def self.en(num)
#   		"$#{num}"
#   	end
#   end
end

