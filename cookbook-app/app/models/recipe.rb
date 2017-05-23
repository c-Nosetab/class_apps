class Recipe < ApplicationRecord
  belongs_to :user
  has_many :category_recipes

  def ingredient_list
    ingredients.split(", ")
  end

  def direction_list
    directions.split(', ')
  end

  def friendly_updated_at
    updated_at.strftime("%A, %b %d %Y")
  end

  def friendly_prep_time
    hours = prep_time / 60
    minutes = prep_time % 60
    time_message = ""
    time_message += "#{hours} #{"Hour".pluralize(hours)}" if hours > 0
    time_message += ", " if hours > 0 && minutes > 0
    time_message += "#{minutes} #{"Minute".pluralize(minutes)}" if minutes > 0
    time_message
  end

  def chef
    user.name
  end

end
