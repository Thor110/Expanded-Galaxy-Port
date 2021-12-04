void main() {
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	DelayCommand(0.1, AssignCommand(oCpu_guy, SetLockOrientationInDialog(oCpu_guy, 1)));
	DelayCommand(0.1, AssignCommand(oCpu_guy, SetFacingPoint(GetPosition(GetObjectByTag("comp", 0)))));
}

