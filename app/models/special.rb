class Special
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, :type => String
  field :description, :type => String
  field :start_date, :type => Date
  field :end_date, :type => Date
  field :active, :type => Boolean

  embedded_in :restaurant

  scope :special_active, where(active: true)
  scope :ended, -> { where(:end_date.gte => Date.today)}
end
