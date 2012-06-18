class CreateSpreeNews < ActiveRecord::Migration
  def change
    create_table :spree_news do |t|

      t.timestamps
    end
  end
end
