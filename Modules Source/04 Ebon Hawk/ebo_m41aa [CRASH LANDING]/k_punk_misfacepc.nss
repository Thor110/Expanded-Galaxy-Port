void main() {
	DelayCommand(4.0, AssignCommand(GetObjectByTag("p_mission", 0), SetFacingPoint(GetPosition(GetPCSpeaker()))));
}

