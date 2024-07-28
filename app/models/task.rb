class Task < ApplicationRecord
  enum priority: { low: 'low', medium: 'medium', high: 'high' }
end
