extends Node

@onready var text: TextEdit = $"../../Tester Container/LetterText"

func _on_letter_text_text_changed() -> void:
	evaluate_score()

func evaluate_score() -> void:
	var final_score = 0
	for child: Node in get_children():
		if child is LetterChecker:
			final_score += child.calculate_score(text.text)
	print(final_score)
