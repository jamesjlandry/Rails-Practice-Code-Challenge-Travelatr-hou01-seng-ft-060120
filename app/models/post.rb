class Post < ApplicationRecord
    validates :content, presence: true, length: {minimum: 100}
    belongs_to :blogger
    belongs_to :destination
end
