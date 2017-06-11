class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :copay

validates :user, :presence => true
validates :copay, :presence => true
validates :body, :presence => true
end
