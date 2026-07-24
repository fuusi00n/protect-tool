.class public abstract Li7;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# static fields
.field public static final i:Lh7;


# instance fields
.field public final a:Lqz;

.field public b:I

.field public final c:F

.field public final d:F

.field public final e:I

.field public final f:I

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh7;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li7;->i:Lh7;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0, v0}, Lar;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v1, Lhw;->SnackbarLayout:[I

    .line 14
    .line 15
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget v2, Lhw;->SnackbarLayout_elevation:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    sget v2, Lhw;->SnackbarLayout_elevation:I

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    int-to-float v2, v2

    .line 34
    sget-object v3, Lw50;->a:Ljava/util/WeakHashMap;

    .line 35
    .line 36
    invoke-static {p0, v2}, Ll50;->s(Landroid/view/View;F)V

    .line 37
    .line 38
    .line 39
    :cond_0
    sget v2, Lhw;->SnackbarLayout_animationMode:I

    .line 40
    .line 41
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iput v2, p0, Li7;->b:I

    .line 46
    .line 47
    sget v2, Lhw;->SnackbarLayout_shapeAppearance:I

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    sget v2, Lhw;->SnackbarLayout_shapeAppearanceOverlay:I

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    :cond_1
    invoke-static {p1, p2, v0, v0}, Lqz;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lpz;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lpz;->a()Lqz;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    iput-object p2, p0, Li7;->a:Lqz;

    .line 72
    .line 73
    :cond_2
    sget p2, Lhw;->SnackbarLayout_backgroundOverlayColorAlpha:I

    .line 74
    .line 75
    const/high16 v2, 0x3f800000    # 1.0f

    .line 76
    .line 77
    invoke-virtual {v1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    iput p2, p0, Li7;->c:F

    .line 82
    .line 83
    sget p2, Lhw;->SnackbarLayout_backgroundTint:I

    .line 84
    .line 85
    invoke-static {p1, v1, p2}, Lnm;->v(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Li7;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 90
    .line 91
    .line 92
    sget p1, Lhw;->SnackbarLayout_backgroundTintMode:I

    .line 93
    .line 94
    const/4 p2, -0x1

    .line 95
    invoke-virtual {v1, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 100
    .line 101
    invoke-static {p1, v3}, Lyt;->u(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Li7;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 106
    .line 107
    .line 108
    sget p1, Lhw;->SnackbarLayout_actionTextColorAlpha:I

    .line 109
    .line 110
    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iput p1, p0, Li7;->d:F

    .line 115
    .line 116
    sget p1, Lhw;->SnackbarLayout_android_maxWidth:I

    .line 117
    .line 118
    invoke-virtual {v1, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iput p1, p0, Li7;->e:I

    .line 123
    .line 124
    sget p1, Lhw;->SnackbarLayout_maxActionInlineWidth:I

    .line 125
    .line 126
    invoke-virtual {v1, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    iput p1, p0, Li7;->f:I

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    .line 134
    .line 135
    sget-object p1, Li7;->i:Lh7;

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    .line 139
    .line 140
    const/4 p1, 0x1

    .line 141
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-nez p1, :cond_5

    .line 149
    .line 150
    sget p1, Ltu;->colorSurface:I

    .line 151
    .line 152
    sget p2, Ltu;->colorOnSurface:I

    .line 153
    .line 154
    invoke-virtual {p0}, Li7;->getBackgroundOverlayColorAlpha()F

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    invoke-static {p0, p1}, Lvd;->p(Landroid/view/View;I)I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    invoke-static {p0, p2}, Lvd;->p(Landroid/view/View;I)I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    invoke-static {p1, p2, v1}, Lvd;->D(IIF)I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    iget-object p2, p0, Li7;->a:Lqz;

    .line 171
    .line 172
    if-eqz p2, :cond_3

    .line 173
    .line 174
    sget v0, Lj7;->a:I

    .line 175
    .line 176
    new-instance v0, Lxq;

    .line 177
    .line 178
    invoke-direct {v0, p2}, Lxq;-><init>(Lqz;)V

    .line 179
    .line 180
    .line 181
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {v0, p1}, Lxq;->j(Landroid/content/res/ColorStateList;)V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    sget v1, Lj7;->a:I

    .line 194
    .line 195
    sget v1, Lzu;->mtrl_snackbar_background_corner_radius:I

    .line 196
    .line 197
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 202
    .line 203
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 213
    .line 214
    .line 215
    move-object v0, v1

    .line 216
    :goto_0
    iget-object p1, p0, Li7;->g:Landroid/content/res/ColorStateList;

    .line 217
    .line 218
    if-eqz p1, :cond_4

    .line 219
    .line 220
    invoke-static {v0, p1}, Lqf;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 221
    .line 222
    .line 223
    :cond_4
    sget-object p1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 224
    .line 225
    invoke-virtual {p0, v0}, Li7;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 226
    .line 227
    .line 228
    :cond_5
    return-void
.end method

.method private setBaseTransientBottomBar(Lj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj7;",
            ")V"
        }
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public getActionTextColorAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Li7;->d:F

    .line 2
    .line 3
    return p0
.end method

.method public getAnimationMode()I
    .locals 0

    .line 1
    iget p0, p0, Li7;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public getBackgroundOverlayColorAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Li7;->c:F

    .line 2
    .line 3
    return p0
.end method

.method public getMaxInlineActionWidth()I
    .locals 0

    .line 1
    iget p0, p0, Li7;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public getMaxWidth()I
    .locals 0

    .line 1
    iget p0, p0, Li7;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lw50;->a:Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-static {p0}, Lj50;->c(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Li7;->e:I

    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-le v0, p1, :cond_0

    .line 13
    .line 14
    const/high16 v0, 0x40000000    # 2.0f

    .line 15
    .line 16
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setAnimationMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Li7;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li7;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Li7;->g:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Li7;->g:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lqf;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Li7;->h:Landroid/graphics/PorterDuff$Mode;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lqf;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iput-object p1, p0, Li7;->g:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0, p1}, Lqf;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Li7;->h:Landroid/graphics/PorterDuff$Mode;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lqf;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eq v0, p1, :cond_0

    .line 30
    .line 31
    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Li7;->h:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0, p1}, Lqf;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eq v0, p1, :cond_0

    .line 25
    .line 26
    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    .line 10
    new-instance p0, Landroid/graphics/Rect;

    .line 11
    .line 12
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    .line 14
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 15
    .line 16
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 17
    .line 18
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 19
    .line 20
    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Li7;->i:Lh7;

    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
