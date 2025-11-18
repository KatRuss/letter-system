extends LetterChecker
class_name SpaceRatioChecker

@export var failure_percent: float
@export var success_percent: float

func calculate_score(letter_text: String) -> int:
	var spaces = 0
	var non_spaces = 0
	
	for ch in letter_text:
		if ch == " ":
			spaces += 1
		else:
			non_spaces += 1
	
	if non_spaces == 0:
		return -fail_penaulty
		
	var ratio = (spaces*100.0)/non_spaces
	print(ratio)
	if ratio >= failure_percent:
		return -fail_penaulty
	elif ratio <= success_percent:
		return success_score
	else:
		return 0
