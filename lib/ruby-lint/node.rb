require 'furnace/ast'

module RubyLint
  ##
  # {RubyLint::Node} is a class that represents a single node in the AST of a
  # Ruby program. It contains information such as the type, children, line
  # number and column number.
  #
  class Node < Furnace::AST::Node
    ##
    # Array containing the various variable types that are available in Ruby.
    #
    # @return [Array]
    #
    VARIABLE_TYPES = [
      :local_variable,
      :instance_variable,
      :class_variable,
      :global_variable,
      :constant,
      :constant_path
    ]

    ##
    # Array containing various predicate methods to create.
    #
    # @return [Array]
    #
    PREDICATE_METHODS = [:identifier, :module, :class, :hash, :array]

    VARIABLE_TYPES.each do |type|
      define_method("#{type}?") do
        return @type == type
      end
    end

    PREDICATE_METHODS.each do |type|
      define_method("#{type}?") do
        return @type == type
      end
    end

    ##
    # Returns the line number of the node.
    #
    # @return [Fixnum]
    #
    attr_reader :line

    ##
    # Returns the column number of the node.
    #
    # @return [Fixnum]
    #
    attr_reader :column

    ##
    # Returns the name of the file that the node belongs to.
    #
    # @return [String]
    #
    attr_reader :file

    ##
    # Returns `true` if the current node is a variable node.
    #
    # @return [TrueClass|FalseClass]
    #
    def variable?
      return VARIABLE_TYPES.include?(@type)
    end

    ##
    # @return [TrueClass|FalseClass]
    #
    def constant?
      return @type == :constant || @type == :module || @type == :class
    end

    ##
    # @return [Array]
    #
    def to_a
      return children
    end
  end # Node
end # RubyLint
