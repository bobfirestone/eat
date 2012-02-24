class Restaurant
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, :type => String
  field :url_slug, :type => String
  field :address, :type => String
  field :phone, :type => String
  field :website, :type => String
  field :description, :type => String
  field :sunday, :type => String
  field :monday, :type => String
  field :tuesday, :type => String
  field :wednesday, :type => String
  field :thursday, :type => String
  field :friday, :type => String
  field :saturday, :type => String

  key :url_slug

  validates_format_of :url_slug, with: /[A-Za-z]/
  validates_uniqueness_of :url_slug
  validates_presence_of :name, :url_slug, :address, :phone

  belongs_to :user
  embeds_many :menu_items
  embeds_many :specials

end
