@echo off

for /r "lips" %%x in (*.mod) do echo %%x >> lips-file-list.txt
for /r "Modules" %%x in (*.mod) do echo %%x >> mod-file-list.txt
for /r "Override" %%x in (*.mdl) do echo %%x >> mdl-file-list.txt
for /r "Override" %%x in (*.mdx) do echo %%x >> mdx-file-list.txt
for /r "Override" %%x in (*.wok) do echo %%x >> wok-file-list.txt
for /r "Override" %%x in (*.dlg) do echo %%x >> dlg-file-list.txt
for /r "Override" %%x in (*.dwk) do echo %%x >> dwk-file-list.txt
for /r "Override" %%x in (*.gui) do echo %%x >> gui-file-list.txt
for /r "Override" %%x in (*.tga) do echo %%x >> tga-file-list.txt
for /r "Override" %%x in (*.txi) do echo %%x >> txi-file-list.txt
for /r "Override" %%x in (*.jrl) do echo %%x >> jrl-file-list.txt
for /r "Override" %%x in (*.lyt) do echo %%x >> lyt-file-list.txt
for /r "Override" %%x in (*.tpc) do echo %%x >> tpc-file-list.txt
for /r "Override" %%x in (*.ncs) do echo %%x >> ncs-file-list.txt
for /r "Override" %%x in (*.nss) do echo %%x >> nss-file-list.txt
for /r "Override" %%x in (*.pwk) do echo %%x >> pwk-file-list.txt
for /r "Override" %%x in (*.utc) do echo %%x >> utc-file-list.txt
for /r "Override" %%x in (*.uti) do echo %%x >> uti-file-list.txt
for /r "Override" %%x in (*.utp) do echo %%x >> utp-file-list.txt
for /r "Override" %%x in (*.vis) do echo %%x >> vis-file-list.txt
for /r "Override" %%x in (*.wav) do echo %%x >> wav-file-list.txt
for /r "Override" %%x in (*.ssf) do echo %%x >> ssf-file-list.txt

pause