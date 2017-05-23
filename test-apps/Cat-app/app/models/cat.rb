class Cat < ApplicationRecord
  has_many :images


  def image_check
    image_collection = images
    if image_collection.length == 0 || image_collection.first.url == ""
      "http://s.quickmeme.com/img/a8/a8022006b463b5ed9be5a62f1bdbac43b4f3dbd5c6b3bb44707fe5f5e26635b0.jpg"
    else
      image_collection.first.url
    end
  end
end
