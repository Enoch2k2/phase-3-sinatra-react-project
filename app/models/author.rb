class Author < ActiveRecord::Base
  has_many :blogs

  validates :name, presence: true, uniqueness: true
end