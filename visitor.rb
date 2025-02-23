class Visitor
  
  def visit_integer(node, payload)
    raise NotImplementedError, "Subclasses must implement this method"
  end

  def visit_float(node, payload)
    raise NotImplementedError, "Subclasses must implement this method"
  end

  def visit_string(node, payload)
    raise NotImplementedError, "Subclasses must implement this method"
  end

  def visit_boolean(node, payload)
    raise NotImplementedError, "Subclasses must implement this method"
  end

  def visit_vector2(node, payload)
    raise NotImplementedError, "Subclasses must implement this method"
  end

  def visit_add(node, payload)
    raise NotImplementedError, "Subclasses must implement this method"
  end

  def visit_multiply(node, payload)
    raise NotImplementedError, "Subclasses must implement this method"
  end




  #Idk where or if i need this
  def visit_assignment(node, payload)
    raise NotImplementedError, "Subclasses must implement this method"
  end

  def visit_variable_reference(node, payload)
    raise NotImplementedError, "Subclasses must implement this method"
  end

  def visit_print(node, payload)
    raise NotImplementedError, "Subclasses must implement this method"
  end

  

end