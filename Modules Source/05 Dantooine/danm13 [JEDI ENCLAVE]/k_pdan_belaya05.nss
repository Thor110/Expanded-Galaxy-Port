int StartingConditional() {
	object oDan13_belaya = GetObjectByTag("dan13_belaya", 0);
	return ((GetIsObjectValid(oDan13_belaya) == 0) && (GetGlobalBoolean("KOR_BELAYA") == 0));
}

