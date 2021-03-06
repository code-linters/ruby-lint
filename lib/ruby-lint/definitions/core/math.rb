##
# Constant: Math
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Math') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('acos') do |method|
    method.define_argument('x')
  end

  klass.define_method('acosh') do |method|
    method.define_argument('x')
  end

  klass.define_method('asin') do |method|
    method.define_argument('x')
  end

  klass.define_method('asinh') do |method|
    method.define_argument('x')
  end

  klass.define_method('atan') do |method|
    method.define_argument('x')
  end

  klass.define_method('atan2') do |method|
    method.define_argument('y')
    method.define_argument('x')
  end

  klass.define_method('atanh') do |method|
    method.define_argument('x')
  end

  klass.define_method('cos') do |method|
    method.define_argument('x')
  end

  klass.define_method('cosh') do |method|
    method.define_argument('x')
  end

  klass.define_method('erf') do |method|
    method.define_argument('x')
  end

  klass.define_method('erfc') do |method|
    method.define_argument('x')
  end

  klass.define_method('exp') do |method|
    method.define_argument('x')
  end

  klass.define_method('frexp') do |method|
    method.define_argument('x')
  end

  klass.define_method('gamma') do |method|
    method.define_argument('x')
  end

  klass.define_method('hypot') do |method|
    method.define_argument('x')
    method.define_argument('y')
  end

  klass.define_method('ldexp') do |method|
    method.define_argument('x')
    method.define_argument('n')
  end

  klass.define_method('lgamma') do |method|
    method.define_argument('x')
  end

  klass.define_method('log') do |method|
    method.define_argument('x')
    method.define_optional_argument('base')
  end

  klass.define_method('log10') do |method|
    method.define_argument('x')
  end

  klass.define_method('log2') do |method|
    method.define_argument('x')
  end

  klass.define_method('modf') do |method|
    method.define_argument('x')
  end

  klass.define_method('sin') do |method|
    method.define_argument('x')
  end

  klass.define_method('sinh') do |method|
    method.define_argument('x')
  end

  klass.define_method('sqrt') do |method|
    method.define_argument('x')
  end

  klass.define_method('tan') do |method|
    method.define_argument('x')
  end

  klass.define_method('tanh') do |method|
    method.define_argument('x')
  end

  klass.define_instance_method('cbrt') do |method|
    method.define_argument('x')
  end
end

##
# Constant: Math::DomainError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Math::DomainError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('SystemCallError'))
end

##
# Constant: Math::E
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Math::E') do |klass|
end

##
# Constant: Math::FFI
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Math::FFI') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('add_typedef') do |method|
    method.define_argument('current')
    method.define_argument('add')
  end

  klass.define_method('config') do |method|
    method.define_argument('name')
  end

  klass.define_method('config_hash') do |method|
    method.define_argument('name')
  end

  klass.define_method('errno')

  klass.define_method('find_type') do |method|
    method.define_argument('name')
  end

  klass.define_method('generate_function') do |method|
    method.define_argument('ptr')
    method.define_argument('name')
    method.define_argument('args')
    method.define_argument('ret')
  end

  klass.define_method('generate_trampoline') do |method|
    method.define_argument('obj')
    method.define_argument('name')
    method.define_argument('args')
    method.define_argument('ret')
  end

  klass.define_method('size_to_type') do |method|
    method.define_argument('size')
  end

  klass.define_method('type_size') do |method|
    method.define_argument('type')
  end
end

##
# Constant: Math::FactorialTable
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Math::FactorialTable') do |klass|
end

##
# Constant: Math::PI
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Math::PI') do |klass|
end