class Lunch < ApplicationRecord
  belongs_to :restora, optional: true
end
