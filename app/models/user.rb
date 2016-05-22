class User < ActiveRecord::Base
  devise :rememberable, :recoverable, :validatable, :registerable, :database_authenticatable
end
