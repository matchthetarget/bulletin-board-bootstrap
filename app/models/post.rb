# == Schema Information
#
# Table name: posts
#
#  id             :integer          not null, primary key
#  body           :text
#  title          :string
#  valid_for_days :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  board_id       :integer
#
class Post < ApplicationRecord
end
