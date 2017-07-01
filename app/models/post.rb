class Post < ApplicationRecord
  belongs_to :sub_category, optional: true
  has_attached_file :image,
              styles: {large: "300x300"},
            :default_url => " /Users/Mukhamed/Downloads/instagram-master/app/assets/images/"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
