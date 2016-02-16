local_var = "lol"

def get_local_var
  local_var = "rats"
  return local_var
end

p get_local_var

class BasicClass
  @@class_var = "WILL THIS WORK!?!?!?!?!?!??!"

  def initialize
    @instance_var = "cats"
  end

  def get_instance_var
    @instance_var
    return @instance_var
  end

  def get_local_var
    local_var = "rats"
    return local_var
  end

  def set_instance_var=(arg)
    @instance_var = arg
  end

  def self.class_var
    return @@class_var
  end

  def self.class_var=(thing)
    @@class_var = thing
  end
end

basic1 = BasicClass.new
basic1.set_instance_var='basic1'

basic2 = BasicClass.new
basic2.set_instance_var='basic2'

p basic1.get_instance_var
p basic2.get_instance_var

basic1.class_var = "I am different"
p basic1.class_var

basic2.class_var = "NO YOU ARE NOT"
p basic2.class_var

basic3 = BasicClass.new
p basic3.class_var

