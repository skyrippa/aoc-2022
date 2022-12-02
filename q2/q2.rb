total_cals_by_elf = []
current_total_cals = 0

File.readlines('input.txt').each do |cal|
  current_total_cals += cal.to_i
  if cal == "\n"
    total_cals_by_elf.append current_total_cals
    current_total_cals = 0
  end
end

puts total_cals_by_elf.sort.reverse[0..2].sum
