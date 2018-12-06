class Pulsa < ActiveRecord::Base
  belongs_to :orderpulsa
  validates_presence_of :name
end