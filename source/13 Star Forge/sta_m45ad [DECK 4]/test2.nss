void main() {
	object oNearestSta_malak_drain = GetNearestObjectByTag("sta_malak_drain", OBJECT_SELF, 1);
	if ((!GetIsInConversation(OBJECT_SELF))) {
		ActionMoveToObject(oNearestSta_malak_drain, 1, 1.0);
	}
}

