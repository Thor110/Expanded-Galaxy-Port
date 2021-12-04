void main() {
	ActionPauseConversation();
	CreateObject(1, "unk41_blk6", GetLocation(GetObjectByTag("r21", 0)), 0);
	CreateObject(1, "unk41_blk6", GetLocation(GetObjectByTag("r22", 0)), 0);
	CreateObject(1, "g_brakatan06", GetLocation(GetObjectByTag("rak21", 0)), 0);
	CreateObject(1, "g_brakatan01", GetLocation(GetObjectByTag("rak22", 0)), 0);
	CreateObject(1, "g_brakatan03", GetLocation(GetObjectByTag("rak23", 0)), 0);
	CreateObject(1, "g_brakatan07", GetLocation(GetObjectByTag("rak24", 0)), 0);
	ActionWait(2.0);
	ActionResumeConversation();
}

