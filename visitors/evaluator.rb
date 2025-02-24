class Evaluator
  # Primitives
  def visit_integer(node)
    node.value
  end
  def visit_float(node)
    node.value
  end
  def visit_boolean(node)
    node.value
  end
  # NEEDS STRING
  # NEEDS CELL ADDRESS

  # Arithmetic Operations
  def visit_add(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left + right
  end
  def visit_subtract(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left - right
  end
  def visit_multiply(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left * right
  end
  def visit_divide(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left / right
  end
  def visit_modulus(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left % right
  end
  def visit_exponent(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left ** right
  end
  def visit_negate(node)
    operand = node.operand.visit(self)
    -operand
  end

  # Logical Operations
  def visit_logical_and(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left && right
  end
  def visit_logical_or(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left || right
  end
  def visit_logical_not(node)
    operand = node.operand.visit(self)
    !operand
  end

  # Cell L-Value
  # Cell R-Value

  # Bitwise Operations
  def bitwise_and(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left & right
  end
  def bitwise_or(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left | right
  end
  def bitwise_xor(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left ^ right
  end
  def bitwise_not(node)
    operand = node.operand.visit(self)
    ~operand
  end
  def bitwise_shift_left(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left << right
  end
  def bitwise_shift_right(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left >> right
  end

  # Relational Operations
  def visit_equals(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left == right
  end
  def visit_not_equals(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left != right
  end
  def visit_less_than(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left < right
  end
  def visit_less_than_or_equals(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left <= right
  end
  def visit_greater_than(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left > right
  end
  def visit_greater_than_or_equals(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left >= right
  end

  # Casting Operations
  def visit_float_to_integer(node)
    operand = node.operand.visit(self)
    operand.to_i
  end
  def visit_integer_to_float(node)
    operand = node.operand.visit(self)
    operand.to_f
  end

  # Statistical Functions
  
end