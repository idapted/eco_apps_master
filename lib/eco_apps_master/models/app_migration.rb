class AppMigration < ActiveRecord::Migration
  def self.up
    create_table :apps do |t|
      t.string :name, :url
      t.text :database, :api
      t.timestamps
    end
    add_index :apps, :name
  end

  def self.down
    drop_table :apps
  end
end

AppMigration.up unless App.table_exists?
