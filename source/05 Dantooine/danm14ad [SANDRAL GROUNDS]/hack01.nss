void main() {
	ActionAttack(GetObjectByTag("dan14_shen", 0), 0);
	DelayCommand(0.1, CancelCombat(OBJECT_SELF));
}

