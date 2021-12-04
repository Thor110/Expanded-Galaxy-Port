void main() {
	object oK33_shastudent1 = GetObjectByTag("k33_shastudent1", 0);
	object oK33_shastudent2 = GetObjectByTag("k33_shastudent2", 0);
	object oK33_shastudent3 = GetObjectByTag("k33_shastudent3", 0);
	AssignCommand(oK33_shastudent1, ActionPlayAnimation(18, 3.0, 0.0));
	AssignCommand(oK33_shastudent2, ActionPlayAnimation(18, 1.0, 0.0));
	AssignCommand(oK33_shastudent3, ActionPlayAnimation(18, 2.0, 0.0));
}

