def minilang(program)

	register = 0
	commands = program.split.reverse
	stack = []
	current_method = nil

	while !commands.empty? do

		case next_command = commands.pop
		when 'PRINT' 	then puts register
		when 'PUSH' 	then stack.push(register)
		when 'POP' 		then register = stack.pop
		when 'MULT' 	then register *= stack.pop
		when 'SUB' 		then register -= stack.pop
		when 'DIV' 		then register /= stack.pop
		when 'MOD' 		then register %= stack.pop
		when 'ADD' 		then register += stack.pop
		else							 register = next_command.to_i
		end
		
	end

end

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)