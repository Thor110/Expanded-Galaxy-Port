void main() {
	object oK36_plc_dakrock = GetObjectByTag("k36_plc_dakrock", 0);
	vector vPosition = GetPosition(oK36_plc_dakrock);
	SetFacingPoint(vPosition);
}

