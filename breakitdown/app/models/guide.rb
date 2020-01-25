class Guide < ApplicationRecord
  has_many :chunks, inverse_of: :guide
  accepts_nested_attributes_for :chunks, :reject_if => :all_blank, :allow_destroy => true
end
