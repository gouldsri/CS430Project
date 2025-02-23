module Ast
    class Integer
      attr_reader :raw_value

        def initialize(raw_value)
            @raw_value = raw_value
        end   

        def visit(visitor, payload)
          visitor.visit_integer(self, payload)
        end
    end

    class Float
      attr_reader :raw_value

        def initialize(raw_value)
            @raw_value = raw_value
        end   

        def visit(visitor, payload)
          visitor.visit_float(self, payload)
        end
    end

    class String
      attr_reader :raw_value

        def initialize(raw_value)
            @raw_value = raw_value
        end   

        def visit(visitor, payload)
          visitor.visit_string(self, payload)
        end
    end

    class Boolean
      attr_reader :raw_value

        def initialize(raw_value)
            @raw_value = raw_value
        end   

        def visit(visitor, payload)
          visitor.visit_boolean(self, payload)
        end
    end

    class Vec2 # I guess this is address
      attr_reader :x_value, :y_value
      def initialize(x_value, y_value)
        @x_value = x_value
        @y_value = y_value
      end

      def visit(visitor, payload)
        visitor.visit_vector2(self, payload)
      end
    end

    # Need classes and constructors for float, boolean, string
    class Add
      attr_reader :left_node, :right_node
      def initialize(left_node, right_node)
        @left_node = left_node
        @right_node = right_node
      end

      def visit(visitor, payload)
        visitor.visit_add(self, payload)
      end
    end

    class Multiply
      attr_reader :left_node, :right_node
      def initialize(left_node, right_node)
        @left_node = left_node
        @right_node = right_node
      end

      def visit(visitor, payload)
        visitor.visit_multiply(self, payload)
      end
    end


    
    class Assignment
      def initialize(identifier, node)
        @identifier = identifier
        @node = node
      end

      def visit(visitor, payload)
        visitor.visit_assignment(self, payload)
      end
    end

    class VariableReference
      def initialize(identifier)
        @identifier = identifier
      end

      def visit(visitor, payload)
        visitor.visit_variable_reference(self, payload)
      end
    end
    

    class Print
      attr_reader :parameter_node
      def initialize(parameter_node)
        @parameter_node = parameter_node
      end

      def visit(visitor, payload)
        visitor.visit_print(self, payload)
      end
    end

    class Block
      def initialize(statements)
        @statements = statements
      end
    end
  end 


#two = Ast::Integer.new(2)
#puts two 
#put String from two