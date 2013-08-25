class AddTweetCategories < ActiveRecord::Migration
  def up
    create_table :categories do |t|
      t.string :name
    end

    create_table :categorizations do |t|
      t.integer :tweet_id
      t.integer :category_id
    end
    
    add_index :categorizations, :tweet_id
    add_index :categorizations, :category_id

  end

  def down
    drop_table :categories
    drop_table :categorizations
  end
end
