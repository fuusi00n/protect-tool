.class public final La60;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# static fields
.field public static final v:Lmw;


# instance fields
.field public a:I

.field public final b:I

.field public c:I

.field public d:[F

.field public e:[F

.field public f:[F

.field public g:[F

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:I

.field public l:Landroid/view/VelocityTracker;

.field public final m:F

.field public final n:F

.field public final o:I

.field public final p:Landroid/widget/OverScroller;

.field public final q:Lyt;

.field public r:Landroid/view/View;

.field public s:Z

.field public final t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final u:Lu6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmw;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lmw;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, La60;->v:Lmw;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lyt;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, La60;->c:I

    .line 6
    .line 7
    new-instance v0, Lu6;

    .line 8
    .line 9
    const/16 v1, 0xd

    .line 10
    .line 11
    invoke-direct {v0, v1, p0}, Lu6;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, La60;->u:Lu6;

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    iput-object p2, p0, La60;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 19
    .line 20
    iput-object p3, p0, La60;->q:Lyt;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 35
    .line 36
    const/high16 v0, 0x41a00000    # 20.0f

    .line 37
    .line 38
    mul-float/2addr p3, v0

    .line 39
    const/high16 v0, 0x3f000000    # 0.5f

    .line 40
    .line 41
    add-float/2addr p3, v0

    .line 42
    float-to-int p3, p3

    .line 43
    iput p3, p0, La60;->o:I

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    iput p3, p0, La60;->b:I

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    int-to-float p3, p3

    .line 56
    iput p3, p0, La60;->m:F

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    int-to-float p2, p2

    .line 63
    iput p2, p0, La60;->n:F

    .line 64
    .line 65
    new-instance p2, Landroid/widget/OverScroller;

    .line 66
    .line 67
    sget-object p3, La60;->v:Lmw;

    .line 68
    .line 69
    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 70
    .line 71
    .line 72
    iput-object p2, p0, La60;->p:Landroid/widget/OverScroller;

    .line 73
    .line 74
    return-void

    .line 75
    :cond_0
    const-string p0, "Callback may not be null"

    .line 76
    .line 77
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, La60;->c:I

    .line 3
    .line 4
    iget-object v0, p0, La60;->d:[F

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, La60;->e:[F

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, La60;->f:[F

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, La60;->g:[F

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, La60;->h:[I

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, La60;->i:[I

    .line 35
    .line 36
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, La60;->j:[I

    .line 40
    .line 41
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 42
    .line 43
    .line 44
    iput v1, p0, La60;->k:I

    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, La60;->l:Landroid/view/VelocityTracker;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, La60;->l:Landroid/view/VelocityTracker;

    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, La60;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, La60;->r:Landroid/view/View;

    .line 10
    .line 11
    iput p2, p0, La60;->c:I

    .line 12
    .line 13
    iget-object v0, p0, La60;->q:Lyt;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lyt;->q(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, La60;->m(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p2, ")"

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final c(Landroid/view/View;FF)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_3

    .line 5
    :cond_0
    iget-object v1, p0, La60;->q:Lyt;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lyt;->i(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-lez p1, :cond_1

    .line 13
    .line 14
    move p1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move p1, v0

    .line 17
    :goto_0
    invoke-virtual {v1}, Lyt;->j()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v1, :cond_2

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move v1, v0

    .line 26
    :goto_1
    iget p0, p0, La60;->b:I

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    mul-float/2addr p2, p2

    .line 33
    mul-float/2addr p3, p3

    .line 34
    add-float/2addr p3, p2

    .line 35
    mul-int/2addr p0, p0

    .line 36
    int-to-float p0, p0

    .line 37
    cmpl-float p0, p3, p0

    .line 38
    .line 39
    if-lez p0, :cond_5

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    if-eqz p1, :cond_4

    .line 43
    .line 44
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    int-to-float p0, p0

    .line 49
    cmpl-float p0, p1, p0

    .line 50
    .line 51
    if-lez p0, :cond_5

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    if-eqz v1, :cond_5

    .line 55
    .line 56
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    int-to-float p0, p0

    .line 61
    cmpl-float p0, p1, p0

    .line 62
    .line 63
    if-lez p0, :cond_5

    .line 64
    .line 65
    :goto_2
    return v2

    .line 66
    :cond_5
    :goto_3
    return v0
.end method

.method public final d(I)V
    .locals 4

    .line 1
    iget-object v0, p0, La60;->d:[F

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, La60;->k:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    shl-int/2addr v2, p1

    .line 9
    and-int v3, v1, v2

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput v3, v0, p1

    .line 15
    .line 16
    iget-object v0, p0, La60;->e:[F

    .line 17
    .line 18
    aput v3, v0, p1

    .line 19
    .line 20
    iget-object v0, p0, La60;->f:[F

    .line 21
    .line 22
    aput v3, v0, p1

    .line 23
    .line 24
    iget-object v0, p0, La60;->g:[F

    .line 25
    .line 26
    aput v3, v0, p1

    .line 27
    .line 28
    iget-object v0, p0, La60;->h:[I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    aput v3, v0, p1

    .line 32
    .line 33
    iget-object v0, p0, La60;->i:[I

    .line 34
    .line 35
    aput v3, v0, p1

    .line 36
    .line 37
    iget-object v0, p0, La60;->j:[I

    .line 38
    .line 39
    aput v3, v0, p1

    .line 40
    .line 41
    not-int p1, v2

    .line 42
    and-int/2addr p1, v1

    .line 43
    iput p1, p0, La60;->k:I

    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final e(III)I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    iget-object p0, p0, La60;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    div-int/lit8 v0, p0, 0x2

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    int-to-float p0, p0

    .line 19
    div-float/2addr v1, p0

    .line 20
    const/high16 p0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-float v0, v0

    .line 27
    const/high16 v2, 0x3f000000    # 0.5f

    .line 28
    .line 29
    sub-float/2addr v1, v2

    .line 30
    const v2, 0x3ef1463b

    .line 31
    .line 32
    .line 33
    mul-float/2addr v1, v2

    .line 34
    float-to-double v1, v1

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    double-to-float v1, v1

    .line 40
    mul-float/2addr v1, v0

    .line 41
    add-float/2addr v1, v0

    .line 42
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-lez p2, :cond_1

    .line 47
    .line 48
    int-to-float p0, p2

    .line 49
    div-float/2addr v1, p0

    .line 50
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    const/high16 p1, 0x447a0000    # 1000.0f

    .line 55
    .line 56
    mul-float/2addr p0, p1

    .line 57
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    mul-int/lit8 p0, p0, 0x4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    int-to-float p1, p1

    .line 69
    int-to-float p2, p3

    .line 70
    div-float/2addr p1, p2

    .line 71
    add-float/2addr p1, p0

    .line 72
    const/high16 p0, 0x43800000    # 256.0f

    .line 73
    .line 74
    mul-float/2addr p1, p0

    .line 75
    float-to-int p0, p1

    .line 76
    :goto_0
    const/16 p1, 0x258

    .line 77
    .line 78
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    return p0
.end method

.method public final f()Z
    .locals 10

    .line 1
    iget v0, p0, La60;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v0, v2, :cond_5

    .line 6
    .line 7
    iget-object v0, p0, La60;->p:Landroid/widget/OverScroller;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    iget-object v6, p0, La60;->r:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    sub-int v6, v4, v6

    .line 28
    .line 29
    iget-object v7, p0, La60;->r:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    sub-int v7, v5, v7

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    iget-object v8, p0, La60;->r:Landroid/view/View;

    .line 40
    .line 41
    sget-object v9, Lw50;->a:Ljava/util/WeakHashMap;

    .line 42
    .line 43
    invoke-virtual {v8, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 44
    .line 45
    .line 46
    :cond_0
    if-eqz v7, :cond_1

    .line 47
    .line 48
    iget-object v8, p0, La60;->r:Landroid/view/View;

    .line 49
    .line 50
    sget-object v9, Lw50;->a:Ljava/util/WeakHashMap;

    .line 51
    .line 52
    invoke-virtual {v8, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    if-nez v6, :cond_2

    .line 56
    .line 57
    if-eqz v7, :cond_3

    .line 58
    .line 59
    :cond_2
    iget-object v6, p0, La60;->q:Lyt;

    .line 60
    .line 61
    iget-object v7, p0, La60;->r:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {v6, v7, v4, v5}, Lyt;->s(Landroid/view/View;II)V

    .line 64
    .line 65
    .line 66
    :cond_3
    if-eqz v3, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-ne v4, v6, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ne v5, v4, :cond_4

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 81
    .line 82
    .line 83
    move v3, v1

    .line 84
    :cond_4
    if-nez v3, :cond_5

    .line 85
    .line 86
    iget-object v0, p0, La60;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 87
    .line 88
    iget-object v3, p0, La60;->u:Lu6;

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    :cond_5
    iget p0, p0, La60;->a:I

    .line 94
    .line 95
    if-ne p0, v2, :cond_6

    .line 96
    .line 97
    const/4 p0, 0x1

    .line 98
    return p0

    .line 99
    :cond_6
    return v1
.end method

.method public final g(II)Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, La60;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, La60;->q:Lyt;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-lt p1, v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ge p1, v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-lt p2, v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ge p2, v3, :cond_0

    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public final h(IIII)Z
    .locals 10

    .line 1
    iget-object v0, p0, La60;->r:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v0, p0, La60;->r:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    sub-int v4, p1, v2

    .line 14
    .line 15
    sub-int v5, p2, v3

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iget-object v1, p0, La60;->p:Landroid/widget/OverScroller;

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, La60;->m(I)V

    .line 28
    .line 29
    .line 30
    return p1

    .line 31
    :cond_0
    iget-object p2, p0, La60;->r:Landroid/view/View;

    .line 32
    .line 33
    iget v0, p0, La60;->n:F

    .line 34
    .line 35
    float-to-int v0, v0

    .line 36
    iget v6, p0, La60;->m:F

    .line 37
    .line 38
    float-to-int v6, v6

    .line 39
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-ge v7, v0, :cond_1

    .line 44
    .line 45
    move p3, p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    if-le v7, v6, :cond_3

    .line 48
    .line 49
    if-lez p3, :cond_2

    .line 50
    .line 51
    move p3, v6

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    neg-int p3, v6

    .line 54
    :cond_3
    :goto_0
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-ge v7, v0, :cond_4

    .line 59
    .line 60
    move p4, p1

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    if-le v7, v6, :cond_6

    .line 63
    .line 64
    if-lez p4, :cond_5

    .line 65
    .line 66
    move p4, v6

    .line 67
    goto :goto_1

    .line 68
    :cond_5
    neg-int p4, v6

    .line 69
    :cond_6
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    add-int v8, v6, v7

    .line 86
    .line 87
    add-int v9, p1, v0

    .line 88
    .line 89
    if-eqz p3, :cond_7

    .line 90
    .line 91
    int-to-float p1, v6

    .line 92
    int-to-float v6, v8

    .line 93
    :goto_2
    div-float/2addr p1, v6

    .line 94
    goto :goto_3

    .line 95
    :cond_7
    int-to-float p1, p1

    .line 96
    int-to-float v6, v9

    .line 97
    goto :goto_2

    .line 98
    :goto_3
    if-eqz p4, :cond_8

    .line 99
    .line 100
    int-to-float v0, v7

    .line 101
    int-to-float v6, v8

    .line 102
    :goto_4
    div-float/2addr v0, v6

    .line 103
    goto :goto_5

    .line 104
    :cond_8
    int-to-float v0, v0

    .line 105
    int-to-float v6, v9

    .line 106
    goto :goto_4

    .line 107
    :goto_5
    iget-object v6, p0, La60;->q:Lyt;

    .line 108
    .line 109
    invoke-virtual {v6, p2}, Lyt;->i(Landroid/view/View;)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-virtual {p0, v4, p3, p2}, La60;->e(III)I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    invoke-virtual {v6}, Lyt;->j()I

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    invoke-virtual {p0, v5, p4, p3}, La60;->e(III)I

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    int-to-float p2, p2

    .line 126
    mul-float/2addr p2, p1

    .line 127
    int-to-float p1, p3

    .line 128
    mul-float/2addr p1, v0

    .line 129
    add-float/2addr p1, p2

    .line 130
    float-to-int v6, p1

    .line 131
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 132
    .line 133
    .line 134
    const/4 p1, 0x2

    .line 135
    invoke-virtual {p0, p1}, La60;->m(I)V

    .line 136
    .line 137
    .line 138
    const/4 p0, 0x1

    .line 139
    return p0
.end method

.method public final i(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, La60;->a()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, La60;->l:Landroid/view/VelocityTracker;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, La60;->l:Landroid/view/VelocityTracker;

    .line 23
    .line 24
    :cond_1
    iget-object v2, p0, La60;->l:Landroid/view/VelocityTracker;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_19

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    if-eq v0, v3, :cond_17

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    iget-object v5, p0, La60;->q:Lyt;

    .line 37
    .line 38
    if-eq v0, v4, :cond_d

    .line 39
    .line 40
    const/4 v4, 0x3

    .line 41
    if-eq v0, v4, :cond_b

    .line 42
    .line 43
    const/4 v4, 0x5

    .line 44
    if-eq v0, v4, :cond_7

    .line 45
    .line 46
    const/4 v4, 0x6

    .line 47
    if-eq v0, v4, :cond_2

    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget v1, p0, La60;->a:I

    .line 56
    .line 57
    if-ne v1, v3, :cond_6

    .line 58
    .line 59
    iget v1, p0, La60;->c:I

    .line 60
    .line 61
    if-ne v0, v1, :cond_6

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    :goto_0
    const/4 v3, -0x1

    .line 68
    if-ge v2, v1, :cond_5

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    iget v5, p0, La60;->c:I

    .line 75
    .line 76
    if-ne v4, v5, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    float-to-int v5, v5

    .line 88
    float-to-int v6, v6

    .line 89
    invoke-virtual {p0, v5, v6}, La60;->g(II)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget-object v6, p0, La60;->r:Landroid/view/View;

    .line 94
    .line 95
    if-ne v5, v6, :cond_4

    .line 96
    .line 97
    invoke-virtual {p0, v6, v4}, La60;->p(Landroid/view/View;I)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_4

    .line 102
    .line 103
    iget p1, p0, La60;->c:I

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    move p1, v3

    .line 110
    :goto_2
    if-ne p1, v3, :cond_6

    .line 111
    .line 112
    invoke-virtual {p0}, La60;->j()V

    .line 113
    .line 114
    .line 115
    :cond_6
    invoke-virtual {p0, v0}, La60;->d(I)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    invoke-virtual {p0, v2, p1, v0}, La60;->k(FFI)V

    .line 132
    .line 133
    .line 134
    iget v1, p0, La60;->a:I

    .line 135
    .line 136
    if-nez v1, :cond_8

    .line 137
    .line 138
    float-to-int v1, v2

    .line 139
    float-to-int p1, p1

    .line 140
    invoke-virtual {p0, v1, p1}, La60;->g(II)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p0, p1, v0}, La60;->p(Landroid/view/View;I)Z

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, La60;->h:[I

    .line 148
    .line 149
    aget p0, p0, v0

    .line 150
    .line 151
    return-void

    .line 152
    :cond_8
    float-to-int v1, v2

    .line 153
    float-to-int p1, p1

    .line 154
    iget-object v2, p0, La60;->r:Landroid/view/View;

    .line 155
    .line 156
    if-nez v2, :cond_9

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-lt v1, v3, :cond_a

    .line 164
    .line 165
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-ge v1, v3, :cond_a

    .line 170
    .line 171
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-lt p1, v1, :cond_a

    .line 176
    .line 177
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-ge p1, v1, :cond_a

    .line 182
    .line 183
    iget-object p1, p0, La60;->r:Landroid/view/View;

    .line 184
    .line 185
    invoke-virtual {p0, p1, v0}, La60;->p(Landroid/view/View;I)Z

    .line 186
    .line 187
    .line 188
    :cond_a
    :goto_3
    return-void

    .line 189
    :cond_b
    iget p1, p0, La60;->a:I

    .line 190
    .line 191
    if-ne p1, v3, :cond_c

    .line 192
    .line 193
    iput-boolean v3, p0, La60;->s:Z

    .line 194
    .line 195
    iget-object p1, p0, La60;->r:Landroid/view/View;

    .line 196
    .line 197
    const/4 v0, 0x0

    .line 198
    invoke-virtual {v5, p1, v0, v0}, Lyt;->t(Landroid/view/View;FF)V

    .line 199
    .line 200
    .line 201
    iput-boolean v2, p0, La60;->s:Z

    .line 202
    .line 203
    iget p1, p0, La60;->a:I

    .line 204
    .line 205
    if-ne p1, v3, :cond_c

    .line 206
    .line 207
    invoke-virtual {p0, v2}, La60;->m(I)V

    .line 208
    .line 209
    .line 210
    :cond_c
    invoke-virtual {p0}, La60;->a()V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :cond_d
    iget v0, p0, La60;->a:I

    .line 215
    .line 216
    if-ne v0, v3, :cond_13

    .line 217
    .line 218
    iget v0, p0, La60;->c:I

    .line 219
    .line 220
    iget v1, p0, La60;->k:I

    .line 221
    .line 222
    shl-int v2, v3, v0

    .line 223
    .line 224
    and-int/2addr v1, v2

    .line 225
    if-eqz v1, :cond_12

    .line 226
    .line 227
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    iget-object v2, p0, La60;->f:[F

    .line 240
    .line 241
    iget v3, p0, La60;->c:I

    .line 242
    .line 243
    aget v2, v2, v3

    .line 244
    .line 245
    sub-float/2addr v1, v2

    .line 246
    float-to-int v1, v1

    .line 247
    iget-object v2, p0, La60;->g:[F

    .line 248
    .line 249
    aget v2, v2, v3

    .line 250
    .line 251
    sub-float/2addr v0, v2

    .line 252
    float-to-int v0, v0

    .line 253
    iget-object v2, p0, La60;->r:Landroid/view/View;

    .line 254
    .line 255
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    add-int/2addr v2, v1

    .line 260
    iget-object v3, p0, La60;->r:Landroid/view/View;

    .line 261
    .line 262
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    add-int/2addr v3, v0

    .line 267
    iget-object v4, p0, La60;->r:Landroid/view/View;

    .line 268
    .line 269
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    iget-object v6, p0, La60;->r:Landroid/view/View;

    .line 274
    .line 275
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    if-eqz v1, :cond_e

    .line 280
    .line 281
    iget-object v7, p0, La60;->r:Landroid/view/View;

    .line 282
    .line 283
    invoke-virtual {v5, v7, v2}, Lyt;->b(Landroid/view/View;I)I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    iget-object v7, p0, La60;->r:Landroid/view/View;

    .line 288
    .line 289
    sub-int v4, v2, v4

    .line 290
    .line 291
    sget-object v8, Lw50;->a:Ljava/util/WeakHashMap;

    .line 292
    .line 293
    invoke-virtual {v7, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 294
    .line 295
    .line 296
    :cond_e
    if-eqz v0, :cond_f

    .line 297
    .line 298
    iget-object v4, p0, La60;->r:Landroid/view/View;

    .line 299
    .line 300
    invoke-virtual {v5, v4, v3}, Lyt;->c(Landroid/view/View;I)I

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    iget-object v4, p0, La60;->r:Landroid/view/View;

    .line 305
    .line 306
    sub-int v6, v3, v6

    .line 307
    .line 308
    sget-object v7, Lw50;->a:Ljava/util/WeakHashMap;

    .line 309
    .line 310
    invoke-virtual {v4, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 311
    .line 312
    .line 313
    :cond_f
    if-nez v1, :cond_10

    .line 314
    .line 315
    if-eqz v0, :cond_11

    .line 316
    .line 317
    :cond_10
    iget-object v0, p0, La60;->r:Landroid/view/View;

    .line 318
    .line 319
    invoke-virtual {v5, v0, v2, v3}, Lyt;->s(Landroid/view/View;II)V

    .line 320
    .line 321
    .line 322
    :cond_11
    invoke-virtual {p0, p1}, La60;->l(Landroid/view/MotionEvent;)V

    .line 323
    .line 324
    .line 325
    :cond_12
    return-void

    .line 326
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    :goto_4
    if-ge v2, v0, :cond_16

    .line 331
    .line 332
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    iget v4, p0, La60;->k:I

    .line 337
    .line 338
    shl-int v5, v3, v1

    .line 339
    .line 340
    and-int/2addr v4, v5

    .line 341
    if-eqz v4, :cond_15

    .line 342
    .line 343
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 344
    .line 345
    .line 346
    move-result v4

    .line 347
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    iget-object v6, p0, La60;->d:[F

    .line 352
    .line 353
    aget v6, v6, v1

    .line 354
    .line 355
    sub-float v6, v4, v6

    .line 356
    .line 357
    iget-object v7, p0, La60;->e:[F

    .line 358
    .line 359
    aget v7, v7, v1

    .line 360
    .line 361
    sub-float v7, v5, v7

    .line 362
    .line 363
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 364
    .line 365
    .line 366
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 367
    .line 368
    .line 369
    iget-object v8, p0, La60;->h:[I

    .line 370
    .line 371
    aget v8, v8, v1

    .line 372
    .line 373
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 374
    .line 375
    .line 376
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 377
    .line 378
    .line 379
    iget-object v8, p0, La60;->h:[I

    .line 380
    .line 381
    aget v8, v8, v1

    .line 382
    .line 383
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 384
    .line 385
    .line 386
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 387
    .line 388
    .line 389
    iget-object v8, p0, La60;->h:[I

    .line 390
    .line 391
    aget v8, v8, v1

    .line 392
    .line 393
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 394
    .line 395
    .line 396
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 397
    .line 398
    .line 399
    iget-object v8, p0, La60;->h:[I

    .line 400
    .line 401
    aget v8, v8, v1

    .line 402
    .line 403
    iget v8, p0, La60;->a:I

    .line 404
    .line 405
    if-ne v8, v3, :cond_14

    .line 406
    .line 407
    goto :goto_5

    .line 408
    :cond_14
    float-to-int v4, v4

    .line 409
    float-to-int v5, v5

    .line 410
    invoke-virtual {p0, v4, v5}, La60;->g(II)Landroid/view/View;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    invoke-virtual {p0, v4, v6, v7}, La60;->c(Landroid/view/View;FF)Z

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    if-eqz v5, :cond_15

    .line 419
    .line 420
    invoke-virtual {p0, v4, v1}, La60;->p(Landroid/view/View;I)Z

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-eqz v1, :cond_15

    .line 425
    .line 426
    goto :goto_5

    .line 427
    :cond_15
    add-int/lit8 v2, v2, 0x1

    .line 428
    .line 429
    goto :goto_4

    .line 430
    :cond_16
    :goto_5
    invoke-virtual {p0, p1}, La60;->l(Landroid/view/MotionEvent;)V

    .line 431
    .line 432
    .line 433
    return-void

    .line 434
    :cond_17
    iget p1, p0, La60;->a:I

    .line 435
    .line 436
    if-ne p1, v3, :cond_18

    .line 437
    .line 438
    invoke-virtual {p0}, La60;->j()V

    .line 439
    .line 440
    .line 441
    :cond_18
    invoke-virtual {p0}, La60;->a()V

    .line 442
    .line 443
    .line 444
    return-void

    .line 445
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 454
    .line 455
    .line 456
    move-result p1

    .line 457
    float-to-int v2, v0

    .line 458
    float-to-int v3, v1

    .line 459
    invoke-virtual {p0, v2, v3}, La60;->g(II)Landroid/view/View;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-virtual {p0, v0, v1, p1}, La60;->k(FFI)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p0, v2, p1}, La60;->p(Landroid/view/View;I)Z

    .line 467
    .line 468
    .line 469
    iget-object p0, p0, La60;->h:[I

    .line 470
    .line 471
    aget p0, p0, p1

    .line 472
    .line 473
    return-void
.end method

.method public final j()V
    .locals 6

    .line 1
    iget-object v0, p0, La60;->l:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    iget v2, p0, La60;->m:F

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, La60;->l:Landroid/view/VelocityTracker;

    .line 11
    .line 12
    iget v1, p0, La60;->c:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget v3, p0, La60;->n:F

    .line 23
    .line 24
    cmpg-float v4, v1, v3

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    if-gez v4, :cond_0

    .line 28
    .line 29
    move v0, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    cmpl-float v1, v1, v2

    .line 32
    .line 33
    if-lez v1, :cond_2

    .line 34
    .line 35
    cmpl-float v0, v0, v5

    .line 36
    .line 37
    if-lez v0, :cond_1

    .line 38
    .line 39
    move v0, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    neg-float v0, v2

    .line 42
    :cond_2
    :goto_0
    iget-object v1, p0, La60;->l:Landroid/view/VelocityTracker;

    .line 43
    .line 44
    iget v4, p0, La60;->c:I

    .line 45
    .line 46
    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    cmpg-float v3, v4, v3

    .line 55
    .line 56
    if-gez v3, :cond_3

    .line 57
    .line 58
    move v2, v5

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    cmpl-float v3, v4, v2

    .line 61
    .line 62
    if-lez v3, :cond_5

    .line 63
    .line 64
    cmpl-float v1, v1, v5

    .line 65
    .line 66
    if-lez v1, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    neg-float v2, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_5
    move v2, v1

    .line 72
    :goto_1
    const/4 v1, 0x1

    .line 73
    iput-boolean v1, p0, La60;->s:Z

    .line 74
    .line 75
    iget-object v3, p0, La60;->q:Lyt;

    .line 76
    .line 77
    iget-object v4, p0, La60;->r:Landroid/view/View;

    .line 78
    .line 79
    invoke-virtual {v3, v4, v0, v2}, Lyt;->t(Landroid/view/View;FF)V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, La60;->s:Z

    .line 84
    .line 85
    iget v2, p0, La60;->a:I

    .line 86
    .line 87
    if-ne v2, v1, :cond_6

    .line 88
    .line 89
    invoke-virtual {p0, v0}, La60;->m(I)V

    .line 90
    .line 91
    .line 92
    :cond_6
    return-void
.end method

.method public final k(FFI)V
    .locals 10

    .line 1
    iget-object v0, p0, La60;->d:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    if-gt v2, p3, :cond_2

    .line 8
    .line 9
    :cond_0
    add-int/lit8 v2, p3, 0x1

    .line 10
    .line 11
    new-array v3, v2, [F

    .line 12
    .line 13
    new-array v4, v2, [F

    .line 14
    .line 15
    new-array v5, v2, [F

    .line 16
    .line 17
    new-array v6, v2, [F

    .line 18
    .line 19
    new-array v7, v2, [I

    .line 20
    .line 21
    new-array v8, v2, [I

    .line 22
    .line 23
    new-array v2, v2, [I

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    array-length v9, v0

    .line 28
    invoke-static {v0, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, La60;->e:[F

    .line 32
    .line 33
    array-length v9, v0

    .line 34
    invoke-static {v0, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, La60;->f:[F

    .line 38
    .line 39
    array-length v9, v0

    .line 40
    invoke-static {v0, v1, v5, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, La60;->g:[F

    .line 44
    .line 45
    array-length v9, v0

    .line 46
    invoke-static {v0, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, La60;->h:[I

    .line 50
    .line 51
    array-length v9, v0

    .line 52
    invoke-static {v0, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, La60;->i:[I

    .line 56
    .line 57
    array-length v9, v0

    .line 58
    invoke-static {v0, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, La60;->j:[I

    .line 62
    .line 63
    array-length v9, v0

    .line 64
    invoke-static {v0, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iput-object v3, p0, La60;->d:[F

    .line 68
    .line 69
    iput-object v4, p0, La60;->e:[F

    .line 70
    .line 71
    iput-object v5, p0, La60;->f:[F

    .line 72
    .line 73
    iput-object v6, p0, La60;->g:[F

    .line 74
    .line 75
    iput-object v7, p0, La60;->h:[I

    .line 76
    .line 77
    iput-object v8, p0, La60;->i:[I

    .line 78
    .line 79
    iput-object v2, p0, La60;->j:[I

    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, La60;->d:[F

    .line 82
    .line 83
    iget-object v2, p0, La60;->f:[F

    .line 84
    .line 85
    aput p1, v2, p3

    .line 86
    .line 87
    aput p1, v0, p3

    .line 88
    .line 89
    iget-object v0, p0, La60;->e:[F

    .line 90
    .line 91
    iget-object v2, p0, La60;->g:[F

    .line 92
    .line 93
    aput p2, v2, p3

    .line 94
    .line 95
    aput p2, v0, p3

    .line 96
    .line 97
    iget-object v0, p0, La60;->h:[I

    .line 98
    .line 99
    float-to-int p1, p1

    .line 100
    float-to-int p2, p2

    .line 101
    iget-object v2, p0, La60;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    iget v4, p0, La60;->o:I

    .line 108
    .line 109
    add-int/2addr v3, v4

    .line 110
    const/4 v5, 0x1

    .line 111
    if-ge p1, v3, :cond_3

    .line 112
    .line 113
    move v1, v5

    .line 114
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    add-int/2addr v3, v4

    .line 119
    if-ge p2, v3, :cond_4

    .line 120
    .line 121
    or-int/lit8 v1, v1, 0x4

    .line 122
    .line 123
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    sub-int/2addr v3, v4

    .line 128
    if-le p1, v3, :cond_5

    .line 129
    .line 130
    or-int/lit8 v1, v1, 0x2

    .line 131
    .line 132
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    sub-int/2addr p1, v4

    .line 137
    if-le p2, p1, :cond_6

    .line 138
    .line 139
    or-int/lit8 v1, v1, 0x8

    .line 140
    .line 141
    :cond_6
    aput v1, v0, p3

    .line 142
    .line 143
    iget p1, p0, La60;->k:I

    .line 144
    .line 145
    shl-int p2, v5, p3

    .line 146
    .line 147
    or-int/2addr p1, p2

    .line 148
    iput p1, p0, La60;->k:I

    .line 149
    .line 150
    return-void
.end method

.method public final l(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget v3, p0, La60;->k:I

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    shl-int/2addr v4, v2

    .line 16
    and-int/2addr v3, v4

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget-object v5, p0, La60;->f:[F

    .line 28
    .line 29
    aput v3, v5, v2

    .line 30
    .line 31
    iget-object v3, p0, La60;->g:[F

    .line 32
    .line 33
    aput v4, v3, v2

    .line 34
    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public final m(I)V
    .locals 2

    .line 1
    iget-object v0, p0, La60;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2
    .line 3
    iget-object v1, p0, La60;->u:Lu6;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    iget v0, p0, La60;->a:I

    .line 9
    .line 10
    if-eq v0, p1, :cond_0

    .line 11
    .line 12
    iput p1, p0, La60;->a:I

    .line 13
    .line 14
    iget-object v0, p0, La60;->q:Lyt;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lyt;->r(I)V

    .line 17
    .line 18
    .line 19
    iget p1, p0, La60;->a:I

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, La60;->r:Landroid/view/View;

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final n(II)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, La60;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, La60;->l:Landroid/view/VelocityTracker;

    .line 6
    .line 7
    iget v1, p0, La60;->c:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    float-to-int v0, v0

    .line 14
    iget-object v1, p0, La60;->l:Landroid/view/VelocityTracker;

    .line 15
    .line 16
    iget v2, p0, La60;->c:I

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    float-to-int v1, v1

    .line 23
    invoke-virtual {p0, p1, p2, v0, v1}, La60;->h(IIII)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const-string p0, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    .line 29
    .line 30
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final o(Landroid/view/MotionEvent;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, La60;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v4, v0, La60;->l:Landroid/view/VelocityTracker;

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iput-object v4, v0, La60;->l:Landroid/view/VelocityTracker;

    .line 27
    .line 28
    :cond_1
    iget-object v4, v0, La60;->l:Landroid/view/VelocityTracker;

    .line 29
    .line 30
    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x1

    .line 36
    if-eqz v2, :cond_e

    .line 37
    .line 38
    if-eq v2, v6, :cond_d

    .line 39
    .line 40
    if-eq v2, v4, :cond_5

    .line 41
    .line 42
    const/4 v7, 0x3

    .line 43
    if-eq v2, v7, :cond_d

    .line 44
    .line 45
    const/4 v7, 0x5

    .line 46
    if-eq v2, v7, :cond_3

    .line 47
    .line 48
    const/4 v4, 0x6

    .line 49
    if-eq v2, v4, :cond_2

    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, La60;->d(I)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {v0, v7, v1, v2}, La60;->k(FFI)V

    .line 75
    .line 76
    .line 77
    iget v3, v0, La60;->a:I

    .line 78
    .line 79
    if-nez v3, :cond_4

    .line 80
    .line 81
    iget-object v1, v0, La60;->h:[I

    .line 82
    .line 83
    aget v1, v1, v2

    .line 84
    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :cond_4
    if-ne v3, v4, :cond_10

    .line 88
    .line 89
    float-to-int v3, v7

    .line 90
    float-to-int v1, v1

    .line 91
    invoke-virtual {v0, v3, v1}, La60;->g(II)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v3, v0, La60;->r:Landroid/view/View;

    .line 96
    .line 97
    if-ne v1, v3, :cond_10

    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, La60;->p(Landroid/view/View;I)Z

    .line 100
    .line 101
    .line 102
    goto/16 :goto_3

    .line 103
    .line 104
    :cond_5
    iget-object v2, v0, La60;->d:[F

    .line 105
    .line 106
    if-eqz v2, :cond_10

    .line 107
    .line 108
    iget-object v2, v0, La60;->e:[F

    .line 109
    .line 110
    if-nez v2, :cond_6

    .line 111
    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :cond_6
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    move v3, v5

    .line 119
    :goto_0
    if-ge v3, v2, :cond_c

    .line 120
    .line 121
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    iget v7, v0, La60;->k:I

    .line 126
    .line 127
    shl-int v8, v6, v4

    .line 128
    .line 129
    and-int/2addr v7, v8

    .line 130
    if-eqz v7, :cond_b

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    iget-object v9, v0, La60;->d:[F

    .line 141
    .line 142
    aget v9, v9, v4

    .line 143
    .line 144
    sub-float v9, v7, v9

    .line 145
    .line 146
    iget-object v10, v0, La60;->e:[F

    .line 147
    .line 148
    aget v10, v10, v4

    .line 149
    .line 150
    sub-float v10, v8, v10

    .line 151
    .line 152
    float-to-int v7, v7

    .line 153
    float-to-int v8, v8

    .line 154
    invoke-virtual {v0, v7, v8}, La60;->g(II)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    if-eqz v7, :cond_7

    .line 159
    .line 160
    invoke-virtual {v0, v7, v9, v10}, La60;->c(Landroid/view/View;FF)Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-eqz v8, :cond_7

    .line 165
    .line 166
    move v8, v6

    .line 167
    goto :goto_1

    .line 168
    :cond_7
    move v8, v5

    .line 169
    :goto_1
    if-eqz v8, :cond_9

    .line 170
    .line 171
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 172
    .line 173
    .line 174
    move-result v11

    .line 175
    float-to-int v12, v9

    .line 176
    add-int/2addr v12, v11

    .line 177
    iget-object v13, v0, La60;->q:Lyt;

    .line 178
    .line 179
    invoke-virtual {v13, v7, v12}, Lyt;->b(Landroid/view/View;I)I

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 184
    .line 185
    .line 186
    move-result v14

    .line 187
    float-to-int v15, v10

    .line 188
    add-int/2addr v15, v14

    .line 189
    invoke-virtual {v13, v7, v15}, Lyt;->c(Landroid/view/View;I)I

    .line 190
    .line 191
    .line 192
    move-result v15

    .line 193
    invoke-virtual {v13, v7}, Lyt;->i(Landroid/view/View;)I

    .line 194
    .line 195
    .line 196
    move-result v16

    .line 197
    invoke-virtual {v13}, Lyt;->j()I

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    if-eqz v16, :cond_8

    .line 202
    .line 203
    if-lez v16, :cond_9

    .line 204
    .line 205
    if-ne v12, v11, :cond_9

    .line 206
    .line 207
    :cond_8
    if-eqz v13, :cond_c

    .line 208
    .line 209
    if-lez v13, :cond_9

    .line 210
    .line 211
    if-ne v15, v14, :cond_9

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_9
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 215
    .line 216
    .line 217
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 218
    .line 219
    .line 220
    iget-object v11, v0, La60;->h:[I

    .line 221
    .line 222
    aget v11, v11, v4

    .line 223
    .line 224
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 225
    .line 226
    .line 227
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 228
    .line 229
    .line 230
    iget-object v11, v0, La60;->h:[I

    .line 231
    .line 232
    aget v11, v11, v4

    .line 233
    .line 234
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 235
    .line 236
    .line 237
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 238
    .line 239
    .line 240
    iget-object v11, v0, La60;->h:[I

    .line 241
    .line 242
    aget v11, v11, v4

    .line 243
    .line 244
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 245
    .line 246
    .line 247
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 248
    .line 249
    .line 250
    iget-object v9, v0, La60;->h:[I

    .line 251
    .line 252
    aget v9, v9, v4

    .line 253
    .line 254
    iget v9, v0, La60;->a:I

    .line 255
    .line 256
    if-ne v9, v6, :cond_a

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_a
    if-eqz v8, :cond_b

    .line 260
    .line 261
    invoke-virtual {v0, v7, v4}, La60;->p(Landroid/view/View;I)Z

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    if-eqz v4, :cond_b

    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_c
    :goto_2
    invoke-virtual/range {p0 .. p1}, La60;->l(Landroid/view/MotionEvent;)V

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_d
    invoke-virtual {v0}, La60;->a()V

    .line 277
    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_e
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    invoke-virtual {v0, v2, v3, v1}, La60;->k(FFI)V

    .line 293
    .line 294
    .line 295
    float-to-int v2, v2

    .line 296
    float-to-int v3, v3

    .line 297
    invoke-virtual {v0, v2, v3}, La60;->g(II)Landroid/view/View;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    iget-object v3, v0, La60;->r:Landroid/view/View;

    .line 302
    .line 303
    if-ne v2, v3, :cond_f

    .line 304
    .line 305
    iget v3, v0, La60;->a:I

    .line 306
    .line 307
    if-ne v3, v4, :cond_f

    .line 308
    .line 309
    invoke-virtual {v0, v2, v1}, La60;->p(Landroid/view/View;I)Z

    .line 310
    .line 311
    .line 312
    :cond_f
    iget-object v2, v0, La60;->h:[I

    .line 313
    .line 314
    aget v1, v2, v1

    .line 315
    .line 316
    :cond_10
    :goto_3
    iget v0, v0, La60;->a:I

    .line 317
    .line 318
    if-ne v0, v6, :cond_11

    .line 319
    .line 320
    return v6

    .line 321
    :cond_11
    return v5
.end method

.method public final p(Landroid/view/View;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, La60;->r:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, La60;->c:I

    .line 7
    .line 8
    if-ne v0, p2, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, La60;->q:Lyt;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lyt;->C(Landroid/view/View;I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iput p2, p0, La60;->c:I

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, La60;->b(Landroid/view/View;I)V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
.end method
