class Post < ApplicationRecord
    validates :title, presence: true
    validates :start_at, presence: true
    validates :end_at, presence: true
    validates :memo, length: {maximum: 100}
end
