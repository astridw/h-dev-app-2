class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

    #  validates :name, presence: true
     belongs_to :player

    rails_admin do
    configure :player do
      label 'Owner of this ball: '
    end
  end
end
