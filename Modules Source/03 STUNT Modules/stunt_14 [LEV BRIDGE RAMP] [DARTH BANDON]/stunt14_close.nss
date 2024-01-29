void main() {
	object oStunt14_door = GetObjectByTag("stunt14_door", 0);
	object oStunt14_bandon = GetObjectByTag("stunt14_bandon", 0);
	DelayCommand(4.6, AssignCommand(oStunt14_door, ActionCloseDoor(OBJECT_SELF)));
}

