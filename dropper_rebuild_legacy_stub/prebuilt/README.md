# Prebuilt secondary DEX (Etapa 4.1)

`androidx_material.dex` is injected as `classes2.dex` after `apktool b`.

Contents (official Maven AARs → d8):
- androidx.core, appcompat, activity, fragment
- recyclerview, coordinatorlayout, constraintlayout
- drawerlayout, viewpager/viewpager2, transition, cardview
- vectordrawable (+ animated), savedstate, annotation
- com.google.android.material

Target: dropper DEX total ≫ 400 KB (anti-stub). Not BTMOB pump-size.

Rebuild (optional): extract `classes.jar` from AARs, `d8 --min-api 24 --output . *.jar`, replace this file.
