module Subscriber
  module ApplicationHelper
    include SubscribeHelper
    def subscriber_form
        raw(render :file => 'subscriber/subscribe/_form.html.erb')
    end
  end
end
