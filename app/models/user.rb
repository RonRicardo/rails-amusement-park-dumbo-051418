class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides
  validates :password, presence: true

  def mood
    if nausea > happiness
      return 'sad'
    elsif
      nausea < happiness
      return 'happy'
    end
  end

end
