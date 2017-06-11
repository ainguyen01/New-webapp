class Copay < ApplicationRecord

  def self.search(search)
    where("name LIKE ? ", "%#{search}%")
  end

  belongs_to :user, :required => false
  has_many :comments, :dependent => :destroy
  has_many :dislikes, :dependent => :destroy
  has_many :thumbs_downs, :through => :dislikes, :source => :user

  validates :user, :presence => true
  validates :copay, :presence => true,:uniqueness => { :scope => [:name, :pay_as_little_as] }
end
