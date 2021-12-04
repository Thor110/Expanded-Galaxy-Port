void main() {
	DelayCommand(0.5, AssignCommand(GetObjectByTag("WC02", 0), ActionMoveToObject(GetObjectByTag("WP02", 0), 1, 0.2)));
}

