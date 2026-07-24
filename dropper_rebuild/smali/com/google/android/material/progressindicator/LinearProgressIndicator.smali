.class public Lcom/google/android/material/progressindicator/LinearProgressIndicator;
.super Lcom/google/android/material/progressindicator/a;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# static fields
.field public static final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lzv;->Widget_MaterialComponents_LinearProgressIndicator:I

    .line 2
    .line 3
    sput v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->m:I

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 59
    sget v0, Ltu;->linearProgressIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->m:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/progressindicator/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lxn;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 9
    .line 10
    check-cast p2, Lio;

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lag;-><init>(Lf7;)V

    .line 13
    .line 14
    .line 15
    const/high16 p3, 0x43960000    # 300.0f

    .line 16
    .line 17
    iput p3, p1, Lxn;->b:F

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    new-instance v0, Lam;

    .line 24
    .line 25
    iget v1, p2, Lio;->h:I

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Lyn;

    .line 30
    .line 31
    invoke-direct {v1, p2}, Lyn;-><init>(Lio;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v1, Lao;

    .line 36
    .line 37
    invoke-direct {v1, p3, p2}, Lao;-><init>(Landroid/content/Context;Lio;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-direct {v0, p3, p2, p1, v1}, Lam;-><init>(Landroid/content/Context;Lf7;Lag;Ld4;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/a;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    new-instance v0, Lxe;

    .line 51
    .line 52
    invoke-direct {v0, p3, p2, p1}, Lxe;-><init>(Landroid/content/Context;Lf7;Lag;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/a;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Lf7;
    .locals 7

    .line 1
    new-instance p0, Lio;

    .line 2
    .line 3
    sget v0, Ltu;->linearProgressIndicatorStyle:I

    .line 4
    .line 5
    sget v5, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->m:I

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v0, v5}, Lf7;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    .line 9
    .line 10
    sget-object v3, Lhw;->LinearProgressIndicator:[I

    .line 11
    .line 12
    sget v4, Ltu;->linearProgressIndicatorStyle:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    new-array v6, v0, [I

    .line 16
    .line 17
    invoke-static {p1, p2, v4, v5}, Lr20;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    .line 19
    .line 20
    move-object v1, p1

    .line 21
    move-object v2, p2

    .line 22
    invoke-static/range {v1 .. v6}, Lr20;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget p2, Lhw;->LinearProgressIndicator_indeterminateAnimationType:I

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    iput p2, p0, Lio;->h:I

    .line 37
    .line 38
    sget p2, Lhw;->LinearProgressIndicator_indicatorDirectionLinear:I

    .line 39
    .line 40
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iput p2, p0, Lio;->i:I

    .line 45
    .line 46
    sget p2, Lhw;->LinearProgressIndicator_trackStopIndicatorSize:I

    .line 47
    .line 48
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    iget v2, p0, Lf7;->a:I

    .line 53
    .line 54
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    iput p2, p0, Lio;->k:I

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lio;->a()V

    .line 64
    .line 65
    .line 66
    iget p1, p0, Lio;->i:I

    .line 67
    .line 68
    if-ne p1, v1, :cond_0

    .line 69
    .line 70
    move v0, v1

    .line 71
    :cond_0
    iput-boolean v0, p0, Lio;->j:Z

    .line 72
    .line 73
    return-object p0
.end method

.method public final b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lio;

    .line 6
    .line 7
    iget v0, v0, Lio;->h:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/a;->b(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getIndeterminateAnimationType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 2
    .line 3
    check-cast p0, Lio;

    .line 4
    .line 5
    iget p0, p0, Lio;->h:I

    .line 6
    .line 7
    return p0
.end method

.method public getIndicatorDirection()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 2
    .line 3
    check-cast p0, Lio;

    .line 4
    .line 5
    iget p0, p0, Lio;->i:I

    .line 6
    .line 7
    return p0
.end method

.method public getTrackStopIndicatorSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 2
    .line 3
    check-cast p0, Lio;

    .line 4
    .line 5
    iget p0, p0, Lio;->k:I

    .line 6
    .line 7
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 5
    .line 6
    move-object p2, p1

    .line 7
    check-cast p2, Lio;

    .line 8
    .line 9
    move-object p3, p1

    .line 10
    check-cast p3, Lio;

    .line 11
    .line 12
    iget p3, p3, Lio;->i:I

    .line 13
    .line 14
    const/4 p4, 0x1

    .line 15
    if-eq p3, p4, :cond_2

    .line 16
    .line 17
    sget-object p3, Lw50;->a:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-ne p3, p4, :cond_0

    .line 24
    .line 25
    move-object p3, p1

    .line 26
    check-cast p3, Lio;

    .line 27
    .line 28
    iget p3, p3, Lio;->i:I

    .line 29
    .line 30
    const/4 p5, 0x2

    .line 31
    if-eq p3, p5, :cond_2

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    check-cast p1, Lio;

    .line 40
    .line 41
    iget p0, p1, Lio;->i:I

    .line 42
    .line 43
    const/4 p1, 0x3

    .line 44
    if-ne p0, p1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p4, 0x0

    .line 48
    :cond_2
    :goto_0
    iput-boolean p4, p2, Lio;->j:Z

    .line 49
    .line 50
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    add-int/2addr p4, p3

    .line 10
    sub-int/2addr p1, p4

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    add-int/2addr p4, p3

    .line 20
    sub-int/2addr p2, p4

    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/a;->getIndeterminateDrawable()Lam;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    const/4 p4, 0x0

    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/a;->getProgressDrawable()Lxe;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public setIndeterminateAnimationType(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lio;

    .line 5
    .line 6
    iget v1, v1, Lio;->h:I

    .line 7
    .line 8
    if-ne v1, p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/a;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string p0, "Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode."

    .line 25
    .line 26
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    :goto_0
    move-object v1, v0

    .line 31
    check-cast v1, Lio;

    .line 32
    .line 33
    iput p1, v1, Lio;->h:I

    .line 34
    .line 35
    move-object v1, v0

    .line 36
    check-cast v1, Lio;

    .line 37
    .line 38
    invoke-virtual {v1}, Lio;->a()V

    .line 39
    .line 40
    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/a;->getIndeterminateDrawable()Lam;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v1, Lyn;

    .line 48
    .line 49
    check-cast v0, Lio;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Lyn;-><init>(Lio;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p1, Lam;->m:Ld4;

    .line 55
    .line 56
    iput-object p1, v1, Ld4;->a:Ljava/lang/Object;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/a;->getIndeterminateDrawable()Lam;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v1, Lao;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v0, Lio;

    .line 70
    .line 71
    invoke-direct {v1, v2, v0}, Lao;-><init>(Landroid/content/Context;Lio;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p1, Lam;->m:Ld4;

    .line 75
    .line 76
    iput-object p1, v1, Ld4;->a:Ljava/lang/Object;

    .line 77
    .line 78
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/a;->invalidate()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public varargs setIndicatorColor([I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/a;->setIndicatorColor([I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 5
    .line 6
    check-cast p0, Lio;

    .line 7
    .line 8
    invoke-virtual {p0}, Lio;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setIndicatorDirection(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lio;

    .line 5
    .line 6
    iput p1, v1, Lio;->i:I

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Lio;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq p1, v2, :cond_2

    .line 13
    .line 14
    sget-object v3, Lw50;->a:Ljava/util/WeakHashMap;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ne v3, v2, :cond_0

    .line 21
    .line 22
    check-cast v0, Lio;

    .line 23
    .line 24
    iget v0, v0, Lio;->i:I

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    if-eq v0, v3, :cond_2

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    if-ne p1, v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, 0x0

    .line 40
    :cond_2
    :goto_0
    iput-boolean v2, v1, Lio;->j:Z

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/a;->invalidate()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public setTrackCornerRadius(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/a;->setTrackCornerRadius(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 5
    .line 6
    check-cast p1, Lio;

    .line 7
    .line 8
    invoke-virtual {p1}, Lio;->a()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/a;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setTrackStopIndicatorSize(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/a;->a:Lf7;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lio;

    .line 5
    .line 6
    iget v1, v1, Lio;->k:I

    .line 7
    .line 8
    if-eq v1, p1, :cond_0

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Lio;

    .line 12
    .line 13
    move-object v2, v0

    .line 14
    check-cast v2, Lio;

    .line 15
    .line 16
    iget v2, v2, Lf7;->a:I

    .line 17
    .line 18
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, v1, Lio;->k:I

    .line 23
    .line 24
    check-cast v0, Lio;

    .line 25
    .line 26
    invoke-virtual {v0}, Lio;->a()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/a;->invalidate()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
