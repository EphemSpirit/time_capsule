class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :build_dashboard

  validates :name, :username, :email, presence: true

  has_one :dashboard, dependent: :destroy
  has_many :entries, class_name: "Journal", foreign_key: :author_id, dependent: :destroy
  has_many :pictures, dependent: :destroy

  private

    def build_dashboard
      Dashboard.create(user_id: self.id)
    end

end
