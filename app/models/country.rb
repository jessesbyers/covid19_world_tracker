class Country < ApplicationRecord
    has_many :charts

    validates :name, presence: true
    validates :slug, presence: true
    validates :data_url, presence: true
end
