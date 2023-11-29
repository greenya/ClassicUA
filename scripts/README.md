# ClassicUA Generator Scripts

The following files are generated from Crowdin via set of scripts:
- book.lua
- npc*.lua
- quest*.lua
- zone.lua

All other files are edited manually, e.g. via pull requests.

## The Steps

1. Download all files from Crowdin:
    - Export terms in TBX (v2) format -> ClassicUA.tbx
    - Export quests via "Build & Download" -> ClassicUA.zip

2. Update Terms app:
    - Update file /docs/terms/ClassicUA.tbx
    - Update the date in /docs/terms/index.html
    - Commit "Update terms"

3. Generate quests, books, zones and npcs:
    - Clean up folder "translation_from_crowdin"
    - Copy ClassicUA.tbx and ClassicUA.zip, extract zip
    - Run python gen_addon_quests_source_from_crowdin.py > translation_from_crowdin/quests_stats.txt
    - Run python gen_addon_books_source_from_crowdin.py > translation_from_crowdin/books_stats.txt
    - Run python gen_addon_zones_source_from_crowdin.py > translation_from_crowdin/zones_stats.txt
    - Run python gen_addon_npcs_source_from_crowdin.py > translation_from_crowdin/npcs_stats.txt

4. Update quests, books, zones and npcs in addon files:
    - Copy "translation_from_crowdin\entries" into "ClassicUA\entries"
    - Commit "Sync from Crowdin: quests, books, zones, npcs"

5. Update and release new version
    - Commit "Update changelog" with updated "addon_changelog" in text.lua
    - Commit "Bump version to X.X" with updated TOC files
    - Create new version archive "ClassicUA-vX.X.zip"
    - Upload the archive to CurseForge and wait until approved
