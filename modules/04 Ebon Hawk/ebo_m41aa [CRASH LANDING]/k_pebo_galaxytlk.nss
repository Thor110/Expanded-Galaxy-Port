void main() {
	if(GetGlobalBoolean("EBO_HYPER_FIXED") == 0) {
    ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "");
  }
  if(GetGlobalBoolean("UNK_DISRUPT_OFF") == 0) {
    ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "");
  }
  else if(GetGlobalBoolean("EBO_HYPER_FIXED") == 1 && GetGlobalBoolean("UNK_DISRUPT_OFF") == 1){
    ExecuteScript("a_galaxymap",OBJECT_SELF);
  }
}