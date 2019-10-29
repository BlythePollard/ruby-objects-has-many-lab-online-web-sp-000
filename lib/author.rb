require 'pry'
#has many posts
class Author
  attr_accessor :name, :post, :title
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
  end
  
  def posts
    binding.pry
    Post.all.select {|post| post.author == self}
  end
  
  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
  end
  
  def self.post_count
    Post.all.count
  end
end