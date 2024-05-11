void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 1001:
			break;
		case 1002:
			break;
		case 1003:
			break;
		case 1004:
			break;
		case 1005:
			break;
		case 1006:
			break;
		case 1007:
			if ((!ShipBuild())) {
				AurPostString("ACK!", 5, 5, 3.0);
			}
			SignalEvent(GetObjectByTag("bulliedmer021", 0), EventUserDefined(2000));
			break;
		case 1008:
			break;
		case 1009:
			break;
		case 1010:
			break;
	}
}
