extends LetterChecker
class_name PunctuationChecker

@export var punctuation_to_watch: String = ".!?"
@export var spaces_to_check: int = 3


var uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

func calculate_score(letter_text: String) -> int:
	var score = 0
	var spaces_left = spaces_to_check
	var checking = false
	
	if active:
		print("Punctuation Check")
		for ch in letter_text:
			if checking:
				spaces_left -= 1
				print("spaces Left")

				if spaces_left <= 0: # Failed to find
					score -= fail_penaulty
					checking = false
					
				if ch in uppercase: # Found an uppercase letter
					checking = false
					score += success_score
					
			if ch in punctuation_to_watch.replace(" ",""):
				print("Checking")
				checking = true
				spaces_left = spaces_to_check

	return score
