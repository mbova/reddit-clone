class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value
      t.references :user, index: true
      t.references :post, index: true

      t.timestamps
    end
      unless index_exists? :index_votes_on_user_id
        add_index :votes, :user_id
      end
      unless index_exists? :index_votes_on_post_id
        add_index :votes, :post_id
      end
  end
end