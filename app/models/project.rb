class Project < ApplicationRecord
  belongs_to :ranking
  # acts_as_list scope: :ranking
  has_many :bookmarks


  def bookmark_for(user)
    bookmarks.find_by(user: user)
  end
end
