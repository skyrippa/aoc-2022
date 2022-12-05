require 'pry'

possible_outcomes = {
  :"A X\n" => 4,
  :"A Y\n" => 8,
  :"A Z\n" => 3,
  :"B X\n" => 1,
  :"B Y\n" => 5,
  :"B Z\n" => 9,
  :"C X\n" => 7,
  :"C Y\n" => 2,
  :"C Z\n" => 6,
}
my_score = 0

File.readlines('input.txt').each do |play|
  my_score += possible_outcomes[play.to_sym] unless play.chomp.empty?
end

puts my_score
