void main() {
	DelayCommand(4.0, AssignCommand(GetObjectByTag("WC01", 0), ActionMoveToObject(GetObjectByTag("WP01", 0), 0, 0.2)));
}

