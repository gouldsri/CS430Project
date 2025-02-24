# Base class for all expressions
class Expression
  def visit(visitor)
    raise NotImplementedError, "Subclasses must implement method"
  end
end