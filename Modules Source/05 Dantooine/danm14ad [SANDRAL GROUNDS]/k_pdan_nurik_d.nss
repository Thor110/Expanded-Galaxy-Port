void main() {
	int int1 = GetUserDefinedEventNumber();
	object object1 = GetItemPossessedBy(OBJECT_SELF, "G_W_BLSTRPSTL020");
	switch (int1) {
		case 10:
			DestroyObject(OBJECT_SELF, 0.0, 1, 0.0);
			break;
		case 20:
			DestroyObject(OBJECT_SELF, 0.0, 1, 0.0);
			break;
		case 60:
			ActionEquipItem(object1, 4, 0);
			break;
		case 70:
			{
				object oDan14_shen = GetObjectByTag("dan14_shen", 0);
				ChangeToStandardFaction(OBJECT_SELF, 2);
				ChangeToStandardFaction(oDan14_shen, 4);
				CutsceneAttack(oDan14_shen, 218, 3, 100);
			}
			break;
	}
}

