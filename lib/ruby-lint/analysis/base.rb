module RubyLint
  module Analysis
    ##
    # Base analysis class that provides various helper methods commonly used
    # across analysis classes.
    #
    # @!attribute [r] report
    #  @return [RubyLint::Report]
    #
    # @!attribute [r] vm
    #  @return [RubyLint::VirtualMachine]
    #
    class Base < Iterator
      include Helper::ConstantPaths

      attr_reader :report, :vm

      ##
      # Array containing the callback names for which a new scope should be
      # created.
      #
      # @return [Array<Symbol>]
      #
      SCOPES = [:root, :block, :class, :def, :module, :sclass]

      ##
      # Called after a new instance of this class is created.
      #
      def after_initialize
        unless vm.is_a?(VirtualMachine)
          raise(
            ArgumentError,
            'Analysis classes require a valid RubyLint::VirtualMachine ' \
              'instance to be set using `SomeAnalysisClass.new(:vm => ...)`'
          )
        end

        @scopes = []
      end

      SCOPES.each do |type|
        define_method("on_#{type}") do |node|
          set_current_scope(node)
        end

        define_method("after_#{type}") do |node|
          set_previous_scope
        end
      end

      protected

      ##
      # Returns the current scope.
      #
      # @return [RubyLint::Definition::RubyObject]
      #
      def current_scope
        return @scopes[-1]
      end

      ##
      # @return [RubyLint::Definition::RubyObject]
      #
      def previous_scope
        return @scopes[-2]
      end

      ##
      # Sets the current scope to the definition associated with the given
      # node.
      #
      # @param [RubyLint::Node] node
      #
      def set_current_scope(node)
        unless vm.associations.key?(node)
          raise ArgumentError, "No associations for node #{node}"
        end

        @scopes << vm.associations[node]
      end

      ##
      # Sets the current scope back to the previous one.
      #
      def set_previous_scope
        @scopes.pop
      end

      ##
      # Adds an error message to the report.
      #
      # @see #add_message
      #
      def error(*args)
        add_message(:error, *args)
      end

      ##
      # Adds a warning message to the report.
      #
      # @see #add_message
      #
      def warning(*args)
        add_message(:warning, *args)
      end

      ##
      # Adds a regular informational message to the report.
      #
      # @see #add_message
      #
      def info(*args)
        add_message(:info, *args)
      end

      ##
      # Adds a message of the given level.
      #
      # @param [Symbol] level
      # @param [String] message
      # @param [String] node
      #
      def add_message(level, message, node)
        return unless report

        report.add(
          :level    => level,
          :message  => message,
          :line     => node.line,
          :column   => node.column,
          :file     => node.file,
          :node     => node
        )
      end
    end # Base
  end # Analysis
end # RubyLint
