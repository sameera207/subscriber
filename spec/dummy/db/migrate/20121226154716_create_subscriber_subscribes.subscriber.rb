# This migration comes from subscriber (originally 20121226154304)
class CreateSubscriberSubscribes < ActiveRecord::Migration
  def change
    create_table :subscriber_subscribes do |t|
      t.string :email
      t.string :ip

      t.timestamps
    end
  end
end
