class Task < ApplicationRecord
  enum priority: [ :low, :medium, :high ]
end
