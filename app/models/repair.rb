class Repair < ActiveRecord::Base
  include Workflow
  workflow do 
    state :not_started do
      event :started, transitions_to: :in_progress
    end
    state :in_progress do
      event :finishing, transitions_to: :finished
    end
    state :finished
  end
end
