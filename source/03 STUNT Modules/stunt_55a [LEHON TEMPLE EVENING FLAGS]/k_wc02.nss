void main() {
	DelayCommand(1.0, AssignCommand(GetObjectByTag("WC02", 0), ActionMoveToObject(GetObjectByTag("WP02", 0), 0, 0.2)));
}

