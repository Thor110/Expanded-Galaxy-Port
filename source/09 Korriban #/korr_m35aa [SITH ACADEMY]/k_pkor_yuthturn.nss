void main() {
	object oSpeaker = GetPCSpeaker();
	object oKor35_yuthura = GetObjectByTag("kor35_yuthura", 0);
	vector vPosition = GetPosition(oSpeaker);
	ActionPauseConversation();
	AssignCommand(oKor35_yuthura, SetFacingPoint(vPosition));
	ActionResumeConversation();
}

