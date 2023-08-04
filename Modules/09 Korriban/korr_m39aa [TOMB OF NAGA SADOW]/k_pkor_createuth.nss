void main() {
	object oK39_way_yuthura = GetObjectByTag("k39_way_yuthura", 0);
	location location1 = GetLocation(oK39_way_yuthura);
	CreateObject(1, "kor39_yuthura", location1, 0);
	ActionPauseConversation();
	ActionResumeConversation();
}

