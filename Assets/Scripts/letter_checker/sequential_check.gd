extends LetterChecker
class_name SequentialCheck

@export var squential_num: int # Number of times a letter has to repeat for it to fail

func calculate_score(letter_text: String) -> int:
	var score = 0
	var sequential_ticker = 0
	var sequential_ch = ""
	
	if active:
		for ch in letter_text:
			if ch == sequential_ch:
				sequential_ticker += 1
			else:
				sequential_ch = ch
				sequential_ticker = 0
			
			if sequential_ticker >= squential_num:
				score -= fail_penaulty
				sequential_ticker = 0
			
	return score
