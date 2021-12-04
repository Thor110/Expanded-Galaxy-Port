// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	if ((GetGlobalBoolean("EBO_HYPER_FIXED") == 0)) {
		if ((GetGlobalBoolean("UNK_SHIPPARTS") == 1)) {
			DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "g_shipparts"), 0.0, 0, 0.0);
			SetGlobalBoolean("EBO_HYPER_FIXED", 1);
			ActionPlayAnimation(200, 1.0, 0.0);
			GivePlotXP("unk_main", 10);
			if ((GetIsObjectValid(GetObjectByTag("BustedHyperdrive", 0)) == 1)) {
				sub1("sound exists", 5, 5, 1.0);
			}
			else {
				sub1("sound doesn't exist", 5, 5, 1.0);
			}
			SoundObjectStop(GetNearestObjectByTag("BustedHyperdrive", OBJECT_SELF, 1));
			SoundObjectStop(GetNearestObjectByTag("BustedHyperdrive", OBJECT_SELF, 2));
			ActionStartConversation(GetPCSpeaker(), "ebo41_hyper", 0, 0, 0, "", "", "", "", "", "");
		}
		else {
			ActionStartConversation(GetPCSpeaker(), "ebo41_hyper", 0, 0, 0, "", "", "", "", "", "");
		}
	}
	else {
		ActionStartConversation(GetPCSpeaker(), "ebo41_hyper", 0, 0, 0, "", "", "", "", "", "");
	}
}

