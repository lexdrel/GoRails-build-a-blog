class BlogPost < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  scope :draft, -> { where(published_at: nil) }
  scope :published, -> { where("published_at <= ?", Time.current) }
  scope :scheduled, -> { where("published_at > ?", Time.current) }
end

# BlogPost.all is a default scope
# BlogPost.draft is a another scope
# BlogPost.published is a another scope
# BlogPost.scheduled is a another scope
