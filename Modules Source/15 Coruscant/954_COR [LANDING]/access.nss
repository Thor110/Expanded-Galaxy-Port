void main() {
	object oTrggr = GetObjectByTag("trggr", 0);
	if (GetLocalBoolean(oTrggr, 40)) {
		return;
	}
	ActionStartConversation(GetFirstPC(), "access", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
	SetLocalBoolean(oTrggr, 40, 1);
}

