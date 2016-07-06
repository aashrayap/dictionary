class DictionaryLoader
  def openfile(filename,mode)
  file=File.open(filename,mode)
  puts "Dictionary successfully loaded"
  file
  end
end
