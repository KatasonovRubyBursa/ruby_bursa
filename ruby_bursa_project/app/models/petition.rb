class Petition < ActiveRecord::Base
  belongs_to :user
  has_many   :votes

  def already_voted?(user)
    votes.where(user_id: user.id).any?
  end
end
