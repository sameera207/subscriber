require 'spec_helper'

module Subscriber
  describe Subscribe do
    
    it "should validate presence of email" do
      subscribe = Subscribe.new
      subscribe.should have(2).error_on(:email)
    end
    
    it "should validate format of email" do
      subscribe = Subscribe.create(:email => "wrong email")
      subscribe.should have(1).error_on(:email)
    end
    
    it "should allow valid email" do
      subscribe = Subscribe.create(:email => "sample@gmail.com")
      subscribe.should have(0).error_on(:email)
    end
    
    it "should validate presence of ip" do
      subscribe = Subscribe.new
      subscribe.should have(1).error_on(:ip)
    end
    
  end
end
