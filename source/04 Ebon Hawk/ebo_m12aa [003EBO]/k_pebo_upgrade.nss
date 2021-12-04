void main() {
	if (((GetGlobalNumber("K_CURRENT_PLANET") == 50) && (GetGlobalNumber("G_FinalChoice") == 1))) {
		SetNPCSelectability(0, 1);
	}
	ActionStartConversation(GetFirstPC(), "workbnch", 0, 0, 0, "", "", "", "", "", "");
}

