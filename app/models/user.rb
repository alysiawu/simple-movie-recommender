require './lib/recommendation.rb'

class User < ApplicationRecord
    has_many :liked_movies
    has_many :movies, through: :liked_movies
    include Recommendation
end
