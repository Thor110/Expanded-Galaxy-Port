// Globals
	int intGLOB_103 = 62;
	int intGLOB_138 = 1100;
// Prototypes
void sub4(string stringParam1);
void sub3();
void sub2(int intParam1, int intParam2);
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub4(string stringParam1) {
	object object1 = OBJECT_SELF;
	if (GetCommandable(object1)) {
		ClearAllActions();
		CancelCombat(object1);
		ActionMoveToObject(GetNearestObjectByTag("wp_homebase", OBJECT_SELF, 1), 1, 3.0);
		ActionDoCommand(SetCommandable(1, object1));
		SetCommandable(0, OBJECT_SELF);
	}
}

void sub3() {
	int int1;
	sub1("Check for dead tranny", 5, 5, 5.0);
	int1 = ((((GetIsObjectValid(GetObjectByTag("yav47_trand01", 0)) == 0) && (GetIsObjectValid(GetObjectByTag("yav47_trand02", 0)) == 0)) && (GetIsObjectValid(GetObjectByTag("yav47_trand03", 0)) == 0)) && (GetIsObjectValid(GetObjectByTag("yav47_trand04", 0)) == 0));
	if (int1) {
		sub1("second event ran", 5, 6, 5.0);
		ClearAllActions();
		ActionPlayAnimation(103, 1.0, 0.0);
		sub2(intGLOB_103, 0);
		ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0);
	}
}

void sub2(int intParam1, int intParam2) {
	SetLocalBoolean(OBJECT_SELF, intParam1, intParam2);
}

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 1001)) {
		if ((GetGlobalBoolean("YAV_SUVAMH") == 0)) {
			SetGlobalBoolean("YAV_SUVAMH", 1);
			int nRandom = d4(1);
			if ((nRandom == 1)) {
				if ((GetGlobalBoolean("YAV_SUVAMZ") == 0)) {
					SetGlobalBoolean("YAV_SUVAMZ", 1);
				}
				else {
					SetGlobalBoolean("YAV_SUVAMZ", 0);
				}
				int int7 = d3(1);
				if ((int7 == 1)) {
					SignalEvent(OBJECT_SELF, EventUserDefined(2003));
				}
				else {
					if ((int7 == 2)) {
						SignalEvent(OBJECT_SELF, EventUserDefined(2004));
					}
					else {
						SignalEvent(OBJECT_SELF, EventUserDefined(2005));
					}
				}
			}
			else {
				if ((nRandom == 2)) {
					SignalEvent(OBJECT_SELF, EventUserDefined(2003));
				}
				else {
					if ((nRandom == 3)) {
						SignalEvent(OBJECT_SELF, EventUserDefined(2004));
					}
					else {
						if ((nRandom == 4)) {
							SignalEvent(OBJECT_SELF, EventUserDefined(2005));
						}
						else {
							SignalEvent(OBJECT_SELF, EventUserDefined(2006));
						}
					}
				}
			}
		}
	}
	else {
		if ((int1 == 1002)) {
		}
		else {
			if ((int1 == 1003)) {
			}
			else {
				if ((int1 == 1004)) {
					SetGlobalBoolean("YAV_SUVAMH", 1);
					ClearAllActions();
				}
				else {
					if ((int1 == 1005)) {
					}
					else {
						if ((int1 == 1006)) {
						}
						else {
							if ((int1 == 1007)) {
							}
							else {
								if ((int1 == 1008)) {
								}
								else {
									if ((int1 == 1009)) {
									}
									else {
										if ((int1 == 1010)) {
										}
										else {
											if ((int1 == 1011)) {
												SetGlobalBoolean("YAV_SUVAMH", 0);
											}
											else {
												if ((int1 == 2001)) {
													sub1("first event ran", 5, 5, 5.0);
													ClearAllActions();
													sub2(intGLOB_103, 1);
													ActionMoveToObject(GetObjectByTag("WP_01_04", 0), 1, 1.0);
													DelayCommand(3.0, ActionPlayAnimation(18, 1.0, (-1.0)));
													SetGlobalBoolean("YAV_SUVAMH", 1);
												}
												else {
													if ((int1 == 2002)) {
														DelayCommand(3.0, sub3());
													}
													else {
														if ((int1 == 2003)) {
															if ((GetGlobalBoolean("YAV_SUVAMZ") == 0)) {
																ActionMoveToObject(GetObjectByTag("suvamwp101", 0), 0, 0.1);
																ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("suvamwp101f", 0))));
															}
															else {
																ActionMoveToObject(GetObjectByTag("suvamwp201", 0), 0, 0.1);
																ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("suvamwp201f", 0))));
															}
															ActionDoCommand(SignalEvent(OBJECT_SELF, EventUserDefined(2006)));
														}
														else {
															if ((int1 == 2004)) {
																if ((GetGlobalBoolean("YAV_SUVAMZ") == 0)) {
																	ActionMoveToObject(GetObjectByTag("suvamwp102", 0), 0, 0.1);
																	ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("suvamwp102f", 0))));
																}
																else {
																	ActionMoveToObject(GetObjectByTag("suvamwp202", 0), 0, 0.1);
																	ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("suvamwp202f", 0))));
																}
																ActionDoCommand(SignalEvent(OBJECT_SELF, EventUserDefined(2006)));
															}
															else {
																if ((int1 == 2005)) {
																	if ((GetGlobalBoolean("YAV_SUVAMZ") == 0)) {
																		ActionMoveToObject(GetObjectByTag("suvamwp103", 0), 0, 0.1);
																		ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("suvamwp103f", 0))));
																	}
																	else {
																		ActionMoveToObject(GetObjectByTag("suvamwp203", 0), 0, 0.1);
																		ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("suvamwp203f", 0))));
																	}
																	ActionDoCommand(SignalEvent(OBJECT_SELF, EventUserDefined(2006)));
																}
																else {
																	if ((int1 == 2006)) {
																		int int12 = d6(1);
																		int int14 = 0;
																		int int15;
																		while ((int14 < int12)) {
																			int15 = d4(1);
																			if ((int15 == 1)) {
																				ActionPlayAnimation(10, 1.0, 2.0);
																			}
																			else {
																				if ((int15 == 2)) {
																					ActionPlayAnimation(113, 1.0, 0.0);
																				}
																				else {
																					if ((int15 == 3)) {
																						ActionPlayAnimation(102, 1.0, 0.0);
																					}
																					else {
																						ActionPlayAnimation(103, 1.0, 0.0);
																					}
																				}
																			}
																			(int14++);
																		}
																		ActionDoCommand(SignalEvent(OBJECT_SELF, EventUserDefined(2007)));
																	}
																	else {
																		if ((int1 == 2007)) {
																			SetGlobalBoolean("YAV_SUVAMH", 0);
																		}
																		else {
																			if ((int1 == intGLOB_138)) {
																				sub4("wp_homebase");
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}

