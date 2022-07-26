# RagnaMod modpack auto install script Linux Side

### NOTE: this is for modpack version 5.8.0

To download the modpack go to https://www.curseforge.com/minecraft/modpacks/ragnamod-v

## How to:

- Download mod files that are not open to third parties on curseforge:
  * EnderStorage-1.12.2-2.4.6.137-universal.jar => https://www.curseforge.com/minecraft/mc-mods/ender-storage-1-8/download/2755787
  * MooFluids-1.12.2-1.8.12.02a.jar => https://www.curseforge.com/minecraft/mc-mods/moo-fluids/download/2643469
  * questbook-3.1.1-1.12.jar => https://www.curseforge.com/minecraft/mc-mods/better-questing-quest-book/download/2539562

ThermalFoundation-1.12.2-2.6.3.27-universal.jar is not avaible anymore on curse forge, so you can take it on RagnaMod V mod pack files in the "mods" directory.


### NOTE: You can also take these files in the mods folder of your local installation

- Copy mods files for Thermal Foundation, EnderStorage, MooFluids & questbook on mods directory
- Enter your API Key on server-setup-config.yaml (line 97) : `curseForgeAPIKey: XXX`
- Put all files on your server
- Launch `chmod +x startserver.sh`
- Launch `sh startserver.sh`

**Enjoy ! :)**

## API Key:

The official way is to create a CFCore account and generate an API key. This is the easiest and most straight forward way, but CurseForge allows mod/modpack creators to disable third-parties from being able to access the download URL through the API, so some mods may not be able to be downloaded automatically.

Visit this link for more informations : https://core.curseforge.com/

### Note : You must use java 8 before version 321 due to some conflicts due to the latest JAVA updates

If you encounter any problem, do not hesitate to join the RagnaMod Community discord by clicking on the link below or open an issue on GitHub.

[![Discord](https://cdn.discordapp.com/attachments/934134390726995999/934150251391102976/Discord.png)](https://discord.gg/bjjvFj9yQC)
