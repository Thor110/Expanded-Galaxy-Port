void main() {
	if (((GetGlobalNumber("DAN_BLUE_STATE") >= GetGlobalNumber("DAN_YELLOW_STATE")) && (GetGlobalNumber("DAN_BLUE_STATE") >= GetGlobalNumber("DAN_GREEN_STATE")))) {
		SetGlobalNumber("DAN_PATH_STATE", 1);
	}
	else {
		if ((GetGlobalNumber("DAN_YELLOW_STATE") >= GetGlobalNumber("DAN_GREEN_STATE"))) {
			SetGlobalNumber("DAN_PATH_STATE", 2);
		}
		else {
			SetGlobalNumber("DAN_PATH_STATE", 3);
		}
	}
}

