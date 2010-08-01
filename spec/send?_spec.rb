require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

class TestObject
  
  def i_exist(*args)
    args
  end
  
  private
    def i_am_private(*args)
      args
    end
end

describe "Send?" do
  it "should allow send? on nil" do
    nil.send?(:i_do_not_exist).should equal nil
  end
  
  it "should not raise errors on non-nil objects" do
    TestObject.new.send?(:i_do_not_exist_either).should equal nil
  end
  
  it "should take arguments and blocks" do
    args = ['hello', 'world']
    
    TestObject.new.send?(:i_exist, *args).should == args
  end
  
  it "should never ever call private methods" do
    TestObject.new.send?(:i_am_private, "whatever").should == nil
  end
end
