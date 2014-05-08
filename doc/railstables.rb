class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :format
      t.date :released
      t.string :credits
      t.string :notes
      t.string :cover
      t.int :artist_id
 
      t.timestamps
    end
  end
end

class CreateArtits < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :bio
      t.int :album_id
 
      t.timestamps
    end
  end
end

class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.int :position
      t.string :title
      t.string :details
      t.int :album_id
 
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
      t.int :rightsholders_id
 
      t.timestamps
    end
  end
end

class CreateRightholders < ActiveRecord::Migration
  def change
    create_table :rightsholders do |t|
      t.string :name
      t.double :rate
      t.int :address_id
      i.int :label_id
 
      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :login_id
 
      t.timestamps
    end
  end
end

class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :type
      t.string :format
      t.int :demand
      t.boolean :available
 
      t.timestamps
    end
  end
end

class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.int :paymentmethod_id
      t.int :item_id
      i.int :user_id
 
      t.timestamps
    end
  end
end

class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.string :name
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.int :zipcode
      t.string :country
      
      t.timestamps
    end
  end
end

class CreatePaymentmethods < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :type
      t.int :identifier
      t.string :validation
      t.date :expires
      t.int :address_id
 
      t.timestamps
    end
  end
end
