require_relative "visitor.rb"
class Serializer < Visitor

  def visit_integer(node, payload)
    node.raw_value.to_s
  end

  def visit_vector2(node, payload)
    "[#{node.x_value}, #{node.y_value}]"
  end

  def visit_print(node, payload)
    "print(#{node.parameter_node})"
  end

  def visit_add(node, payload)
    "(#{node.left_node.visit(self, nil)} + #{node.right_node.visit(self, nil)})"
  end

  def visit_multiply(node, payload)
    "(#{node.left_node.visit(self, nil)} x #{node.right_node.visit(self, nil)})"
  end

end

## Operator classes dont use primitieves.
# Maybe identify the types using a tag
#