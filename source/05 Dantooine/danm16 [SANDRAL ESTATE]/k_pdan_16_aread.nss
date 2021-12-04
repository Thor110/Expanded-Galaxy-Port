void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 100:
			{
				object oDan16_rahasia = CreateObject(1, "dan16_rahasia", GetLocation(GetObjectByTag("dan16_wp_plotdoor01", 0)), 0);
				NoClicksFor(4.2);
				DelayCommand(4.0, SignalEvent(OBJECT_SELF, EventUserDefined(110)));
			}
			break;
		case 110:
			{
				object oDan16_door05 = GetObjectByTag("dan16_door05", 0);
				SetLocked(oDan16_door05, 1);
				AssignCommand(oDan16_door05, ActionCloseDoor(oDan16_door05));
			}
			break;
	}
}

