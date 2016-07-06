class Dictionary
  def initialize
    @loader=DictionaryLoader.new
    @ui=DictionaryUI.new
    @dictionary
  end
  
  def main
    @ui.prompt
  end

  def prompt
    while true
    puts "Where is your dictionary?"
    path=gets.chomp
    if File.exists?(path)
      @dictionary=@loader.openfile(path,"r+")
    else
      "Invlalid path, try again!"
    end
  end
end