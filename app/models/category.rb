class Category < ActiveRecord::Base
  has_many :photos
  has_many :articles
  
    # make sure required fields are present
  validates_presence_of :title, :content

  
  scope :active, where('active = ?', true)
  scope :alphabetical, order('name')
  
  
end
