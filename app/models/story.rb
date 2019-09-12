class Story < ApplicationRecord
    belongs_to :user
    has_many :comments

    def created_at
        attributes['created_at'].strftime("%m/%d/%Y")
    end

    def test
        attributes['body'].truncate(10)
    end
end
