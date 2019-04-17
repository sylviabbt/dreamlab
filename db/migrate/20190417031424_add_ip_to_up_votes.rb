class AddIpToUpVotes < ActiveRecord::Migration[5.2]
  def change
    add_column :upvotes, :ip, :inet
  end
end
