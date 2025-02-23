class Parser
  def initialize(tokens)
    @tokens = tokens
    @i = 0
  end

  def has(type)
    current_token = @tokens[@i] #grabs current token in list
    current_token[:type] == type #gets type key and compares to type
    @i < tokens.size && @tokesn[@i][:type] == type
  end

  def advance
    @i += 1
    @tokens[@i-1]
  end

  def parse
    levelN
  end

  def level1
    left = levelN
    while has(:asterisk)
      advance # eat *
      right = levelN
      left = Ast::Multiply.new(left, right)
    end
  end

  def levelN
    if has(:integer)
      token = advance
      Ast::Integer.new(token[:text].to_i)
    elsif has(:left_bracket)

      advance # eat [
      raise 'expected integer for x' unless has(:integer)
      x_token = advance
      raise 'expected integer for ,' unless has(:comma)
      advance # eat ,
      raise 'expected integer for y' unless has(:integer)
      y_token = advance
      raise 'expected integer for ]' unless has(:right_bracket)
      advance #eat ]
      Ast::Vector2.new(x_token[:text].to_i, y_token[:text].to_i)

    else
      raise "Unexpected token #{@tokens[@i].inspect}"
    end
  end

end
