class Layer < ActiveRecord::Base
	has_many :protocols
  attr_accessible :description, :nome
  validates :nome, :presence => true
end
