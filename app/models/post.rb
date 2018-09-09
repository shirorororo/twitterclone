class Post < ApplicationRecord
    validates :content, length: { in: 1..140 } 
    validates :user_id, {presence: true}
    belongs_to :user
end
