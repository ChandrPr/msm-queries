# == Schema Information
#
# Table name: characters
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def actor
    Actor.where({ :id => self.actor_id })[0]
  end
  def movie
    Movie.where({ :id => self.movie_id })[0]
  end
end
