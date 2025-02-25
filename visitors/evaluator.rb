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
  def visit_string(node)
    node.value
  end
  def visit_cell_address(node)
    [node.row, node.column]
  end

  # Arithmetic Operations
  def visit_add(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Numeric) && right.is_a?(Numeric)
      left + right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def visit_subtract(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Numeric) && right.is_a?(Numeric)
      left - right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def visit_multiply(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Numeric) && right.is_a?(Numeric)
      left * right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def visit_divide(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Numeric) && right.is_a?(Numeric)
      left / right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def visit_modulus(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Numeric) && right.is_a?(Numeric)
      left % right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def visit_exponent(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Numeric) && right.is_a?(Numeric)
      left ** right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def visit_negate(node)
    operand = node.operand.visit(self)
    if operand.is_a?(Numeric)
      -operand
    else
      raise TypeError, "Unsupported operation for #{operand.class}"
    end
  end

  # Logical Operations
  def visit_logical_and(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if (left.is_a?(TrueClass) || left.is_a?(FalseClass)) && (right.is_a?(TrueClass) || right.is_a?(FalseClass))
      left && right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def visit_logical_or(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if (left.is_a?(TrueClass) || left.is_a?(FalseClass)) && (right.is_a?(TrueClass) || right.is_a?(FalseClass))
      left || right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def visit_logical_not(node)
    operand = node.operand.visit(self)
    if operand.is_a?(TrueClass) || operand.is_a?(FalseClass)
      !operand
    else
      raise TypeError, "Unsupported operation for #{operand.class}"
    end
  end

  # Cell L-Value
  # Cell R-Value

  # Bitwise Operations
  def bitwise_and(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Integer) && right.is_a?(Integer)
      left & right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def bitwise_or(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Integer) && right.is_a?(Integer)
      left | right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def bitwise_xor(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Integer) && right.is_a?(Integer)
      left ^ right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def bitwise_not(node)
    operand = node.operand.visit(self)
    if operand.is_a?(Integer)
      ~operand
    else
      raise TypeError, "Unsupported operation for #{operand.class}"
    end
  end
  def bitwise_shift_left(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Integer) && right.is_a?(Integer)
      left << right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def bitwise_shift_right(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Integer) && right.is_a?(Integer)
      left >> right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end

  # Relational Operations
  def visit_equals(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Numeric) && right.is_a?(Numeric)
      left == right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def visit_not_equals(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Numeric) && right.is_a?(Numeric)
      left != right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def visit_less_than(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Numeric) && right.is_a?(Numeric)
      left < right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def visit_less_than_or_equals(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Numeric) && right.is_a?(Numeric)
      left <= right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def visit_greater_than(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Numeric) && right.is_a?(Numeric)
      left > right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end
  def visit_greater_than_or_equals(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    if left.is_a?(Numeric) && right.is_a?(Numeric)
      left >= right
    else
      raise TypeError, "Unsupported operation for #{left.class} and #{right.class}"
    end
  end

  # Casting Operations
  def visit_float_to_integer(node)
    operand = node.operand.visit(self)
    if operand.is_a?(Float)
      operand.to_i
    else
      raise TypeError, "Unsupported operation for #{operand.class}"
    end
  end
  def visit_integer_to_float(node)
    operand = node.operand.visit(self)
    if operand.is_a?(Integer)
      operand.to_f
    else
      raise TypeError, "Unsupported operation for #{operand.class}"
    end
  end

  # Statistical Functions
  
end