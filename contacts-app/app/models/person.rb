class Person < ApplicationRecord
  belongs_to :user
  has_many :person_groups
  has_many :groups, through: :person_groups

  def friendly_updated_at
    updated_at.strftime("%A, %b %d %Y")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def find_groups
    groups.map {|g| g.name}.join(", ").titleize
  end

end
