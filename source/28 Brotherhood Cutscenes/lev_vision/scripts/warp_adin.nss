void main() {
	object oAdin = GetObjectByTag("adin", 0);
	object oSith_guy = GetObjectByTag("sith_guy", 0);
	AssignCommand(oAdin, JumpToObject(oSith_guy, 1));
}

