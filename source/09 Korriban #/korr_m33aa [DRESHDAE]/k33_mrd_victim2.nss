void main() {
	object oKor33b_murdered = GetObjectByTag("kor33b_murdered", 0);
	ChangeToStandardFaction(OBJECT_SELF, 2);
	ChangeToStandardFaction(oKor33b_murdered, 4);
	ActionAttack(oKor33b_murdered, 0);
}

