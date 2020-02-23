class LT

	attr_accessor :name, :age
	
	def initialize(name, age, legs)
		@name = name
		@age = age
	end

	
	def run
		"I am running"
	end

	def sleep
		"I am sleeping"
	end	

	def eat
		"I am eating"
	end

	def dream
		"I am dreaming"
	end

	def count_legs
		"I have #{@legs} legs"
	end
end


class Human < LT
	attr_accessor :legs
	def initialize(name, age, legs)
		super
		@legs = legs
	end
end

class Animal < LT
	attr_accessor :legs
	def initialize(name, age, legs)
		super
		@legs = legs
	end	
	
end


Dir.getwd
 # => "/home/ltenzil" 
Dir.chdir("freshworks")
 # => 0 
Dir.getwd
 # => "/home/ltenzil/freshworks" 
Dir.pwd
 # => "/home/ltenzil/freshworks" 
f = [Dir.pwd, "lib/lt.rb"].join('/')
 # => "/home/ltenzil/freshworks/lib/lt.rb" 
File.exists? f
 # => true 
File.file? f
 # => true 
File.size? f
 # => 507 
File.size f
 # => 507 
File.readable? f
 # => true 
File.executable? f
 # => false 
File.world_readable? f
 # => 436 
File.world_writable? f
 # => nil 
File.mtime f
 # => 2020-02-23 09:49:06 +0530 
File.atime f
 # => 2020-02-23 09:49:07 +0530 
File.atime f
 # => 2020-02-23 09:49:07 +0530 
File.atime f
 # => 2020-02-24 01:03:36 +0530 
File.mtime f
 # => 2020-02-24 01:03:34 +0530 
File.stat f
 # => #<File::Stat dev=0x801, ino=32509570, mode=0100664, nlink=1, uid=1000, gid=1000, rdev=0x0, size=504, blksize=4096, blocks=8, atime=2020-02-24 01:03:36 +0530, mtime=2020-02-24 01:03:34 +0530, ctime=2020-02-24 01:03:34 +0530> 
Dir.pwd
 # => "/home/ltenzil/freshworks" 
File.open("test.txt", "w") {}

 # => nil 
File.rename("test.txt", "test.txt.old") 
 # => 0 
File.symlink("test.txt.old", "oldtest.txt") 
 # => 0 
File.symlink?("oldtest.txt")
 # => true 
File.delete("oldtest.txt")
 # => 1 

# File.open("test",^Cw")
	# asdsa

