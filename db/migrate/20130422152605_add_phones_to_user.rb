class AddPhonesToUser < ActiveRecord::Migration
  def change
    add_column :users, :home_phone, :string
    add_column :users, :mobile_phone, :string
  end
end
