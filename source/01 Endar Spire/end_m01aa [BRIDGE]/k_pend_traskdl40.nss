void main() {
	object oEnd_door01 = GetObjectByTag("end_door01", 0);
	AssignCommand(oEnd_door01, ActionOpenDoor(oEnd_door01));
	ActionPauseConversation();
	ActionMoveToObject(GetObjectByTag("", 0), 1, 1.0);
	ActionResumeConversation();
  SetGlobalNumber("End_TraskTalk",1);
}

