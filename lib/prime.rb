class Integer
    def is_prime? # instance method
        return false if self <= 1
        i = 2
        while (i <= (Math.sqrt(self)))
            return false if self % i == 0
            i += 1
        end
        return true
    end
   
    def self.list_prime_upto(num) # class method
        return false unless num.is_a? Integer
        prime_list = []
        (1..num).each do |n|
            next unless n.is_prime?
            prime_list << n
        end
        prime_list
    end
    puts 'prime upto 10'
    puts Integer.list_prime_upto(10)
   
    def fact
        return 1 if self == 0
        return (self * (self - 1).fact) # formula n*(n-1)
    end
   
    puts 'factorial of 5'
    puts 5.fact
   
    def fibonacci
        return 'Enter positive number' if self < 0
        return 1 if self <= 1
        return ((self - 2).fibonacci + (self - 1).fibonacci)
    end
   
    def self.list_fibonacci_upto(num)
        return 'Enter integer to get fibonacci sequence' unless num.is_a? Integer
        fibo_seq = []
        (1..num).each { |n| fibo_seq << (n.fibonacci) }
        fibo_seq
    end
    puts 'fibonacci upto 10'
    puts Integer.list_fibonacci_upto(10)
end
