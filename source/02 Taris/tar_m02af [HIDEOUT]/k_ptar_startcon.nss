void main() {
	if(GetLocalBoolean(OBJECT_SELF, 10) == 0) {
    SetLocalBoolean(OBJECT_SELF, 10, 1);
		ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "");
	}
	else {
		ActionStartConversation(GetFirstPC(), "workbnch", 0, 0, 0, "", "", "", "", "", "");
	}
}

