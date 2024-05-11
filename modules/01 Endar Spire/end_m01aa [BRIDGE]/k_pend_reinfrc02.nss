void main() {
	if ((GetUserDefinedEventNumber() == 10)) {
		object oEnd_jedicut = GetObjectByTag("end_jedicut", 0);
		ActionMoveToObject(GetObjectByTag((("wp_" + GetTag(OBJECT_SELF)) + "_2"), 0), 1, 1.0);
		ActionDoCommand(SetFacingPoint(GetPosition(oEnd_jedicut)));
		ActionPlayAnimation(19, 1.0, (-1.0));
		ActionDoCommand(SignalEvent(oEnd_jedicut, EventUserDefined(0)));
		ActionDoCommand(ChangeToStandardFaction(OBJECT_SELF, 1));
	}
}

