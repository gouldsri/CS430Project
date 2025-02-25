require_relative 'models/primitives'
require_relative 'models/operations'
require_relative 'visitors/serializer'
require_relative 'visitors/evaluator'

expr1 = Add.new(Multiply.new(IntegerPrimitive.new(37), IntegerPrimitive.new(13)), IntegerPrimitive.new(2))
expr2 = Add.new(IntegerPrimitive.new(5), IntegerPrimitive.new(3))
expr3 = Multiply.new(IntegerPrimitive.new(2), expr2)
expr4 = Exponent.new(IntegerPrimitive.new(2), IntegerPrimitive.new(3))
expr5 = Divide.new(Subtract.new(IntegerPrimitive.new(10), IntegerPrimitive.new(2)), IntegerPrimitive.new(4))
expr6 = Negate.new(expr5)
expr7 = Modulus.new(IntegerPrimitive.new(10), IntegerPrimitive.new(3))
expr8 = LogicalAnd.new(BooleanPrimitive.new(true), BooleanPrimitive.new(false))
expr9 = LogicalOr.new(BooleanPrimitive.new(true), expr8)
expr10 = LogicalNot.new(expr9)
expr11 = LogicalNot.new(expr2)


serializer = Serializer.new
puts expr1.visit(serializer) # ((37 * 13) + 2)
puts expr2.visit(serializer) # (5 + 3)
puts expr3.visit(serializer) # (2 * (5 + 3))
puts expr4.visit(serializer) # (2 ^ 3)
puts expr5.visit(serializer) # ((10 - 2) / 4)
puts expr6.visit(serializer) # -((10 - 2) / 4)
puts expr7.visit(serializer) # (10 % 3)
puts expr8.visit(serializer) # (true AND false)
puts expr9.visit(serializer) # (true OR (true AND false))
puts expr10.visit(serializer) # NOT ((true OR (true AND false)))
puts expr11.visit(serializer) # NOT ((5 + 3))


evaluator = Evaluator.new
puts expr1.visit(evaluator) # 483
puts expr2.visit(evaluator) # 8
puts expr3.visit(evaluator) # 16
puts expr4.visit(evaluator) # 8
puts expr5.visit(evaluator) # 2
puts expr6.visit(evaluator) # -2
puts expr7.visit(evaluator) # 1
puts expr8.visit(evaluator) # false
puts expr9.visit(evaluator) # true
puts expr10.visit(evaluator) # false
# try/catch for TypeError

begin
puts expr11.visit(evaluator) # false
rescue TypeError => e
  puts e.message
end
