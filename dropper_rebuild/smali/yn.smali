.class public final Lyn;
.super Ld4;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public static final i:Lu8;

.field public c:Landroid/animation/ObjectAnimator;

.field public final d:Lxh;

.field public final e:Lio;

.field public f:I

.field public g:Z

.field public h:F

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lu8;

    .line 2
    .line 3
    const-string v1, "animationFraction"

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const-class v3, Ljava/lang/Float;

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lu8;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lyn;->i:Lu8;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lio;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Ld4;-><init>(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lyn;->f:I

    .line 7
    .line 8
    iput-object p1, p0, Lyn;->e:Lio;

    .line 9
    .line 10
    new-instance p1, Lxh;

    .line 11
    .line 12
    invoke-direct {p1, v0}, Lxh;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lyn;->d:Lxh;

    .line 16
    .line 17
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    iget-object p0, p0, Lyn;->c:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lyn;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final l(Le7;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final m()V
    .locals 0

    .line 1
    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyn;->c:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    sget-object v1, Lyn;->i:Lu8;

    .line 12
    .line 13
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lyn;->c:Landroid/animation/ObjectAnimator;

    .line 18
    .line 19
    const-wide/16 v1, 0x14d

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lyn;->c:Landroid/animation/ObjectAnimator;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lyn;->c:Landroid/animation/ObjectAnimator;

    .line 31
    .line 32
    const/4 v1, -0x1

    .line 33
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lyn;->c:Landroid/animation/ObjectAnimator;

    .line 37
    .line 38
    new-instance v1, Lz0;

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    invoke-direct {v1, v2, p0}, Lz0;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Lyn;->q()V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lyn;->c:Landroid/animation/ObjectAnimator;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public final p()V
    .locals 0

    .line 1
    return-void
.end method

.method public final q()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lyn;->g:Z

    .line 3
    .line 4
    iput v0, p0, Lyn;->f:I

    .line 5
    .line 6
    iget-object v0, p0, Ld4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    check-cast v4, Lzf;

    .line 25
    .line 26
    iget-object v5, p0, Lyn;->e:Lio;

    .line 27
    .line 28
    iget-object v6, v5, Lf7;->c:[I

    .line 29
    .line 30
    aget v6, v6, v2

    .line 31
    .line 32
    iput v6, v4, Lzf;->c:I

    .line 33
    .line 34
    iget v5, v5, Lf7;->g:I

    .line 35
    .line 36
    div-int/lit8 v5, v5, 0x2

    .line 37
    .line 38
    iput v5, v4, Lzf;->d:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method
