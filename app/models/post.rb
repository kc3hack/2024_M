class Post < ApplicationRecord
    validates :userid, {presence: true}
end
