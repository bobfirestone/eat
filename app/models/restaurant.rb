class Restaurant
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  field :url_slug
  field :address
  field :phone
  field :website
  field :description
  field :sunday
  field :monday
  field :tuesday
  field :wednesday
  field :thursday
  field :friday
  field :saturday
  field :parking
  field :cash, type: Boolean, default: false
  field :visa, type: Boolean, default: false
  field :master, type: Boolean, default: false
  field :amex, type: Boolean, default: false
  field :discover, type: Boolean, default: false
  field :jcb, type: Boolean, default: false
  field :diners_club, type: Boolean, default: false
  field :delivery

  key :url_slug

  validates_format_of :url_slug, with: /[A-Za-z]/
  validates_uniqueness_of :url_slug
  validates_presence_of :name, :url_slug, :address, :phone

  belongs_to :user
  embeds_many :menu_items
  embeds_many :specials

end
