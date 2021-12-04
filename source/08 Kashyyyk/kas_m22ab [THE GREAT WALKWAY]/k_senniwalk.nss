void main() {
	CreateObject(1, "g_sennivek", GetLocation(GetObjectByTag("wp_sennispawn1", 0)), 0);
	DelayCommand(0.5, AssignCommand(GetObjectByTag("SenniVek", 0), ActionMoveToObject(GetFirstPC(), 1, 2.0)));
}

