class Post < ApplicationRecord
    has_rich_text :content
    validate_presence_of :title
end
