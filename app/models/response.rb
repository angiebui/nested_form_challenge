class Response < ActiveRecord::Base
  attr_accessible :option_id, :question_id, :option

  belongs_to :option
  belongs_to :question

end
