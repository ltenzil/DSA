class ABC
  def xyz
    puts "xyz in ABC"
  end
end

ABC::new::xyz
ABC::new.xyz
ABC.new::xyz
ABC.new.xyz

# All commands are working fine

# TO check whether a variable is defined or not
defined? hi
