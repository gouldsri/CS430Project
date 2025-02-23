require_relative "visitor.rb"
class Evaluator < Visitor

  def visit_integer(node, payload)
    node.raw_value.to_i
  end

  def visit_vector2(node, payload)
    "[#{node.x_value}, #{node.y_value}]"
  end

  def visit_print(node, payload)
    "print(#{node.parameter_node})"
  end

  def visit_add(node, payload)
    left = node.left_node.visit(self, nil)
    puts left.instance_of?(Integer)
    right = node.right_node.visit(self, nil)
    puts right.instance_of?(Integer)

    left + right
  end

  def visit_multiply(node, payload)
    left = node.left_node.visit(self, nil)
    puts left.instance_of?(Integer)
    right = node.right_node.visit(self, nil)
    puts right.instance_of?(Integer)

    left * right
  end

end