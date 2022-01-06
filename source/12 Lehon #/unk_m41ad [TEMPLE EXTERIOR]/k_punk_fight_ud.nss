void main() {
	switch (GetUserDefinedEventNumber()) {
		case 10:
			ActionAttack(GetObjectByTag("unk41_rancorc", 0), 0);
			return;
		case 1007:
			SignalEvent(GetObjectByTag("invis2", 0), EventUserDefined(0));
	}
}

