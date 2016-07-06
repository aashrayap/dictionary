class DictionaryUI
  def initialize
    @loader=DictionaryLoader.new
    @file
  end

  def loop
    @file=prompt
  end

  def prompt
    puts "Where is your dictionary?"
    # path=gets.chomp
    @loader.openfile('5desk.txt',"r+")
  end

end

