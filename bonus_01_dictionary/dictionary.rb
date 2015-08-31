class Dictionary

  attr_accessor :entries

  def initialize
    @entries = {}
  end # def initialize

  def add(entry)
  	# @word = params[:word]
  	# @meaning = params[:meaning]
  	# Push into @entries hash
  	if entry.class == Hash
  	  entry.each { |word, definition| @entries[word] = definition }
  	elsif entry.class == Array
  	  entry.each { |word| @entries[word] = nil }
  	else entry.class == String
      @entries[entry] = nil
  	end
  end

  def keywords
    @entries.keys.sort
  end # def keywords

  def include?(entry)
    if @entries.include?(entry) == true
      @entries.include?(entry)
    elsif @entries.include?(entry) != true
      return
    end
  end # def include?

  def find(entry)
  	result = {}
    @entries.each do
      |key, value|
        if key.include?(entry)
    	  result[key] = value
    	else
    	end
    end
    return result
  end # def find

end # class Dictionary