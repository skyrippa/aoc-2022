highest_total_cals = 0
current_total_cals = highest_total_cals

File.readlines('input.txt').each do |cal|
  current_total_cals += cal.to_i
  if cal == "\n"
    if current_total_cals > highest_total_cals
      highest_total_cals = current_total_cals
    end
    current_total_cals = 0
  end
end

puts highest_total_cals
