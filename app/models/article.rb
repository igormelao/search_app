require 'elasticsearch/model'

class Article < ActiveRecord::Base
  searchkick

  validates_presence_of :title, :description
end
