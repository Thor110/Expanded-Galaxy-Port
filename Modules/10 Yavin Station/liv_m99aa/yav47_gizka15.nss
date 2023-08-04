void main() {
	ChangeToStandardFaction(OBJECT_SELF, 1);
	AssignCommand(GetPCSpeaker(), ActionUseTalentOnObject(TalentSpell(15), GetObjectByTag("yav47_gizka", 0)));
}

