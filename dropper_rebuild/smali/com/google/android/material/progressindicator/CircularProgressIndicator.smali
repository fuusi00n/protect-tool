.class public Lcom/google/android/material/progressindicator/CircularProgressIndicator;
.super Lcom/google/android/material/progressindicator/a;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public static final m:I

.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lzv;->Widget_MaterialComponents_CircularProgressIndicator:I

    .line 2
    .line 3
    sput v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->m:I

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 78
    sget v0, Ltu;->circularProgressIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1
    sget v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->m:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/progressindicator/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ln9;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 9
    .line 10
    check-cast p2, Lq9;

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lag;-><init>(Lf7;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    new-instance v0, Lam;

    .line 20
    .line 21
    new-instance v1, Lp9;

    .line 22
    .line 23
    invoke-direct {v1, p2}, Lp9;-><init>(Lq9;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p3, p2, p1, v1}, Lam;-><init>(Landroid/content/Context;Lf7;Lag;Ld4;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    sget v1, Lcv;->indeterminate_static:I

    .line 34
    .line 35
    new-instance v2, Lw40;

    .line 36
    .line 37
    invoke-direct {v2}, Lw40;-><init>()V

    .line 38
    .line 39
    .line 40
    sget-object v3, Ljy;->a:Ljava/lang/ThreadLocal;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-static {p3, v1, v3}, Ldy;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    iput-object p3, v2, Ln40;->a:Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    new-instance p3, Lv40;

    .line 50
    .line 51
    iget-object v1, v2, Ln40;->a:Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {p3, v1}, Lv40;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 58
    .line 59
    .line 60
    iput-object v2, v0, Lam;->n:Lw40;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/a;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    new-instance v0, Lxe;

    .line 70
    .line 71
    invoke-direct {v0, p3, p2, p1}, Lxe;-><init>(Landroid/content/Context;Lf7;Lag;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/a;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Lf7;
    .locals 9

    .line 1
    new-instance p0, Lq9;

    .line 2
    .line 3
    sget v3, Ltu;->circularProgressIndicatorStyle:I

    .line 4
    .line 5
    sget v4, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->m:I

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v3, v4}, Lf7;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget v1, Lzu;->mtrl_progress_circular_size_medium:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget v1, Lzu;->mtrl_progress_circular_inset_medium:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    sget-object v2, Lhw;->CircularProgressIndicator:[I

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    new-array v5, v8, [I

    .line 34
    .line 35
    invoke-static {p1, p2, v3, v4}, Lr20;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    .line 37
    .line 38
    move-object v0, p1

    .line 39
    move-object v1, p2

    .line 40
    invoke-static/range {v0 .. v5}, Lr20;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget p2, Lhw;->CircularProgressIndicator_indicatorSize:I

    .line 48
    .line 49
    invoke-static {v0, p1, p2, v6}, Lnm;->y(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    iget v1, p0, Lf7;->a:I

    .line 54
    .line 55
    mul-int/lit8 v1, v1, 0x2

    .line 56
    .line 57
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    iput p2, p0, Lq9;->h:I

    .line 62
    .line 63
    sget p2, Lhw;->CircularProgressIndicator_indicatorInset:I

    .line 64
    .line 65
    invoke-static {v0, p1, p2, v7}, Lnm;->y(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    iput p2, p0, Lq9;->i:I

    .line 70
    .line 71
    sget p2, Lhw;->CircularProgressIndicator_indicatorDirectionCircular:I

    .line 72
    .line 73
    invoke-virtual {p1, p2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    iput p2, p0, Lq9;->j:I

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lf7;->a()V

    .line 83
    .line 84
    .line 85
    return-object p0
.end method

.method public getIndicatorDirection()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 2
    .line 3
    check-cast p0, Lq9;

    .line 4
    .line 5
    iget p0, p0, Lq9;->j:I

    .line 6
    .line 7
    return p0
.end method

.method public getIndicatorInset()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 2
    .line 3
    check-cast p0, Lq9;

    .line 4
    .line 5
    iget p0, p0, Lq9;->i:I

    .line 6
    .line 7
    return p0
.end method

.method public getIndicatorSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 2
    .line 3
    check-cast p0, Lq9;

    .line 4
    .line 5
    iget p0, p0, Lq9;->h:I

    .line 6
    .line 7
    return p0
.end method

.method public setIndicatorDirection(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 2
    .line 3
    check-cast v0, Lq9;

    .line 4
    .line 5
    iput p1, v0, Lq9;->j:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/a;->invalidate()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setIndicatorInset(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lq9;

    .line 5
    .line 6
    iget v1, v1, Lq9;->i:I

    .line 7
    .line 8
    if-eq v1, p1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lq9;

    .line 11
    .line 12
    iput p1, v0, Lq9;->i:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/a;->invalidate()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setIndicatorSize(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/a;->getTrackThickness()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Lq9;

    .line 15
    .line 16
    iget v1, v1, Lq9;->h:I

    .line 17
    .line 18
    if-eq v1, p1, :cond_0

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    check-cast v1, Lq9;

    .line 22
    .line 23
    iput p1, v1, Lq9;->h:I

    .line 24
    .line 25
    check-cast v0, Lq9;

    .line 26
    .line 27
    invoke-virtual {v0}, Lf7;->a()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/a;->invalidate()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public setTrackThickness(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/a;->setTrackThickness(I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 5
    .line 6
    check-cast p0, Lq9;

    .line 7
    .line 8
    invoke-virtual {p0}, Lf7;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
