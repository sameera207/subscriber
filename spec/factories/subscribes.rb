# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subscribe, :class => 'Subscribe' do
    email "sample@email.com"
    ip "192.168.0.1"
  end
end
