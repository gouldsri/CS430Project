require_relative "ast.rb"
require_relative "serializer.rb"
require_relative "visitor.rb"
require_relative "parser.rb"
require_relative "evaluator.rb"

puts "hello world"
a = Ast::Integer.new(37)
b = Ast::Integer.new(13)
c = Ast::Integer.new(2)

mult = Ast::Multiply.new(a, b)
add = Ast::Add.new(mult, c)

#puts add.visit(Serializer.new, nil)
puts add.visit(Serializer.new, nil)
puts add.visit(Evaluator.new, nil)