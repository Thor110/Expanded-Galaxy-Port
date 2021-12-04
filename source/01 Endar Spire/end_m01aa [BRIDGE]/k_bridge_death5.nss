void main() {
  CancelCombat(GetObjectByTag("end_trask"));
	if (GetIsDead(GetObjectByTag("SithSoldierN5"))
    &&GetIsDead(GetObjectByTag("SithSoldierN3"))) {
    DelayCommand(0.2, AssignCommand(GetObjectByTag("end_trask"), ActionStartConversation(GetFirstPC(), "end_trask01", 0, 0, 1, "", "", "", "", "", "")));
  }
}

