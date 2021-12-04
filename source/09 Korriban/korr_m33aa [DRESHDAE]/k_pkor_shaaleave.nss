void main() {
	object oKor33_shaardan = GetObjectByTag("kor33_shaardan", 0);
	if ((GetEnteringObject() == oKor33_shaardan)) {
		object oK33_shastudent1 = GetObjectByTag("k33_shastudent1", 0);
		object oK33_shastudent2 = GetObjectByTag("k33_shastudent2", 0);
		object oK33_shastudent3 = GetObjectByTag("k33_shastudent3", 0);
		unknown unknown1 = EventUserDefined(101);
		if ((!GetIsDead(oK33_shastudent1))) {
			SignalEvent(oK33_shastudent1, unknown1);
		}
		if ((!GetIsDead(oK33_shastudent2))) {
			SignalEvent(oK33_shastudent2, unknown1);
		}
		if ((!GetIsDead(oK33_shastudent3))) {
			SignalEvent(oK33_shastudent3, unknown1);
		}
	}
}

