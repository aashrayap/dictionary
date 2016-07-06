require './loader.rb'

class Dictionary
  def initialize
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
      @dictionary=File.readlines(@path)
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
      result=[]
      @dictionary.each do |word|
        regex= /^#{letter}.*$/
        result<<word if word.match(regex)
      end
        puts "#{result.size} words start with #{letter}"
    end
  end

  def word_count
    num_words=@dictionary.size
  end
end

d=Dictionary.new
d.main