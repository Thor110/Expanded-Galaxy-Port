void main() {
	object oVision_channa = GetObjectByTag("vision_channa", 0);
	object oVision_malak = GetObjectByTag("vision_malak", 0);
	DelayCommand(0.1, AssignCommand(oVision_channa, SetFacingPoint(GetPosition(GetObjectByTag("old_droid", 0)))));
	DelayCommand(0.1, AssignCommand(oVision_malak, SetFacingPoint(GetPosition(GetObjectByTag("old_droid", 0)))));
}

