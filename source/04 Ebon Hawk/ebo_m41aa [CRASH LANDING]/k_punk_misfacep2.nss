void main() {
	DelayCommand(2.0, AssignCommand(GetObjectByTag("p_mission", 0), SetFacingPoint(GetPosition(GetPCSpeaker()))));
}

