class Collection < ApplicationRecord
    has_many :charts

    validates :name, presence: true
    validates :summary, presence: true
end
