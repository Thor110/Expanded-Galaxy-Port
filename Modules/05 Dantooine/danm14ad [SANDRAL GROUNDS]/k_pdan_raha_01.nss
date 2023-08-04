void main() {
	object oDan14_ahlan14d = CreateObject(1, "dan14_ahlan14d", GetLocation(GetObjectByTag("dan14ad_wp_alhan_01", 0)), 0);
	object oDan14ad_drd01 = CreateObject(1, "dan14ad_drd01", GetLocation(GetObjectByTag("dan14ad_wp_droida_01", 0)), 0);
	object oDan14ad_drd02 = CreateObject(1, "dan14ad_drd02", GetLocation(GetObjectByTag("dan14ad_wp_droidb_01", 0)), 0);
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}

