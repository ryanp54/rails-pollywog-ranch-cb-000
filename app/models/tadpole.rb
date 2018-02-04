class Tadpole < ActiveRecord::Base
  belongs_to :frog
  delegate :pond, to: :frog

  def metamorphose
  	frog_self = Frog.create({name: name, color: color, pond: pond})
  	self.destroy
  	frog_self
  end

end
