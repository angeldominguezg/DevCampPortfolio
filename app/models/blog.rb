class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId 
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body
  has_one :topic

  def self.special_blogs
    limit(2)
  end
end
