module Subscriber
  class Subscribe < ActiveRecord::Base
    set_table_name :subscribes
    
    attr_accessible :email
    
    validates :email, :presence => true, :uniqueness => true, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
    validates :ip, :presence => true    
    
  end
end
