class Country < ApplicationRecord
    has_many :charts

    # add backend validations
end
