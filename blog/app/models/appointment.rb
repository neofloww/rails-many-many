class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient, counter_cache: true
end
