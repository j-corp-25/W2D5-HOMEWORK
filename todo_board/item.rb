class Item

  def initialize(title, dealine, description)
    @title = title
    @dealine = dealine
    @description = description
    def self.valid_date?(deadline)
      seperate = date_String.split('-')
      year = seperate[0]
      month = seperate[1].to_i
      day = seperate[2].to_i
      if year.length != 4
        return false
      end
      if !((1..12).include?(month))
        return false
      end

      if !((1..31).include?(day))
        return false
      end

      true
    end

  end

  def item
    return @item
  end

  def item=(new_title)
    @title = new_title
  end

  def deadline
    return @deadline
  end

  def description
    return @description
  end

  def description=(new_description)
    @description = new_description
  end




end
