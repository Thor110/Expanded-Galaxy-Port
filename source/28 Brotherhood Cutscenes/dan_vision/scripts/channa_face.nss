void main() {
	object oVision_channa = GetObjectByTag("vision_channa", 0);
	DelayCommand(0.1, AssignCommand(oVision_channa, SetFacingPoint(GetPosition(GetObjectByTag("vision_malak", 0)))));
}

