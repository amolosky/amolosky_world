class Article < ActiveRecord::Base

belongs_to :category

  scope :alphabetical, order('title')
  scope :active, where('active = ?', true)


end
