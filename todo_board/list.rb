require_relative "item.rb"

class List
  def initialize(label)
    @label = label
    @items = []

  end

  def labels
    return @labels
  end

  def labels=(new_label)
    @label = new_label
  end

  def add_item(title, deadline,description="")
    if self.valid_date?(deadline)
      @items << add_item
    end
  end

  def size
    return @items.length
  end

  



end
