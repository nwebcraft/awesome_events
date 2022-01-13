class RemoveIndexFromTickets < ActiveRecord::Migration[6.0]
  def change
    remove_index :tickets, %[event_id, user_id]
    add_index :tickets, %i[event_id user_id], unique:true
  end
end
