void main() {
	ActionPauseConversation();
	ActionMoveToLocation(GetLocation(GetObjectByTag("carthend", 0)), 1);
	ActionDoCommand(SetFacingPoint(GetPosition(GetPCSpeaker())));
	AssignCommand(GetObjectByTag("cand", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("candend", 0)), 1));
	AssignCommand(GetObjectByTag("cand", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetPCSpeaker()))));
	AssignCommand(GetObjectByTag("mission", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("missionend", 0)), 1));
	AssignCommand(GetObjectByTag("mission", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetPCSpeaker()))));
	AssignCommand(GetObjectByTag("zaalbar", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("zaalbarend", 0)), 1));
	AssignCommand(GetObjectByTag("zaalbar", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetPCSpeaker()))));
	AssignCommand(GetObjectByTag("HK47", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("hk47end", 0)), 1));
	AssignCommand(GetObjectByTag("HK47", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetPCSpeaker()))));
	AssignCommand(GetObjectByTag("T3M4", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("t3m4end", 0)), 1));
	AssignCommand(GetObjectByTag("T3M4", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetPCSpeaker()))));
	ActionWait(3.0);
	ActionResumeConversation();
}

