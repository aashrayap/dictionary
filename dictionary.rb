require './loader.rb'

class Dictionary
  def initialize
    @loader=DictionaryLoader.new
    @alphabet =[*("a".."z")]
    @dictionary
  end

  attr_accessor :dictionary, :path
  
  def main
    prompt
    initial_stats
  end

  def prompt
    while true
    puts "Where is your dictionary?"
    @path=gets.chomp
    if File.exist?(@path)
      @dictionary=@loader.openfile(@path,"r+")
      puts "Your Dictionary successfully loaded"
      break
    end
      puts "Invlalid path, try again!"
    end
  end

  def initial_stats
    numberofwords=word_count
    puts "Your dictionary contains #{numberofwords} words."
    word_frequency_by_letter

  end

  def word_frequency_by_letter
    @alphabet.each do |letter|
      regex= /^#{letter}/
      @result=@dictionary.scan(regex)
      puts "#{result.size} words start with #{letter}"
    end
  end

  def word_count
    arr=File.readlines(@path)
    num_words=arr.size
  end
end

d=Dictionary.new
d.main