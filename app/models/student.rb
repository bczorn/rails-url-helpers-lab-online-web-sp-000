class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_status
    if self.active == true
      "This student is currently active."
    else
      "This student is currently inactive."
    end
  end

  def activate_student
    self.active = !self.active
  end

end