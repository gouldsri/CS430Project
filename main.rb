require_relative 'models/primitives'
require_relative 'models/operations'
require_relative 'visitors/serializer'
require_relative 'visitors/evaluator'

expr1 = Add.new(Multiply.new(IntegerPrimitive.new(37), IntegerPrimitive.new(13)), IntegerPrimitive.new(2))
expr2 = Add.new(IntegerPrimitive.new(5), IntegerPrimitive.new(3))
expr3 = Multiply.new(IntegerPrimitive.new(2), expr2)
expr4 = Exponent.new(IntegerPrimitive.new(2), IntegerPrimitive.new(3))
expr5 = Divide.new(Subtract.new(IntegerPrimitive.new(10), IntegerPrimitive.new(2)), IntegerPrimitive.new(4))

serializer = Serializer.new
puts expr1.visit(serializer) # ((37 * 13) + 2)
puts expr2.visit(serializer) # (5 + 3)
puts expr3.visit(serializer) # (2 * (5 + 3))
puts expr4.visit(serializer) # (2 ^ 3)
puts expr5.visit(serializer) # ((10 - 2) / 4)

evaluator = Evaluator.new
puts expr1.visit(evaluator) # 483
puts expr2.visit(evaluator) # 8
puts expr3.visit(evaluator) # 16
puts expr4.visit(evaluator) # 8
puts expr5.visit(evaluator) # 2