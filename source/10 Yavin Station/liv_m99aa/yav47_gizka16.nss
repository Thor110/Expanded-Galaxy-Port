void main() {
	ChangeToStandardFaction(OBJECT_SELF, 1);
	AssignCommand(GetPCSpeaker(), ActionUseTalentOnObject(TalentSpell(43), GetObjectByTag("yav47_gizka", 0)));
}

