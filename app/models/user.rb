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
end
