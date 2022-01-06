void main() {
	object oCand = GetObjectByTag("cand", 0);
	AssignCommand(oCand, ActionMoveToObject(GetObjectByTag("lev40_wpcandrun", 0), 1, 1.0));
}

