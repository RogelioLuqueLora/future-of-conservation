# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  text       :text
#  x_weight   :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  y_weight   :float
#  short_code :string
#

class Question < ApplicationRecord
  has_paper_trail

  validates_numericality_of :x_weight, :y_weight,
    greater_than_or_equal_to: -4.0,
    less_than_or_equal_to: 4.0,
    message: "Weighting must be a decimal value between -4.0 and 4.0"
end

