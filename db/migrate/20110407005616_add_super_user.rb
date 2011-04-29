class AddSuperUser < ActiveRecord::Migration
  def self.up
    User.delete_all

    User.create (
      :username => "administrator",
      :email => "admin@niyicharles.com",
      :password => "entrepreneur",
      :password_confirmation => "entrepreneur"
    )
  end

  def self.down
    User.delete_all
  end
end

