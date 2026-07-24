.class public final Lp9;
.super Ld4;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# static fields
.field public static final k:[I

.field public static final l:[I

.field public static final m:[I

.field public static final n:Lu8;

.field public static final o:Lu8;


# instance fields
.field public c:Landroid/animation/ObjectAnimator;

.field public d:Landroid/animation/ObjectAnimator;

.field public final e:Lxh;

.field public final f:Lq9;

.field public g:I

.field public h:F

.field public i:F

.field public j:Le7;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0xa8c

    .line 2
    .line 3
    const/16 v1, 0xfd2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x546

    .line 7
    .line 8
    filled-new-array {v2, v3, v0, v1}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lp9;->k:[I

    .line 13
    .line 14
    const/16 v0, 0xd27

    .line 15
    .line 16
    const/16 v1, 0x126d

    .line 17
    .line 18
    const/16 v2, 0x29b

    .line 19
    .line 20
    const/16 v3, 0x7e1

    .line 21
    .line 22
    filled-new-array {v2, v3, v0, v1}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lp9;->l:[I

    .line 27
    .line 28
    const/16 v0, 0xe74

    .line 29
    .line 30
    const/16 v1, 0x13ba

    .line 31
    .line 32
    const/16 v2, 0x3e8

    .line 33
    .line 34
    const/16 v3, 0x92e

    .line 35
    .line 36
    filled-new-array {v2, v3, v0, v1}, [I

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lp9;->m:[I

    .line 41
    .line 42
    new-instance v0, Lu8;

    .line 43
    .line 44
    const-string v1, "animationFraction"

    .line 45
    .line 46
    const/4 v2, 0x5

    .line 47
    const-class v3, Ljava/lang/Float;

    .line 48
    .line 49
    invoke-direct {v0, v3, v1, v2}, Lu8;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lp9;->n:Lu8;

    .line 53
    .line 54
    new-instance v0, Lu8;

    .line 55
    .line 56
    const-string v1, "completeEndFraction"

    .line 57
    .line 58
    const/4 v2, 0x6

    .line 59
    invoke-direct {v0, v3, v1, v2}, Lu8;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lp9;->o:Lu8;

    .line 63
    .line 64
    return-void
.end method

.method public constructor <init>(Lq9;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Ld4;-><init>(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lp9;->g:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lp9;->j:Le7;

    .line 10
    .line 11
    iput-object p1, p0, Lp9;->f:Lq9;

    .line 12
    .line 13
    new-instance p1, Lxh;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-direct {p1, v0}, Lxh;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lp9;->e:Lxh;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    .line 1
    iget-object p0, p0, Lp9;->c:Landroid/animation/ObjectAnimator;

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
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lp9;->g:I

    .line 3
    .line 4
    iget-object v1, p0, Ld4;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lzf;

    .line 13
    .line 14
    iget-object v2, p0, Lp9;->f:Lq9;

    .line 15
    .line 16
    iget-object v2, v2, Lf7;->c:[I

    .line 17
    .line 18
    aget v0, v2, v0

    .line 19
    .line 20
    iput v0, v1, Lzf;->c:I

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lp9;->i:F

    .line 24
    .line 25
    return-void
.end method

.method public final l(Le7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp9;->j:Le7;

    .line 2
    .line 3
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp9;->d:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Ld4;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lam;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lp9;->d:Landroid/animation/ObjectAnimator;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0}, Lp9;->c()V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 5

    .line 1
    iget-object v0, p0, Lp9;->c:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-array v0, v2, [F

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    sget-object v3, Lp9;->n:Lu8;

    .line 13
    .line 14
    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lp9;->c:Landroid/animation/ObjectAnimator;

    .line 19
    .line 20
    const-wide/16 v3, 0x1518

    .line 21
    .line 22
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lp9;->c:Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lp9;->c:Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    const/4 v3, -0x1

    .line 34
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lp9;->c:Landroid/animation/ObjectAnimator;

    .line 38
    .line 39
    new-instance v3, Lo9;

    .line 40
    .line 41
    invoke-direct {v3, p0, v1}, Lo9;-><init>(Lp9;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lp9;->d:Landroid/animation/ObjectAnimator;

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    new-array v0, v2, [F

    .line 52
    .line 53
    fill-array-data v0, :array_1

    .line 54
    .line 55
    .line 56
    sget-object v2, Lp9;->o:Lu8;

    .line 57
    .line 58
    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lp9;->d:Landroid/animation/ObjectAnimator;

    .line 63
    .line 64
    const-wide/16 v2, 0x14d

    .line 65
    .line 66
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lp9;->d:Landroid/animation/ObjectAnimator;

    .line 70
    .line 71
    iget-object v2, p0, Lp9;->e:Lxh;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lp9;->d:Landroid/animation/ObjectAnimator;

    .line 77
    .line 78
    new-instance v2, Lo9;

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    invoke-direct {v2, p0, v3}, Lo9;-><init>(Lp9;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    iput v1, p0, Lp9;->g:I

    .line 88
    .line 89
    iget-object v0, p0, Ld4;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lzf;

    .line 98
    .line 99
    iget-object v2, p0, Lp9;->f:Lq9;

    .line 100
    .line 101
    iget-object v2, v2, Lf7;->c:[I

    .line 102
    .line 103
    aget v1, v2, v1

    .line 104
    .line 105
    iput v1, v0, Lzf;->c:I

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lp9;->i:F

    .line 109
    .line 110
    iget-object p0, p0, Lp9;->c:Landroid/animation/ObjectAnimator;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    nop

    .line 117
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final p()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lp9;->j:Le7;

    .line 3
    .line 4
    return-void
.end method
