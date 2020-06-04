require 'pry'
class PigLatinizer
    attr_accessor :text
    def initialize(text)
        @text=text.downcase.strip
    
    end
    def vowels
        vowels=['a','e','i','o','u']
    end

    def one_word(text)
        word=''
        sur=''
        text_array=text.strip.split("")
        text_array.each do |ch|
            if vowels.include?(ch)
                
                text_array.push(sur)
                text_array.push("ay")
           
                break
              
            else sur= sur+text_array.shift
            
        end
    end
    text_array.join
   
   end

   def more_words
        words=[]
        text_array=text.split
        text_array.each do |word|
            words << " #{one_word(word)}"
        end
        words.join
      
    end

end