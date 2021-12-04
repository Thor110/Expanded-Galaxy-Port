void main() {
	DelayCommand(0.8, AssignCommand(GetObjectByTag("WC01", 0), ActionMoveToObject(GetObjectByTag("WP01", 0), 0, 0.2)));
}

