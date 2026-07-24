.class public final Lzq;
.super Lt5;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# virtual methods
.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lt5;->setTextAppearance(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    sget v0, Ltu;->textAppearanceLineHeightEnabled:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {p1, v0, v1}, Ld40;->H(Landroid/content/Context;IZ)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Lhw;->MaterialTextAppearance:[I

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    sget v0, Lhw;->MaterialTextAppearance_android_lineHeight:I

    .line 28
    .line 29
    sget v1, Lhw;->MaterialTextAppearance_lineHeight:I

    .line 30
    .line 31
    filled-new-array {v0, v1}, [I

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, -0x1

    .line 36
    const/4 v2, 0x0

    .line 37
    move v3, v1

    .line 38
    :goto_0
    const/4 v4, 0x2

    .line 39
    if-ge v2, v4, :cond_0

    .line 40
    .line 41
    if-gez v3, :cond_0

    .line 42
    .line 43
    aget v3, v0, v2

    .line 44
    .line 45
    invoke-static {p2, p1, v3, v1}, Lnm;->y(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    .line 54
    .line 55
    if-ltz v3, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0, v3}, Lt5;->setLineHeight(I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method
