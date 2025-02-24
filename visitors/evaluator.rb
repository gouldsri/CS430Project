class Evaluator
  def visit_integer(node)
    node.value
  end
  def visit_float(node)
    node.value
  end
  def visit_boolean(node)
    node.value
  end
  def visit_add(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left + right
  end
  def visit_multiply(node)
    left = node.left.visit(self)
    right = node.right.visit(self)
    left * right
  end
end