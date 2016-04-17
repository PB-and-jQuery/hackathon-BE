class ChangeVoteDefaultZero < ActiveRecord::Migration
  def change
  	change_column :votes, :vote, :integer, default: 0
  end
end
