class Item < ActiveRecord::Base
  attr_accessible :aisle_id, :name

  belongs_to :aisle

  validates :aisle_id, :name, presence: true
end
