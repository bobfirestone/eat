class Restaurant
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, :type => String
  field :url_slug, :type => String
  field :address, :type => String
  field :phone, :type => String
  field :website, :type => String
  field :description, :type => String
  field :menu
  key :url_slug

  validates_format_of :url_slug, with: /[A-Za-z]/
  validates_uniqueness_of :url_slug
  validates_presence_of :name, :url_slug, :address, :phone

  belongs_to :user
  embeds_many :menu_items

end
