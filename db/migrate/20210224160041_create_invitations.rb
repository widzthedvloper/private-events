class CreateInvitations < ActiveRecord::Migration[6.1]
  def change
    create_table :invitations do |t|
      t.integer :atendee
      t.integer :attended_event

      t.timestamps
    end
  end
end
