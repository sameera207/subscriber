require 'spec_helper'

module Subscriber
  describe SubscribeController do
    
    describe "GET 'index'" do
      
      it "returns http success" do
        get(:index, :use_route => :subscriber)
        response.should be_success
      end
    
    end
    
    describe "POST 'create'" do
      it "returns http success" do
        #xhr post(:create, :use_route => :subscriber)
        xhr :post, :create, :use_route => :subscriber 
        response.should be_success
      end
    end
  
  end
end
