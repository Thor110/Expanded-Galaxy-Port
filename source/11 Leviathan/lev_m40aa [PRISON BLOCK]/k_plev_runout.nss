void main() {
	object oBrigcomputer = GetObjectByTag("brigcomputer", 0);
	SetGlobalFadeIn(0.0, 0.5, 0.0, 0.0, 0.0);
	AssignCommand(GetObjectByTag("bastila", 0), ActionForceMoveToObject(GetObjectByTag("lev40_wpbastilarun", 0), 1, 1.0, 10.0));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("carth", 0), ActionForceMoveToObject(GetObjectByTag("lev40_wpcarthrun", 0), 1, 1.0, 10.0)));
	DelayCommand(2.0, AssignCommand(GetFirstPC(), ActionForceMoveToObject(GetObjectByTag("lev40_wppcrun", 0), 1, 1.0, 10.0)));
}

