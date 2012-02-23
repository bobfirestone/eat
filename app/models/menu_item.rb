class MenuItem
  include Mongoid::Document
  field :name, :type => String
  field :price, :type => Float
  field :description, :type => String
  field :priority, :type => Integer
  embedded_in :restaurant
end
