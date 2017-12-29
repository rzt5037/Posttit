class PostsController < ApplicationController
  def index
    p Post.find(1)
    p Post.all.count
    for i in 1..(Post.all.count)
      if (i - 1) % 5 == 0
        Post.update(i, title: "SPAM")
      end
    end
    @posts = Post.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
