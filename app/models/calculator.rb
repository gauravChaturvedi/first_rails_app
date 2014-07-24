#Performs calculation on the given input
class Calculator < ActiveRecord::Base

  def + value
    self.state += value
    self.save
    self.state
  end

  def - value
    self.state -= value
    self.save
    self.state
  end

  def * value
    self.state *= value
    self.save
    self.state
  end

  def / value
    self.state /= value
    self.save
    self.state
  end


end
