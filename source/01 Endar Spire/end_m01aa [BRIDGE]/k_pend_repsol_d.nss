void main() {
	if ((GetUserDefinedEventNumber() == 1007)) {
		object object1 = GetNearestObjectByTag(GetTag(OBJECT_SELF), OBJECT_SELF, 1);
		if ((((GetIsObjectValid(object1) == 0) || GetIsDead(object1)) && (object1 != OBJECT_SELF))) {
			int int4;
			object oEnd_sithsol01 = GetObjectByTag("end_sithsol01", int4);
			while (GetIsObjectValid(oEnd_sithsol01)) {
				ChangeToStandardFaction(oEnd_sithsol01, 1);
				SetMinOneHP(oEnd_sithsol01, 0);
				(int4++);
				oEnd_sithsol01 = GetObjectByTag("end_sithsol01", int4);
			}
		}
	}
}

