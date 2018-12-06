class Pkhd < ApplicationRecord
	has_many :pkdts, dependent: :destroy
	accepts_nested_attributes_for :pkdts, allow_destroy: true, reject_if: lambda{|attributes|attributes['keterangan'].blank?}
end