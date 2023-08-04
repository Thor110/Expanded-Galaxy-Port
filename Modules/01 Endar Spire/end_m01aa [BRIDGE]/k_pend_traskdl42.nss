void main() {
	int nGlobal = GetGlobalNumber("END_TRASK_DLG");
	SetGlobalNumber("END_TRASK_DLG", (nGlobal + 1));
	ClearAllActions();
	ActionMoveToObject(GetObjectByTag("wp_end_trask50", 0), 0, 1.0);
}

