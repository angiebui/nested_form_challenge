class Question < ActiveRecord::Base
  attr_accessible :survey_id, :body, :options_attributes

  belongs_to :survey
  has_many :options
  has_many :responses

  accepts_nested_attributes_for :options

end
