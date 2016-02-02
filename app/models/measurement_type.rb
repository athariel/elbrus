class MeasurementType < ActiveRecord::Base
  def self.gram
   @@gram ||= where(name: 'gram').first
  end
end
