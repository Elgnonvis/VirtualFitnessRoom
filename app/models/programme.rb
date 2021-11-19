class Programme < ApplicationRecord
  belongs_to :user
  has_many :sessions, dependent: :destroy
  accepts_nested_attributes_for :sessions, reject_if: :all_blank, allow_destroy: true
end
