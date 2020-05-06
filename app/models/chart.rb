class Chart < ApplicationRecord
    belongs_to :collection
    belongs_to :chart

    # add backend validations
end
