class Serializer
  # Primitives
  def visit_integer(node)
    node.value.to_s
  end
  def visit_float(node)
    node.value.to_s
  end
  def visit_boolean(node)
    node.value.to_s
  end

  # Arithmetic Operations
  def visit_add(node)
    "(#{node.left.visit(self)} + #{node.right.visit(self)})"
  end
  def visit_subtract(node)
    "(#{node.left.visit(self)} - #{node.right.visit(self)})"
  end
  def visit_multiply(node)
    "(#{node.left.visit(self)} * #{node.right.visit(self)})"
  end
  def visit_divide(node)
    "(#{node.left.visit(self)} / #{node.right.visit(self)})"
  end
  def visit_modulus(node)
    "(#{node.left.visit(self)} % #{node.right.visit(self)})"
  end
  def visit_exponent(node)
    "(#{node.left.visit(self)} ^ #{node.right.visit(self)})"
  end
  def visit_negate(node)
    "-(#{node.operand.visit(self)})"
  end

  # Logical Operations
  def visit_logical_and(node)
    "(#{node.left.visit(self)} AND #{node.right.visit(self)})"
  end
  def visit_logical_or(node)
    "(#{node.left.visit(self)} OR #{node.right.visit(self)})"
  end
  def visit_logical_not(node)
    "NOT (#{node.operand.visit(self)})"
  end

  # Cell L-Value
  # Cell R-Value

  # Bitwise Operations
  def visit_bitwise_and(node)
    "(#{node.left.visit(self)} AND #{node.right.visit(self)})"
  end
  def visit_bitwise_or(node)
    "(#{node.left.visit(self)} OR #{node.right.visit(self)})"
  end
  def visit_bitwise_xor(node)
    "(#{node.left.visit(self)} XOR #{node.right.visit(self)})"
  end
  def visit_bitwise_not(node)
    "NOT (#{node.operand.visit(self)})"
  end
  def visit_bitwise_shift_left(node)
    "(#{node.left.visit(self)} << #{node.right.visit(self)})"
  end
  def visit_bitwise_shift_right(node)
    "(#{node.left.visit(self)} >> #{node.right.visit(self)})"
  end

  # Relational Operations
  # Casting Operations
  # Statistical Functions

end