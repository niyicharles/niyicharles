class Blog < ActiveRecord::Base
  attr_accessible :title, :location, :date_of_event, :emphasis, :author, :photographer, :information, :tags, :category_id, :photo

  has_attached_file :photo, :styles => { :thumbnail => "100x100>", :slimshot => "114x114>",
                    :portrait => "150x150>", :snapshot => "200x200", :medium => "184x184>",
                    :standard => "300x300>", :preview => "500x500>" },
  					        :url => "/assets/blogs/:id/:style/:basename.:extension",
  					        :path => ":rails_root/public/assets/blogs/:id/:style/:basename.:extension"

  validates_uniqueness_of :title
  validates_presence_of :title, :information

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 500.kilobytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/jpg', 'image/gif', 'image/png']
end

