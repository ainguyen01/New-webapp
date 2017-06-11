class Dislike < ApplicationRecord


    belongs_to :user
    belongs_to :copay

    validates :user, :presence => true
    validates :copay, :presence => true

end
