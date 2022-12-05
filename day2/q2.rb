possible_outcomes = {
  :"A X\n" => 3,
  :"A Y\n" => 4,
  :"A Z\n" => 8,
  :"B X\n" => 1,
  :"B Y\n" => 5,
  :"B Z\n" => 9,
  :"C X\n" => 2,
  :"C Y\n" => 6,
  :"C Z\n" => 7,
}
my_score = 0

File.readlines('input.txt').each do |play|
  my_score += possible_outcomes[play.to_sym] unless play.chomp.empty?
end

puts my_score
