class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def print_status
    if self.active
      puts 'active'
    else
      puts 'inactive'
    end
  end
end
