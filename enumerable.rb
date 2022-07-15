odule MyEnumerable
    # The method returns true if the block never returns false or nil.
    def all?
      each do |item|
        return false unless yield item
      end
      true
    end
  
    # The method returns true if the block ever returns true.
    def any?
      each do |item|
        return true if yield item
      end
      false
    end
  
  