# RagnaMod modpack auto install script Linux Side

### NOTE: this is for modpack version 6.1.6

To download the modpack go to https://www.curseforge.com/minecraft/modpacks/ragnamod-vi

## How to:

- Download mod files that are not open to third parties on curseforge:
  * betterendforge-1.16.5-1.6.3.jar => https://www.curseforge.com/minecraft/mc-mods/betterend-forge-port/download/3467948
  * cagedmobs-1.16.5-1.3.8.jar => https://www.curseforge.com/minecraft/mc-mods/caged-mobs/download/3483966


### NOTE: You can also take these files in the mods folder of your local installation

- Copy mods files for Caged Mobs and BetterEnd(Forge) on mods directory
- Enter your API Key on server-setup-config.yaml (line 83) : `curseForgeAPIKey: XXX`
- Put all files on your server
- Launch `chmod +x startserver.sh`
- Launch `sh startserver.sh`

**Enjoy ! :)**

## API Key:

The official way is to create a CFCore account and generate an API key. This is the easiest and most straight forward way, but CurseForge allows mod/modpack creators to disable third-parties from being able to access the download URL through the API, so some mods may not be able to be downloaded automatically.

Visit this link for more informations : https://core.curseforge.com/
