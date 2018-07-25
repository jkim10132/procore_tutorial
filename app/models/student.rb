class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: %i[google_oauth2]
  belongs_to :team, optional: true
  has_many :challenge_statuses
  has_and_belongs_to_many :courses
end
