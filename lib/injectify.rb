
		class Array
			def injectify value = nil
 					if value.nil? 
 					  value = self[0] 
 						self[1..-1].each {|item| value = yield(value, item)}
		      else
		        self[0..-1].each { |item| value = yield(value, item)}
		  	  end
		   value
			end
		end