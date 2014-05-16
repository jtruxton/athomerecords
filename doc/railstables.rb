class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :format
      t.date :released
      t.string :credits
      t.string :notes
      t.string :cover
      t.integer: genre_id 
      t.timestamps
    end
  end
end

class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :bio
 
      t.timestamps
    end
  end
end
class CreateProduces < ActiveRecord::Migration
  def change
     create_table: produces do |t|
	t.belongs_to :artist
 	t.belongs_to :album
        t.belongs_to: label
class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.belongs_to : album
      t.integer :position
      t.string :title
      t.string :details
 
      t.timestamps
    end
  end
end

class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :name
 
      t.timestamps
    end
  end
end

class CreateLabels < ActiveRecord::Migration
  def change
    create_table :lables do |t|
      t.string :name
      t.integer :rightsholders_id
 
      t.timestamps
    end
  end
end

class CreateRightholders < ActiveRecord::Migration
  def change
    create_table :rightsholders do |t|
      t.belongs_to :label
      t.string :name
      t.decimal :rate
      t.integer :address_id
 
 
      t.timestamps
    end
  end
end


class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :type
      t.string :format
      t.integer :demand
      t.integer :stock	
      t.boolean :available
 
      t.timestamps
    end
  end
end

class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :paymentmethod_id
      t.integer :item_id
      t.integer :user_id
 
      t.timestamps
    end
  end
end

class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.belongs_to: user
      t.string :name
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :country
      
      t.timestamps
    end
  end
end

class CreatePaymentmethods < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.belongs_to:user
      t.string :type
      t.integer :identifier
      t.string :validation
      t.date :expires
      t.integer :address_id
 
      t.timestamps
    end
  end
end
