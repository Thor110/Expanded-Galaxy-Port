void main() {
	object oDan15_door05 = GetObjectByTag("dan15_door05", 0);
	AssignCommand(oDan15_door05, SetLocked(oDan15_door05, 0));
	DelayCommand(1.0, AssignCommand(oDan15_door05, ActionOpenDoor(oDan15_door05)));
}

