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
    "!(#{node.operand.visit(self)})"
  end

  # Cell L-Value
  # Cell R-Value

  # Bitwise Operations
  def visit_bitwise_and(node)
    "(#{node.left.visit(self)} & #{node.right.visit(self)})"
  end
  def visit_bitwise_or(node)
    "(#{node.left.visit(self)} | #{node.right.visit(self)})"
  end
  def visit_bitwise_xor(node)
    "(#{node.left.visit(self)} ^ #{node.right.visit(self)})"
  end
  def visit_bitwise_not(node)
    "~ (#{node.operand.visit(self)})"
  end
  def visit_bitwise_shift_left(node)
    "(#{node.left.visit(self)} << #{node.right.visit(self)})"
  end
  def visit_bitwise_shift_right(node)
    "(#{node.left.visit(self)} >> #{node.right.visit(self)})"
  end

  # Relational Operations
  def visit_equals(node)
    "(#{node.left.visit(self)} = #{node.right.visit(self)})"
  end
  def visit_not_equals(node)
    "(#{node.left.visit(self)} != #{node.right.visit(self)})"
  end
  def visit_less_than(node)
    "(#{node.left.visit(self)} < #{node.right.visit(self)})"
  end
  def visit_less_than_or_equals(node)
    "(#{node.left.visit(self)} <= #{node.right.visit(self)})"
  end
  def visit_greater_than(node)
    "(#{node.left.visit(self)} > #{node.right.visit(self)})"
  end
  def visit_greater_than_or_equals(node)
    "(#{node.left.visit(self)} >= #{node.right.visit(self)})"
  end

  # Casting Operations
  def visit_float_to_integer(node)
    "int(#{node.operand.visit(self)})"
  end
  def visit_integer_to_float(node)
    "float(#{node.operand.visit(self)})"
  end

  # Statistical Functions

end