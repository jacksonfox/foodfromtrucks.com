class Truck < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :name, :user

  has_attached_file :photo, :styles => { :listing => "150x100#" }
end
