require_relative 'expression'

class IntegerPrimitive < Expression
  attr_reader :value
  def initialize(value)
    @value = value
  end
  def visit(visitor)
    visitor.visit_integer(self)
  end
end

class FloatPrimitive < Expression
  attr_reader :value
  def initialize(value)
    @value = value
  end
  def visit(visitor)
    visitor.visit_float(self)
  end
end

class BooleanPrimitive < Expression
  attr_reader :value
  def initialize(value)
    @value = value
  end
  def visit(visitor)
    visitor.visit_boolean(self)
  end
end

class StringPrimitive < Expression
  attr_reader :value
  def initialize(value)
    @value = value
  end
  def visit(visitor)
    visitor.visit_string(self)
  end
end

# Cell Address