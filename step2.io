d := Date clone
x := (d now asNumber) - (d now asNumber floor)
n := (20 * x) floor

correct := false

while(correct not,
	# https://github.com/toumorokoshi/snippets/blob/6bfc309e4159615e5ae95983fafbbe76e7563b68/seven_languages_seven_weeks/io/day_2_game.io#L2
# I had no idea how to get input before searching for Io code on github
	"Guess a number between 1 and 20:" println
	guess := Number evalArg(File standardInput readLine) asNumber
	correct = guess == n
	if(guess < n,
		"Too low" println)
	if(guess > n,
		"Too high" println)
	)
"Correct!" println
