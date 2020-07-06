class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def avg_age
        age = 0
        self.bloggers.each do |blogger|
            age = blogger.age + age
            
        end
    avg = age/self.bloggers.length
    end

    def best_post
        most_liked = 0
        f_post = nil
        self.posts.each do |post|
           
            if post.likes > most_liked
                most_liked = post.likes
                f_post = post.title
            end
        end
        f_post
        
    end
end
