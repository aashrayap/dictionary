class DictionaryLoader
  def intitialize
  	@file
  end
  attr_accessor :file

  def openfile(filename,mode)
  @file=File.open(filename,mode)
  end
end
