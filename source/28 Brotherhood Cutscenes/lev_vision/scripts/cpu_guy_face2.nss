void main() {
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	AssignCommand(oCpu_guy, SetLockOrientationInDialog(oCpu_guy, 0));
	AssignCommand(oCpu_guy, SetFacingPoint(GetPosition(GetFirstPC())));
}

