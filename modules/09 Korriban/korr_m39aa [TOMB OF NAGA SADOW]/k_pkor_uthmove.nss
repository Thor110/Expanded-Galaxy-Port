void main() {
	ActionPauseConversation();
	object oKor39_kor36 = GetObjectByTag("kor39_kor36", 0);
	object oK39_way_yuthmove = GetObjectByTag("k39_way_yuthmove", 0);
	DelayCommand(0.5, AssignCommand(oKor39_kor36, ActionCloseDoor(oKor39_kor36)));
	DelayCommand(1.0, SetLocked(oKor39_kor36, 1));
	object oPC = GetFirstPC();
	object oKor39_yuthura = GetObjectByTag("kor39_yuthura", 0);
	DelayCommand(2.0, AssignCommand(oKor39_yuthura, ActionMoveToObject(oK39_way_yuthmove, 0, 1.0)));
	ActionMoveToObject(oPC, 0, 1.0);
	ActionResumeConversation();
}

