.class public final Lvq;
.super Lt4;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public static final g:I

.field public static final h:[[I

.field public e:Landroid/content/res/ColorStateList;

.field public f:Z

.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget v0, Lzv;->Widget_MaterialComponents_CompoundButton_RadioButton:I

    .line 2
    .line 3
    sput v0, Lvq;->g:I

    .line 4
    .line 5
    const v0, 0x101009e

    .line 6
    .line 7
    .line 8
    const v1, 0x10100a0

    .line 9
    .line 10
    .line 11
    filled-new-array {v0, v1}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const v3, -0x10100a0

    .line 16
    .line 17
    .line 18
    filled-new-array {v0, v3}, [I

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const v4, -0x101009e

    .line 23
    .line 24
    .line 25
    filled-new-array {v4, v1}, [I

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    filled-new-array {v4, v3}, [I

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    filled-new-array {v2, v0, v1, v3}, [[I

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lvq;->h:[[I

    .line 38
    .line 39
    return-void
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    .locals 6

    .line 1
    iget-object v0, p0, Lvq;->e:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget v0, Ltu;->colorControlActivated:I

    .line 6
    .line 7
    invoke-static {p0, v0}, Lvd;->p(Landroid/view/View;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget v1, Ltu;->colorOnSurface:I

    .line 12
    .line 13
    invoke-static {p0, v1}, Lvd;->p(Landroid/view/View;I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sget v2, Ltu;->colorSurface:I

    .line 18
    .line 19
    invoke-static {p0, v2}, Lvd;->p(Landroid/view/View;I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/high16 v3, 0x3f800000

    .line 24
    .line 25
    invoke-static {v2, v0, v3}, Lvd;->D(IIF)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const v3, 0x3f0a3d71

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v1, v3}, Lvd;->D(IIF)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const v4, 0x3ec28f5c

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v1, v4}, Lvd;->D(IIF)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-static {v2, v1, v4}, Lvd;->D(IIF)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    filled-new-array {v0, v3, v5, v1}, [I

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 52
    .line 53
    sget-object v2, Lvq;->h:[[I

    .line 54
    .line 55
    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lvq;->e:Landroid/content/res/ColorStateList;

    .line 59
    .line 60
    :cond_0
    iget-object p0, p0, Lvq;->e:Landroid/content/res/ColorStateList;

    .line 61
    .line 62
    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lvq;->f:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lfb;->a(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lvq;->setUseMaterialThemeColors(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lvq;->f:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lvq;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Lfb;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    invoke-static {p0, p1}, Lfb;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
