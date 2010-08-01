class Object
  # Returns the result of +method+, or +nil+ if +method+ is not a public method.
  #
  # @param Symbol method Method name
  # @param [anyargs, …] *args Any number of arguments
  # @param &block block Optional block
  # @return Whatever +method+ returns, or +nil+
  def send?(method, *args, &block)
    send(method, *args, &block) if respond_to? method
  end
end

class NilClass
  # Always return +nil+ for +NilClass+
  #
  # @see Object#send
  def send?(*args, &block)
    nil
  end
end