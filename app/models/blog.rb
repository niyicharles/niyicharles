class Blog < ActiveRecord::Base
  attr_accessible :title, :location, :date_of_event, :emphasis, :author, :photographer, :information, :tags, :category_id, :photo

  validates_uniqueness_of :title
  validates_presence_of :title, :information
end

