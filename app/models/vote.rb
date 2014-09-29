class Vote < ActiveRecord::Base
  # validates
  belongs_to :review

end
