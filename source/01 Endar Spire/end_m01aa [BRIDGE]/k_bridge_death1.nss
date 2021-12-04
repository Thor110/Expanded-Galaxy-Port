void main() {
	if (GetIsDead(GetObjectByTag("end_sith2"))
    &&GetIsDead(GetObjectByTag("end_sith3"))) {
    object oLocked1 = GetObjectByTag("end_door05");
    DelayCommand(0.5, SetLocked(oLocked1, FALSE));
    SetGlobalNumber("End_TraskTalk",9);
		AssignCommand(GetObjectByTag("end_trask"), ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", ""));
	}
}

