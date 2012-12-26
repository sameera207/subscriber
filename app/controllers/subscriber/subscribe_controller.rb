require_dependency "subscriber/application_controller"

module Subscriber
  class SubscribeController < ApplicationController
    
    def index
      @subscribe = Subscribe.new
    end
    
    def create
      @subscribe = Subscribe.new(:email => params[:email])
      @subscribe.ip = request.remote_ip
      if @subscribe.save
        flash.now[:success] = ["#{@subscribe.email} sucessfully saved"]
      else
        flash.now[:errors] = @subscribe.errors.full_messages 
      end  
      respond_to do |format|
        format.js
      end
    end
    
  end
end
