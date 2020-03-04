class Parent
  def say(message)
    p " parent: #{message}" 
  end
end

class Child < Parent
  def say(message)
    super
  end
end

Child.new.say("First message")

class P1
  def say
    p "I'm the parent"
  end
end

class C1 < P1
  def say(message)
    super
  end
end

C1.new.say('Hi! from Child, rescued') rescue "Error"


class P2
  def say
    p "I'm the parent"
  end
end

class C2 < P2
  def say(message)
    super()
  end
end

C2.new.say('Hi!')

"Ancestor Chain"

class GP
  def say(message)
    p "GrandParent: #{message}"
  end
end

class P < GP
end

class C < P
  def say(message)
    super
  end
end

C.new.say('Hi child!') # => "GrandParent: Hi Rubyist!"


"Super with Blocks"

class Pb
  def say
    yield
  end
end

class Cb < Pb
  def say
    super
  end
end

Cb.new.say { p 'Hi! Glad to know you Parent!' } # => "Hi! Glad to know you Parent!"