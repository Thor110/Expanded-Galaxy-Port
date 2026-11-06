# Expanded Galaxy – working list

Status: [x] done · [~] ready / in progress · [ ] to do · (NEED: …) = blocked on something from you

## 1. Things that are broken in-game (do first)

- [x] 1.1 Port: 22 models still use 15 old K1 texture names that ship nowhere (black surfaces: Korriban m38aa/m39aa, space skyboxes m12a*/m01aa_07b, Sleheyron m99ab_01a, m02ae_09a, m34aa_08a). Committed e018072c. (NEED: in-game check of Valley of the Dark Lords / tombs)
- [~] 1.2 Hood: k_pebn_remove.ncs + test1.ncs (+ k_pebo_skybox, k_punk_*final) stay live in Port mode. Add to launcher swap list; install them as .hood files; make the swap state-independent.
- [~] 1.3 Hood: launcher.bat can't switch BoSSR -> KotOR2 (no ObsidianEnt.bik.port marker in K1 mode). Use a dedicated marker file.
- [~] 1.4 Hood: block install unless KotOR1 is the active game (global.jrl + ObsidianEnt.bik go to whichever game is active). Add a Required= check on dialog.tlk.main.
- [ ] 1.5 Temple Roof Bastila bug. (NEED: A/B test – rename Hood's Override\k_pebn_remove.ncs and test1.ncs, retry roof; or a description of what she does)
- [~] 1.6 Main: a_gas_dmg reads MalachorGas with GetGlobalNumber; it is a Boolean, so the cutscene pause never works. One-word fix + recompile.
- [~] 1.7 Main: tutorial.2da MalachorGas row uses StrRef0 ("Yavin"); should be StrRef12.
- [ ] 1.8 Main: override/a_207race.ncs (Telos swoop) hides Tatooine's a_207race in tatm17ae. Repack tatm17ae with the half-done a_m17ae_race fix.
- [~] 1.9 Hood: 11 x `2DAMEMORYn=normalhead` are backwards (should be `normalhead=2DAMEMORYn`) – BoS heads never applied.

## 2. Installer / build problems

- [ ] 2.1 Port: update-changes.ini.bat appends to a stale override.txt (every changes-*.ini has the override list twice). `del override.txt` first.
- [ ] 2.2 Port: changes-switch.ini / changes-ios.ini have no [Settings] (`changes-mobile-intro` missing `.ini`).
- [ ] 2.3 Port + Hood: namespaces.ini Mac entry points at changes-macappstore.ini (file is changes-mac.ini).
- [ ] 2.4 Hood: Android/iOS/Switch/Xbox installs always fail (Required port-readme.rtf not installed by Port on those platforms).
- [ ] 2.5 Main: update-modules.bat would overwrite the hand-fixed slem31aa.mod with older source; repack the stale .mods listed in the review (or write their sources back).
- [ ] 2.6 Main: update-scripts.bat can't compile k_inc_hawk includers (k_inc_generic missing; includes not copied).
- [ ] 2.7 Port/Hood: update-*.bat are stubs or point at Main paths; create-all-modules.ps1 skips subfolders and `-match` catches bos_tem3b for bos_tem3.
- [ ] 2.8 All: update-release.bat uses `7z a` (adds to old zip) – delete the old zip first.
- [ ] 2.9 Build-time conflict check: script that lists any Override file shipped by two parts or shadowing a module script.

## 3. Launchers

- [ ] 3.1 Class Label Pointer Fix: Steam values are right (tested). The GoG/Amazon and Disc branches reuse the Steam addresses 0x4F9D03/0x4F9DEE. In the repo's gogaspyr exe those bytes are other code; the disc exe (0x45DE00 bytes) is shorter than 0x4F9D03, so the launcher throws there. Diffing the repo exes suggests GoG = 0x34B534/0x34B6F9. (NEED: a GoG or Disc install to confirm, whenever you have one)
- [ ] 3.2 Missing registry values crash on start (JediK1/JediK2/Game/Health null casts).
- [ ] 3.3 Back up swkotor2.exe before byte patching; write to a temp file then replace.
- [ ] 3.4 Port: combobox ignored until a button is hovered (`combo` flag).
- [ ] 3.5 Port: Brotherhood check calls Close() in the constructor (crash).
- [ ] 3.6 Swap is not repeatable/atomic: one missing file leaves a half-swapped install. Track state with a marker file, skip already-swapped files.
- [ ] 3.7 Later: one shared launcher for Main/Port/Hood (Hood .exe support; bmp already exists).

## 4. Save importer (primary feature)

- [ ] 4.1 Full GFF reader/writer in C# (current reader starts at byte 12, header fields start at 8).
- [ ] 4.2 Read K1 / Port GLOBALVARS.res (bit-packed booleans, byte numbers) + PC gender from the save.
- [ ] 4.3 Completion check via K_KOTOR_MASTER >= 60 instead of free-roam-exists.txt.
- [ ] 4.4 Launcher writes Override\eg_k1import.2da; a start-of-game script reads it with Get2DAString and sets 101PER_Revan_End / 101PER_Revan_Sex + new EG_K1_* globals (globalcat additions).
- [ ] 4.5 Atton's Revan questions skip when EG_K1_IMPORTED is set.
- [ ] 4.6 Choose which K1 decisions carry over (draft list from me, you approve).
(NEED for 4.x: one finished vanilla-K1 save with End Game v4, one Port save, LS + DS if possible; vanilla TSL Atton/Revan .dlg)

## 5. Data / balancing (later)

- [ ] 5.1 Port enemy balancing – audit autobalance MultiplierSet / ChallengeRating / class levels of every K1 .utc vs TSL autobalance.2da. (NEED: post-install Override 2DAs)
- [ ] 5.2 Port globals: K_PTAR_SWOOP_POINT_* vs K_TAR_*, K_LAST_WAYPOINT undeclared, 34 bool/number mismatches.
- [ ] 5.3 Armband checks use && instead of ||; armband.ncs never compiled.
- [ ] 5.4 Main galaxy map: Peragus selectable after Telos -> yav_m51aa (doesn't exist); Sleheyron plays Korriban movies.
- [ ] 5.5 Hood: portraits rows all appearancenumber=511/sex=1; dead heads rows; unused tokens.
- [ ] 5.6 Port lightmaps named *_a000x in 33 models don't exist in vanilla K1 either – compare with the vanilla K1 models. (NEED: a few vanilla K1 models, e.g. m13aa_05a.mdl, m36aa_01.mdl)

## 6. Repo hygiene (whenever)

- [ ] 6.1 .gitattributes: `* text=auto eol=crlf` last line cancels the rules above it.
- [ ] 6.2 Git LFS for large binaries; ignore *.zip, *.user, includes.txt, override.txt.
- [ ] 6.3 Remove installed junk: `lma_tech01 copy.tpc`, regeneration2da.sets list entry, k_inc_hawk.nss in override.
- [ ] 6.4 Launcher .NET 6 is out of support -> .NET 8.

## Inputs from you, in the order they unblock the most
1. k1-files.log / k2-files.log from scan-vanilla-installs.bat
2. Roof A/B test result (1.5)
3. Override 2DAs + installlog.txt from a game with Main+Port+Hood installed (5.1, Hood 2DA fixes)
4. Saves + Atton dlg (4.x)
5. GoG/Disc exe when available (3.1)

## Done in fix-02 (Main + Hood zips) - needs an in-game test
- 1.2-1.4 Hood: 9 clashing scripts + ObsidianEnt.bik moved to tslpatchdata/hood-swap and installed as *.hood; new launcher.bat (state-independent on/off, swaps Saves like launcher.exe); installer requires dialog.tlk.main (KotOR1 active) on PC platforms.
- 1.6 Main: a_gas_dmg.ncs call changed GetGlobalNumber -> GetGlobalBoolean (1 byte, routine 580 -> 578); source updated.
- 1.7 Main: MalachorGas tutorial row -> StrRef12 in changes.ini and all 11 generated ini files.
- 1.9 Hood: normalhead=2DAMEMORY4..12 (11 rows) and heads.2da now processed before appearance.2da so the tokens exist. Check: Sith Twi'lek shares Matilda's head row, Sith advisor shares the Mandalorian head row - intended?
- Hood update-changes.ini.bat deletes a leftover override.txt first.
- Open question: Port banter.dlg calls k_hbanter1-11 (vanilla K1 conditionals the Port does not ship) as well as k_hbanterNx.
