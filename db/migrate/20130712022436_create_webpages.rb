class CreateWebpages < ActiveRecord::Migration
  def change
    create_table :webpages do |t|
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
