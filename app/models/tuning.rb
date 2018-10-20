# frozen_string_literal: true

class Tuning < ApplicationRecord
  belongs_to :user, optional: true
end
