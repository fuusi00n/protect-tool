.class public Lcom/google/android/material/theme/MaterialComponentsViewInflater;
.super Lb6;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb6;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Lg3;
    .locals 0

    .line 1
    new-instance p0, Leq;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Leq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final b(Landroid/content/Context;Landroid/util/AttributeSet;)Li3;
    .locals 0

    .line 1
    new-instance p0, Lcom/google/android/material/button/MaterialButton;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final c(Landroid/content/Context;Landroid/util/AttributeSet;)Lk3;
    .locals 0

    .line 1
    new-instance p0, Lrq;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lrq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final d(Landroid/content/Context;Landroid/util/AttributeSet;)Lt4;
    .locals 6

    .line 1
    new-instance p0, Lvq;

    .line 2
    .line 3
    sget v3, Ltu;->radioButtonStyle:I

    .line 4
    .line 5
    sget v4, Lvq;->g:I

    .line 6
    .line 7
    invoke-static {p1, p2, v3, v4}, Lar;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1, p2, v3}, Lt4;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v2, Lhw;->MaterialRadioButton:[I

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    new-array v5, p1, [I

    .line 22
    .line 23
    move-object v1, p2

    .line 24
    invoke-static/range {v0 .. v5}, Lr20;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    sget v1, Lhw;->MaterialRadioButton_buttonTint:I

    .line 29
    .line 30
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    sget v1, Lhw;->MaterialRadioButton_buttonTint:I

    .line 37
    .line 38
    invoke-static {v0, p2, v1}, Lnm;->v(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {p0, v0}, Lfb;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    sget v0, Lhw;->MaterialRadioButton_useMaterialThemeColors:I

    .line 46
    .line 47
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput-boolean p1, p0, Lvq;->f:Z

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;)Lt5;
    .locals 9

    .line 1
    new-instance p0, Lzq;

    .line 2
    .line 3
    const v0, 0x1010084

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, p2, v0, v1}, Lar;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lt5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget v2, Ltu;->textAppearanceLineHeightEnabled:I

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-static {p1, v2, v3}, Ld40;->H(Landroid/content/Context;IZ)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Lhw;->MaterialTextView:[I

    .line 32
    .line 33
    invoke-virtual {v2, p2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    sget v4, Lhw;->MaterialTextView_android_lineHeight:I

    .line 38
    .line 39
    sget v5, Lhw;->MaterialTextView_lineHeight:I

    .line 40
    .line 41
    filled-new-array {v4, v5}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v5, -0x1

    .line 46
    move v6, v1

    .line 47
    move v7, v5

    .line 48
    :goto_0
    const/4 v8, 0x2

    .line 49
    if-ge v6, v8, :cond_0

    .line 50
    .line 51
    if-gez v7, :cond_0

    .line 52
    .line 53
    aget v7, v4, v6

    .line 54
    .line 55
    invoke-static {p1, v3, v7, v5}, Lnm;->y(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    add-int/lit8 v6, v6, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    .line 64
    .line 65
    if-eq v7, v5, :cond_1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    sget-object p1, Lhw;->MaterialTextView:[I

    .line 69
    .line 70
    invoke-virtual {v2, p2, p1, v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    sget p2, Lhw;->MaterialTextView_android_textAppearance:I

    .line 75
    .line 76
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    .line 82
    .line 83
    if-eq p2, v5, :cond_3

    .line 84
    .line 85
    sget-object p1, Lhw;->MaterialTextAppearance:[I

    .line 86
    .line 87
    invoke-virtual {v2, p2, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    sget v0, Lhw;->MaterialTextAppearance_android_lineHeight:I

    .line 96
    .line 97
    sget v2, Lhw;->MaterialTextAppearance_lineHeight:I

    .line 98
    .line 99
    filled-new-array {v0, v2}, [I

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    move v2, v5

    .line 104
    :goto_1
    if-ge v1, v8, :cond_2

    .line 105
    .line 106
    if-gez v2, :cond_2

    .line 107
    .line 108
    aget v2, v0, v1

    .line 109
    .line 110
    invoke-static {p2, p1, v2, v5}, Lnm;->y(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    .line 119
    .line 120
    if-ltz v2, :cond_3

    .line 121
    .line 122
    invoke-virtual {p0, v2}, Lt5;->setLineHeight(I)V

    .line 123
    .line 124
    .line 125
    :cond_3
    :goto_2
    return-object p0
.end method
