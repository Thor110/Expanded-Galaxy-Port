void main() {
	object oEntering = GetEnteringObject();
	object oKas24_joleefgt = GetWaypointByTag("kas24_joleefgt");
	if ((GetTag(oEntering) == "Jolee")) {
		DelayCommand(1.0, AssignCommand(oEntering, ActionMoveToObject(oKas24_joleefgt, 1, 1.0)));
	}
}

