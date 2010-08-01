require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Send?" do
  it "should allow send? on nil" do
    lambda { nil.send?(:i_do_not_exist) }.should_not raise_error
  end
  
  it "should take arguments and blocks" do
    args = ['hello', 'world']
    obj = Object.new
    
    def obj.i_exist(*args)
      args
    end
    
    obj.send?(:i_exist, *args).should equal args
  end
end
