# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  birthday   :date
#  full_name  :string
#  gender     :integer
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  enum gender: { male: 0, female: 1 }

  validates :birthday, presence: true
  validates :full_name, presence: true, length: {minimum: 4, maximum: 20}, uniqueness: true
  validates :image_url, presence: true, length: {minimum: 10}
  validates :gender, presence: true
end
