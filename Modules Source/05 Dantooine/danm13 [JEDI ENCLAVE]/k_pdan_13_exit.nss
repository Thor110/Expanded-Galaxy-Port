void main() {
	if ((GetGlobalNumber("EBO_LURARKA") >= 4)) {
		DelayCommand(0.1, DestroyObject(GetObjectByTag("LurArka", 0), 0.0, 0, 0.0));
	}
}

