class DictionaryUI
  def initialize
    file=DictionaryLoader.new
  end

  def loop
    prompt
  end

  def prompt
    puts "Where is your dictionary?"
    path=gets.chomp
    file.open(path,"r+")
  end

end

