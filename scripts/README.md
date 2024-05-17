# ClassicUA Generator Scripts

The following files are generated from Crowdin via set of scripts:
- book.lua
- chat.lua
- gossip.lua
- npc.lua
- quest_alliance.lua
- quest_both.lua
- quest_horde.lua
- zone.lua
- [not used] glossary.lua

All other files are edited manually, e.g. via pull requests.

## The Steps

1. Download all files from Crowdin:
    - Export terms in TBX (v2) format -> ClassicUA.tbx
    - Export quests via "Build & Download" -> ClassicUA.zip
    - Download source for following folders:
        - chats, chats_*
        - gossip
        Note: select multiple folders, right click and choose "Download sources" -> ClassicUA_en.zip

2. Update Terms app:
    - Update file /docs/terms/ClassicUA.tbx
    - Update the date in /docs/terms/index.html
    - Commit "Update terms"

3. Generate lua files:
    - Clean up folder "translation_from_crowdin"
    - Copy ClassicUA.tbx, ClassicUA.zip and ClassicUA_en.zip, extract both zips
    - Expected structure at this point:
        * /uk                   <- from ClassicUA.zip
        * /en                   <- from ClassicUA_en.zip
        *   /chats, /chats_*
        *   /gossip
        * /ClassicUA.tbx

    - Run python gen_addon_books_source_from_crowdin.py > translation_from_crowdin/books_stats.txt
    - Run python gen_addon_chats_source_from_crowdin.py > translation_from_crowdin/chats_stats.txt
    - Run python gen_addon_gossip_source_from_crowdin.py > translation_from_crowdin/gossip_stats.txt
    - Run python gen_addon_npcs_source_from_crowdin.py > translation_from_crowdin/npcs_stats.txt
    - Run python gen_addon_quests_source_from_crowdin.py > translation_from_crowdin/quests_stats.txt
    - Run python gen_addon_zones_source_from_crowdin.py > translation_from_crowdin/zones_stats.txt

    - [not used] Run python gen_addon_glossary_source_from_crowdin.py > translation_from_crowdin/glossary_stats.txt
        * Note: glossary generator must go last, as it uses previously generated lua files

4. Update addon lua files:
    - Copy "translation_from_crowdin\entries" into "ClassicUA\entries"
    - Commit "Sync from Crowdin"

5. Update and release new version
    - Commit "Update changelog" with updated "addon_changelog" in text.lua
    - Commit "Bump version to X.X" with updated TOC files
    - Create new version archive "ClassicUA-vX.X.zip"
    - Upload the archive to CurseForge and wait until approved
