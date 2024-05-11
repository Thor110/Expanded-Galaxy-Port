void main() {
	object oK_sta_lightjedi1 = GetObjectByTag("k_sta_lightjedi1", 0);
	//ActionPauseConversation();
	DelayCommand(3.0, SetMinOneHP(oK_sta_lightjedi1, 0));
}

