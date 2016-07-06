class DictionaryLoader
  def open(filename,mode)
  file=File.open(filename,mode)
  puts "Dictionary successfully loaded"
  file
end
