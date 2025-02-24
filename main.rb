require_relative 'models/primitives'
require_relative 'models/operations'
require_relative 'visitors/serializer'
require_relative 'visitors/evaluator'

expr1 = Add.new(Multiply.new(IntegerPrimitive.new(37), IntegerPrimitive.new(13)), IntegerPrimitive.new(2))
expr2 = Add.new(IntegerPrimitive.new(5), IntegerPrimitive.new(3))
expr3 = Multiply.new(IntegerPrimitive.new(2), expr2)

serializer = Serializer.new
puts expr1.visit(serializer) # ((37 * 13) + 2)
puts expr2.visit(serializer) # (5 + 3)
puts expr3.visit(serializer) # (2 * (5 + 3))

evaluator = Evaluator.new
puts expr1.visit(evaluator) # 483
puts expr2.visit(evaluator) # 8
puts expr3.visit(evaluator) # 16