class Bookmark < ActiveRecord::Base
  attr_accessible :url, :name, :date_saved
  validates :url,  :presence =>true,
                        :length => { :minimum =>10 }
  validates :url,  :presence =>true,
                        :length => { :maximum =>99 }
end
