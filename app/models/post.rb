class Post < ApplicationRecord
  acts_as_voteable
  belongs_to :user
  has_attached_file :image,:path => ':rails_root/public/system/abstracts/:attachment/:filename',
                    :url => '/system/abstracts/:attachment/:filename', :style => {:large => "750x750", :medium => "300x300>", :thumb =>"100x100>"}
  validates_attachment_content_type :image, :content_type => %w(image/jpg image/jpeg image/png image/gif image/webp), present:true

end
