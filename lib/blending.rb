module Blending
  case self.class
  when Apple
    after_save :make_juice
  end

  def make_juice
    puts "Making juice."
  end
end
