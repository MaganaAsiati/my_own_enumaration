odule MyEnumerable
    # The method returns true if the block never returns false or nil.
    def all?
      each do |item|
        return false unless yield item
      end
      true
    end
  
    