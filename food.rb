class Food
  #data structure to hold Food objects
  def initialize(name, type, calories)
    @name = name
    @type = type
    @calories = calories
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end
  
  def type=(type)
    @type = type
  end

  def type
    @type
  end

  def calories=(calories)
    @calories = calories
  end

  def calories
    @calories
  end
end
