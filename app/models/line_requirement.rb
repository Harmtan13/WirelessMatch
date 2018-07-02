class LineRequirement < ApplicationRecord
  belongs_to :user_line, optional: true
end
