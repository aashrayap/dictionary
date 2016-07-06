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


class DictionaryLoader
  def open(filename,mode)
  file=File.open(filename,mode)
  puts "Dictionary successfully loaded"
  file
end

class Dictionary
end

class DictionarySearcher
  
end

class ResultsSaver
end