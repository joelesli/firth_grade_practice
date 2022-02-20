
def question_number(i)
    i.to_s + ". "
end

def terms(numbers, operations, terms, number_of_questions)
    (1..number_of_questions).each do |i|
        calculation = numbers.shuffle.first.to_s
        terms_to_use = (1..terms).to_a.shuffle.first
        (1..terms_to_use).each do |j| 
            calculation = calculation + " " + operations.shuffle.first + " " + numbers.shuffle.first.to_s 
        end
        
        puts question_number(i) + calculation + " = "
    end
end

def division(dividend, divisor)
    dividend + " : " + divisor
end

def parenthesis_term(term1, term2)
    "( " + term1.to_s + " + " + term2.to_s + " )"
end

def addition(number_of_questions)
    terms((1..99).to_a, ["+"], 5, 20)    
end

def substraction
        substraction_terms = (1..99).to_a.shuffle.first(2).sort!.reverse
        substraction_terms.join(" - ")
end

def substraction_questions(number_of_questions)
    (1..number_of_questions).each do |i|
        substraction_terms = (1..99).to_a.shuffle.first(2).sort!.reverse
        puts question_number(i) + substraction() + " = "
    end
end

def add_sub
    substractions_to_add = (1..3).to_a.shuffle.first
    calc = substraction()
    (1..substractions_to_add).each { |i| calc = calc + " " + substraction()}
    calc
end

def add_sub_questions(number_of_questions)
    (1..number_of_questions).each do |i|
        puts question_number(i) + add_sub() + " = "
    end
end

def multiplication(number_of_questions)
    terms((1..99).to_a, ["∙"], 3, 20)    
end

def division_questions(number_of_questions)
    (1..number_of_questions).each do |i|
        dividen_array_length = (2..5).to_a.shuffle.first
        dividend = (1..99).to_a.shuffle.first(dividen_array_length)
        divisor = dividend.first((1..dividen_array_length).to_a.shuffle.first)
        puts question_number(i) + division(dividend.reject(&:zero?).inject(:*).to_s,divisor.reject(&:zero?).inject(:*).to_s) + " = "
    end
end

puts "\n"
puts "Solve the following additions."
addition(10)

puts "\n"
puts "Solve the following subtractions."
substraction_questions(10)

puts "\n"
puts "Solve the following addition and subtractions."
add_sub_questions(10)

puts "\n"
puts "Solve the following multiplications."
multiplication(10)

puts "\n"
puts "Solve the following division."
division_questions(10)


# puts "\n"
# puts "Solve the following division."
# terms((1..99).to_a, ["-", "+", ":", "∙"], 8, 10)