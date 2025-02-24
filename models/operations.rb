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
class BitwiseAnd < BinaryOperation
  def visit(visitor)
    visitor.visit_bitwise_and(self)
  end
end

class BitwiseOr < BinaryOperation
  def visit(visitor)
    visitor.visit_bitwise_or(self)
  end
end

class BitwiseXor < BinaryOperation
  def visit(visitor)
    visitor.visit_bitwise_xor(self)
  end
end

class BitwiseNot < UnaryOperation
  def visit(visitor)
    visitor.visit_bitwise_not(self)
  end
end

class BitwiseShiftLeft < BinaryOperation
  def visit(visitor)
    visitor.visit_bitwise_shift_left(self)
  end
end

class BitwiseShiftRight < BinaryOperation
  def visit(visitor)
    visitor.visit_bitwise_shift_right(self)
  end
end

# Relational Operations
class Equals < BinaryOperation
  def visit(visitor)
    visitor.visit_equals(self)
  end
end

class NotEquals < BinaryOperation
  def visit(visitor)
    visitor.visit_not_equals(self)
  end
end

class LessThan < BinaryOperation
  def visit(visitor)
    visitor.visit_less_than(self)
  end
end

class LessThanOrEquals < BinaryOperation
  def visit(visitor)
    visitor.visit_less_than_or_equals(self)
  end
end

class GreaterThan < BinaryOperation
  def visit(visitor)
    visitor.visit_greater_than(self)
  end
end

class GreaterThanOrEquals < BinaryOperation
  def visit(visitor)
    visitor.visit_greater_than_or_equals(self)
  end
end

# Casting Operations
class IntegerToFloat < UnaryOperation
  def visit(visitor)
    visitor.visit_integer_to_float(self)
  end
end

class FloatToInteger < UnaryOperation
  def visit(visitor)
    visitor.visit_float_to_integer(self)
  end
end

# Statistical Functions
