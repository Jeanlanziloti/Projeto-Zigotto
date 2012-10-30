class Protocol < ActiveRecord::Base
  belongs_to :layer
  attr_accessible :description, :name, :layer_id
  validates :name, :layer, :presence => true
end
