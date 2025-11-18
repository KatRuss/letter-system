extends LetterChecker
class_name RunOnCheck

@export var punctuation_to_watch: String = ".!?"
@export var run_on_num: int

func calculate_score(letter_text: String) -> int:
	var score = 0
	
	var ch_ticker = 0
	
	for ch in letter_text:
		if ch in punctuation_to_watch:
			ch_ticker = 0
		else:
			ch_ticker += 1
		
		if ch_ticker >= run_on_num:
			score -= fail_penaulty
	
	return 0
