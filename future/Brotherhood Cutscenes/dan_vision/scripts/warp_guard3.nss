void main() {
	object oWp_guard3 = GetWaypointByTag("wp_guard3");
	effect efVisual = EffectVisualEffect(3016, 0);
	location location1 = GetLocation(oWp_guard3);
	effect effect3 = EffectVisualEffect(3003, 0);
	effect effect5 = EffectVisualEffect(3018, 0);
	object oGuard1 = GetObjectByTag("guard1", 0);
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	ApplyEffectAtLocation(0, effect3, location1, 0.0);
	ApplyEffectAtLocation(0, effect5, location1, 0.0);
	vector struct2 = Vector(146.89, 133.19, 4.42);
	location location3 = Location(struct2, 270.0);
	object oGhost = GetObjectByTag("ghost", 0);
	SoundObjectPlay(oGhost);
	CreateObject(1, "guard3", location3, 0);
	string string1 = "n_rakata_bat1";
	PlaySound(string1);
}

