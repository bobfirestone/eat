class MenuItem
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, :type => String
  field :price, :type => String
  field :description, :type => String
  field :position, :type => Integer
  field :available, :type => Boolean
  field :heading, :type => Boolean, :default => false
  field :image, :type => String

  embedded_in :restaurant

  scope :on_menu, -> {where(available: true)}
  default_scope order_by(:position => :asc)
end
