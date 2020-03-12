class Author

    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select{|p| p.author == self}
    end

    def add_post(p)
        p.author = self
    end

    def add_post_by_title(t)
    po = Post.new(t)
    po.author = self
    end

    def self.post_count
    Post.all.length
    end
    
end