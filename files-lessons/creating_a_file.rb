File.open("files-lessons/teams.txt", 'w+') { |f| f.write("Twins, Astros, Mets, Yankees") }

# r stands for reading
# a stands for appending to a file
# w stands for just writing to a file
# w+ stands for reading and writing to a file
# a+ stands for opening a file for reading and appending
# r+ stands for opening a file for updating, and includes both reading and writing.

# file_to_save = File.new("files-lessons/other_teams.txt", 'w+')
# file_to_save.puts("A's, Diamondbacks, Mariners, Marlins")
# file_to_save.close