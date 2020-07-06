class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    def total_likes
        t_likes = 0
        self.posts.each do |post|
            t_likes = post.likes + t_likes
        end
        t_likes
    end

    def featured
        most_liked = 0
        f_post = nil
        self.posts.each do |post|
           
            if post.likes > most_liked
                most_liked = post.likes
                f_post = post.content
            end
        end
        f_post
    end
end
