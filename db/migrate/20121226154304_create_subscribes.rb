class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.string :email
      t.string :ip
      t.timestamps
    end
  end
end
