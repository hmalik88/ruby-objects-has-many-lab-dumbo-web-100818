class Author
	@@post_count = 0
	attr_accessor :name 
	attr_reader :posts
	def initialize(name)
		@name = name
		@posts = []
	
	end
	def add_post(post)
		post.author = self
		@posts << post 
		@@post_count += 1
	end
	def add_post_by_title(post)
		new_post = Post.new(post)
		add_post(new_post)
	end
	def self.post_count
		@@post_count
	end

end
