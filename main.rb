# Name Mangler

@name = "Johanna Jackson"

# reverse the name or replace it with "borg"
def modified_name(choose)
  split_name = @name.split
  reversed_name_components = split_name.reverse
  new_name1 = reversed_name_components.join(' ')
  @name = new_name1
  puts new_name1
  # can either split a name into a first and last name or add "Borg" to the end
  if choose
    split_name2 = new_name1.split
    reversed_name_components2 = split_name2.reverse
    reversed_name_components2 << "Borg"
    new_name2 = reversed_name_components2.join(' ')
    puts new_name2
    @name = new_name2
  end
  return @name
end

puts "New name: #{modified_name(false)}"
puts "New borg name: #{modified_name(true)}"