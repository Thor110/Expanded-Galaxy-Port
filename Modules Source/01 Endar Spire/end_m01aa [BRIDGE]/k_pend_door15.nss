void main() {
	int nLevel = GetHitDice(GetFirstPC());
	//if ((GetGlobalNumber("END_ROOM7_DEAD") >= 2)) {
		if ((nLevel > 1)) {
			SetLocked(OBJECT_SELF, 0);
			ActionOpenDoor(OBJECT_SELF);
			SetGlobalNumber("END_TRASK_DLG", 31);//sub1(intGLOB_175);
		}
		else {
			if ((GetDistanceBetween(GetObjectByTag("end_trask", 0), GetFirstPC()) > 10.0)) {
				SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
				DelayCommand(0.5, SetGlobalFadeIn(0.0, 0.5, 0.0, 0.0, 0.0));
			}
			AssignCommand(GetObjectByTag("end_trask", 0), ClearAllActions());
			NoClicksFor(0.4);
			DelayCommand(0.2, AssignCommand(GetObjectByTag("end_trask", 0), ActionStartConversation(GetFirstPC(), "end_levelup", 0, 0, 1, "", "", "", "", "", "")));
		}
	//}//
}

