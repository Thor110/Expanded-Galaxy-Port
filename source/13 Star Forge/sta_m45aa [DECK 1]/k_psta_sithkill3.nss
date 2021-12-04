void main() {
	object oK_sta_darkjedi3 = GetObjectByTag("k_sta_darkjedi3", 0);
	object oK_sta_lightjedi3 = GetObjectByTag("k_sta_lightjedi3", 0);
	//ActionPauseConversation();
	DelayCommand(3.0, SetMinOneHP(oK_sta_lightjedi3, 0));
}

