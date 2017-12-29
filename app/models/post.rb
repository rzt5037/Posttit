class Post < ActiveRecord::Base
  has_many :comments
  for i in 1..(Post.all.count)
    if (i - 1) % 5 == 0
      Post.update(i, title: "SPAM")
    end
  end
end
