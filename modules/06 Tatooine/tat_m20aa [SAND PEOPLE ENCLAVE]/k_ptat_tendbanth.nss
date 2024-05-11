void main() {
	object oTat20_09warr_04 = GetObjectByTag("tat20_09warr_04", 0);
	object oEntering = GetEnteringObject();
	object oTat20_bantha = GetObjectByTag("tat20_bantha", 0);
	if ((oEntering == oTat20_09warr_04)) {
		AssignCommand(oTat20_09warr_04, ClearAllActions());
		AssignCommand(oTat20_09warr_04, SetFacingPoint(GetPosition(oTat20_bantha)));
		AssignCommand(oTat20_09warr_04, ActionPlayAnimation(11, 1.0, 2.0));
		AssignCommand(oTat20_09warr_04, ActionDoCommand(SetCommandable(1, OBJECT_SELF)));
		AssignCommand(oTat20_09warr_04, SetCommandable(0, OBJECT_SELF));
	}
}

