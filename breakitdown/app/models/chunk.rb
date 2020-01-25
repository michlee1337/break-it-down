class Chunk < ApplicationRecord
  belongs_to :guide
  has_many :blocks, inverse_of: :chunk
  accepts_nested_attributes_for :blocks, :reject_if => :all_blank, :allow_destroy => true

end
