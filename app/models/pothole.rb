class Pothole < ActiveRecord::Base
  STATUS_CODES = %w[reported acknowledged fixed wont-fix error].freeze

  def status=(val)
    self['status'] = val if STATUS_CODES.include?(val)
  end
end
