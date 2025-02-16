# ClassicUA Generator Scripts

The following files are generated from Crowdin via set of scripts:
- book.lua
- chat.lua
- gossip.lua
- misc.lua
- npc.lua
- quest_alliance.lua
- quest_both.lua
- quest_horde.lua
- zone.lua

All other files are edited manually, e.g. via pull requests.

## The Steps

1. Download all files from Crowdin:
    - Export terms in TBX (v2) format -> ClassicUA.tbx
    - Export quests via "Build & Download" -> ClassicUA.zip
    - Download source for following folders:
        - chats, chats_*
        - gossip, gossip_*
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
        *   /gossip, gossip_*
        * /ClassicUA.tbx

    - Run python gen_book_lua.py > translation_from_crowdin/gen_book_lua_output.txt
    - Run python gen_chat_lua.py > translation_from_crowdin/gen_chat_lua_output.txt
    - Run python gen_gossip_lua.py > translation_from_crowdin/gen_gossip_lua_output.txt
    - Run python gen_misc_lua.py > translation_from_crowdin/gen_misc_lua_output.txt
    - Run python gen_npc_lua.py > translation_from_crowdin/gen_npc_lua_output.txt
    - Run python gen_quest_lua.py > translation_from_crowdin/gen_quest_lua_output.txt
    - Run python gen_zone_lua.py > translation_from_crowdin/gen_zone_lua_output.txt

    - Commit "Sync from Crowdin"

4. Update and release new version
    - Commit "Update Classic API to X.X.X and Cata to X.X.X" if needed
    - Commit "Update changelog" with updated "changelog" in info.lua
    - Commit "Bump version to X.X" with updated TOC files
    - Create new version archive "ClassicUA-vX.X.zip"
    - Upload the archive to CurseForge and wait until approved
