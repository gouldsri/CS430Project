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
end