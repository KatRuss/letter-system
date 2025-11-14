@abstract
extends Node 
class_name LetterChecker

@export var active: bool
@export var success_score: int
@export var fail_penaulty: int

@abstract
func calculate_score(letter_text: String) -> int
