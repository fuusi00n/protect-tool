import os
from config import Config

print("ZIPALIGN=", Config.ZIPALIGN)
print("zipalign_exists=", os.path.isfile(Config.ZIPALIGN))
print("APKSIGNER=", Config.APKSIGNER)
print("apksigner_exists=", os.path.isfile(Config.APKSIGNER))
