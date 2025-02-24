require_relative 'expression'

class BinaryOperation < Expression
  attr_reader :left, :right

  def initialize(left, right)
    @left, @right = left, right
  end
end

class UnaryOperation < Expression
  attr_reader :operand

  def initialize(operand)
    @operand = operand
  end
end

# Arithmetic Operations
class Add < BinaryOperation
  def visit(visitor)
    visitor.visit_add(self)
  end
end

class Subtract < BinaryOperation
  def visit(visitor)
    visitor.visit_subtract(self)
  end
end

class Multiply < BinaryOperation
  def visit(visitor)
    visitor.visit_multiply(self)
  end
end

class Divide < BinaryOperation
  def visit(visitor)
    visitor.visit_divide(self)
  end
end

class Modulus < BinaryOperation
  def visit(visitor)
    visitor.visit_modulus(self)
  end
end

class Exponent < BinaryOperation
  def visit(visitor)
    visitor.visit_exponent(self)
  end
end

class Negate < UnaryOperation
  def visit(visitor)
    visitor.visit_negate(self)
  end
end

# Logical Operations
class LogicalAnd < BinaryOperation
  def visit(visitor)
    visitor.visit_logical_and(self)
  end
end

class LogicalOr < BinaryOperation
  def visit(visitor)
    visitor.visit_logical_or(self)
  end
end

class LogicalNot < UnaryOperation
  def visit(visitor)
    visitor.visit_logical_not(self)
  end
end

# Cell L-Value
# Cell R-Value
# Bitwise Operations
# Relational Operations
# Casting Operations
# Statistical Functions