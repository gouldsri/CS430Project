require_relative 'expression'

class NumericPrimitive < Expression
  attr_reader :value
  def initialize(value)
    @value = value
  end
  def visit(visitor)
    visitor.visit_numeric(self)
  end
end

class IntegerPrimitive < NumericPrimitive
  attr_reader :value
  def initialize(value)
    @value = value
  end
  def visit(visitor)
    visitor.visit_integer(self)
  end
end

class FloatPrimitive < NumericPrimitive
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

class CellAddress < Expression
  attr_reader :row, :column
  def initialize(row, column)
    @row = row
    @column = column
  end
  def visit(visitor)
    visitor.visit_cell_address(self)
  end
end
