class PersonGroup < ApplicationRecord
  belongs_to :person
  belongs_to :group
end
