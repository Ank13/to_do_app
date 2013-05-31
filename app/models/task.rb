class Task < ActiveRecord::Base
  belongs_to :list

  def complete
    self.completed_at = Time.now
  end

end
