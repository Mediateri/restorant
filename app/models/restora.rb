class Restora < ApplicationRecord
    belongs_to :user, optional: true
    mount_uploader :image, ImageUploader
    has_many :break_fasts, dependent: :destroy
    has_many :lunches, dependent: :destroy
    accepts_nested_attributes_for :break_fasts, :lunches, reject_if: :all_blank, :allow_destroy => true
end
