// Prototypes
void sub2();
int sub1(object objectParam1);

void sub2() {
	object oK39_plc_base1 = GetObjectByTag("k39_plc_base1", 0);
	object oK39_plc_base2 = GetObjectByTag("k39_plc_base2", 0);
	object oK39_plc_base3 = GetObjectByTag("k39_plc_base3", 0);
	object oK39_plc_lower1 = GetObjectByTag("k39_plc_lower1", 0);
	object oK39_plc_lower2 = GetObjectByTag("k39_plc_lower2", 0);
	object oK39_plc_lower3 = GetObjectByTag("k39_plc_lower3", 0);
	object oK39_plc_upper1 = GetObjectByTag("k39_plc_upper1", 0);
	object oK39_plc_upper2 = GetObjectByTag("k39_plc_upper2", 0);
	object oK39_plc_upper3 = GetObjectByTag("k39_plc_upper3", 0);
	object oK39_plc_top1 = GetObjectByTag("k39_plc_top1", 0);
	object oK39_plc_top2 = GetObjectByTag("k39_plc_top2", 0);
	object oK39_plc_top3 = GetObjectByTag("k39_plc_top3", 0);
	AssignCommand(oK39_plc_base2, ActionPlayAnimation(201, 1.0, 0.0));
	AssignCommand(oK39_plc_base3, ActionPlayAnimation(201, 1.0, 0.0));
	AssignCommand(oK39_plc_lower2, ActionPlayAnimation(201, 1.0, 0.0));
	AssignCommand(oK39_plc_lower3, ActionPlayAnimation(201, 1.0, 0.0));
	AssignCommand(oK39_plc_upper2, ActionPlayAnimation(201, 1.0, 0.0));
	AssignCommand(oK39_plc_upper3, ActionPlayAnimation(201, 1.0, 0.0));
	AssignCommand(oK39_plc_top2, ActionPlayAnimation(201, 1.0, 0.0));
	AssignCommand(oK39_plc_top3, ActionPlayAnimation(201, 1.0, 0.0));
	AssignCommand(oK39_plc_base1, ActionPlayAnimation(200, 1.0, 0.0));
	AssignCommand(oK39_plc_lower1, ActionPlayAnimation(200, 1.0, 0.0));
	AssignCommand(oK39_plc_upper1, ActionPlayAnimation(200, 1.0, 0.0));
	AssignCommand(oK39_plc_top1, ActionPlayAnimation(200, 1.0, 0.0));
}

int sub1(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, 10);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void main() {
	object oK39_plc_pillcomp = GetObjectByTag("k39_plc_pillcomp", 0);
	if ((!sub1(oK39_plc_pillcomp))) {
		sub2();
	}
}

