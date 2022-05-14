void main() {
	ActionPauseConversation();
	CreateObject(1, "yav47_trand01", GetLocation(GetObjectByTag("trand201", 0)), 0);
	CreateObject(1, "yav47_trand02", GetLocation(GetObjectByTag("trand202", 0)), 0);
	CreateObject(1, "yav47_trand04", GetLocation(GetObjectByTag("trand206", 0)), 0);
	CreateObject(1, "yav47_trand04", GetLocation(GetObjectByTag("trand207", 0)), 0);
	ActionWait(2.0);
	ActionResumeConversation();
}

