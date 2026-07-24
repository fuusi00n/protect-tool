.class public final Lxe;
.super Lyf;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# static fields
.field public static final q:Lwe;


# instance fields
.field public final l:Lag;

.field public final m:Ls00;

.field public final n:Lr00;

.field public final o:Lzf;

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lwe;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lxe;->q:Lwe;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf7;Lag;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lyf;-><init>(Landroid/content/Context;Lf7;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lxe;->p:Z

    .line 6
    .line 7
    iput-object p3, p0, Lxe;->l:Lag;

    .line 8
    .line 9
    new-instance p2, Lzf;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lxe;->o:Lzf;

    .line 15
    .line 16
    new-instance p2, Ls00;

    .line 17
    .line 18
    invoke-direct {p2}, Ls00;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lxe;->m:Ls00;

    .line 22
    .line 23
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 24
    .line 25
    iput-wide v0, p2, Ls00;->b:D

    .line 26
    .line 27
    iput-boolean p1, p2, Ls00;->c:Z

    .line 28
    .line 29
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iput-wide v0, p2, Ls00;->a:D

    .line 36
    .line 37
    iput-boolean p1, p2, Ls00;->c:Z

    .line 38
    .line 39
    new-instance p1, Lr00;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Lr00;-><init>(Lxe;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lxe;->n:Lr00;

    .line 45
    .line 46
    iput-object p2, p1, Lr00;->k:Ls00;

    .line 47
    .line 48
    iget p1, p0, Lyf;->h:F

    .line 49
    .line 50
    const/high16 p2, 0x3f800000    # 1.0f

    .line 51
    .line 52
    cmpl-float p1, p1, p2

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    iput p2, p0, Lyf;->h:F

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public final d(ZZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lyf;->d(ZZZ)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Lyf;->c:Lb3;

    .line 6
    .line 7
    iget-object p3, p0, Lyf;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string p2, "animator_duration_scale"

    .line 17
    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    .line 20
    invoke-static {p3, p2, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const/4 p3, 0x0

    .line 25
    cmpl-float v0, p2, p3

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    iput-boolean p2, p0, Lxe;->p:Z

    .line 31
    .line 32
    return p1

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lxe;->p:Z

    .line 35
    .line 36
    const/high16 v1, 0x42480000    # 50.0f

    .line 37
    .line 38
    div-float/2addr v1, p2

    .line 39
    iget-object p0, p0, Lxe;->m:Ls00;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    cmpg-float p2, v1, p3

    .line 45
    .line 46
    if-lez p2, :cond_1

    .line 47
    .line 48
    float-to-double p2, v1

    .line 49
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    .line 50
    .line 51
    .line 52
    move-result-wide p2

    .line 53
    iput-wide p2, p0, Ls00;->a:D

    .line 54
    .line 55
    iput-boolean v0, p0, Ls00;->c:Z

    .line 56
    .line 57
    return p1

    .line 58
    :cond_1
    const-string p0, "Spring stiffness constant must be positive."

    .line 59
    .line 60
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    new-instance v1, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_7

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_7

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_7

    .line 29
    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {p0}, Lyf;->b()F

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    iget-object v1, p0, Lyf;->d:Landroid/animation/ObjectAnimator;

    .line 42
    .line 43
    const/4 v7, 0x1

    .line 44
    const/4 v9, 0x0

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move v5, v7

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    move v5, v9

    .line 57
    :goto_1
    iget-object v1, p0, Lyf;->e:Landroid/animation/ObjectAnimator;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move v6, v7

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    :goto_2
    move v6, v9

    .line 71
    :goto_3
    iget-object v1, p0, Lxe;->l:Lag;

    .line 72
    .line 73
    iget-object v8, v1, Lag;->a:Lf7;

    .line 74
    .line 75
    invoke-virtual {v8}, Lf7;->a()V

    .line 76
    .line 77
    .line 78
    move-object v2, p1

    .line 79
    invoke-virtual/range {v1 .. v6}, Lag;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    .line 80
    .line 81
    .line 82
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 83
    .line 84
    iget-object v3, p0, Lyf;->i:Landroid/graphics/Paint;

    .line 85
    .line 86
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    .line 91
    .line 92
    iget-object v10, p0, Lyf;->b:Lf7;

    .line 93
    .line 94
    iget-object v1, v10, Lf7;->c:[I

    .line 95
    .line 96
    aget v1, v1, v9

    .line 97
    .line 98
    iget-object v11, p0, Lxe;->o:Lzf;

    .line 99
    .line 100
    iput v1, v11, Lzf;->c:I

    .line 101
    .line 102
    iget v1, v10, Lf7;->g:I

    .line 103
    .line 104
    iget-object v2, p0, Lxe;->l:Lag;

    .line 105
    .line 106
    if-lez v1, :cond_6

    .line 107
    .line 108
    instance-of v2, v2, Lxn;

    .line 109
    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    :goto_4
    move v8, v1

    .line 113
    goto :goto_5

    .line 114
    :cond_5
    int-to-float v1, v1

    .line 115
    iget v2, v11, Lzf;->b:F

    .line 116
    .line 117
    const/4 v4, 0x0

    .line 118
    const v5, 0x3c23d70a    # 0.01f

    .line 119
    .line 120
    .line 121
    invoke-static {v2, v4, v5}, Lnm;->k(FFF)F

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    mul-float/2addr v2, v1

    .line 126
    div-float/2addr v2, v5

    .line 127
    float-to-int v1, v2

    .line 128
    goto :goto_4

    .line 129
    :goto_5
    iget v4, v11, Lzf;->b:F

    .line 130
    .line 131
    iget v6, v10, Lf7;->d:I

    .line 132
    .line 133
    iget v7, p0, Lyf;->j:I

    .line 134
    .line 135
    iget-object v1, p0, Lxe;->l:Lag;

    .line 136
    .line 137
    const/high16 v5, 0x3f800000    # 1.0f

    .line 138
    .line 139
    move-object v2, p1

    .line 140
    invoke-virtual/range {v1 .. v8}, Lag;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 141
    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_6
    iget v6, v10, Lf7;->d:I

    .line 145
    .line 146
    iget v7, p0, Lyf;->j:I

    .line 147
    .line 148
    const/4 v8, 0x0

    .line 149
    const/4 v4, 0x0

    .line 150
    const/high16 v5, 0x3f800000    # 1.0f

    .line 151
    .line 152
    move-object v1, v2

    .line 153
    move-object v2, p1

    .line 154
    invoke-virtual/range {v1 .. v8}, Lag;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 155
    .line 156
    .line 157
    :goto_6
    iget v1, p0, Lyf;->j:I

    .line 158
    .line 159
    iget-object v4, p0, Lxe;->l:Lag;

    .line 160
    .line 161
    invoke-virtual {v4, p1, v3, v11, v1}, Lag;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lzf;I)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v10, Lf7;->c:[I

    .line 165
    .line 166
    aget v1, v1, v9

    .line 167
    .line 168
    iget v0, p0, Lyf;->j:I

    .line 169
    .line 170
    invoke-virtual {v4, p1, v3, v1, v0}, Lag;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 174
    .line 175
    .line 176
    :cond_7
    :goto_7
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lxe;->l:Lag;

    .line 2
    .line 3
    invoke-virtual {p0}, Lag;->e()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lxe;->l:Lag;

    .line 2
    .line 3
    invoke-virtual {p0}, Lag;->f()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final jumpToCurrentState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lxe;->n:Lr00;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr00;->b()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    const v1, 0x461c4000    # 10000.0f

    .line 12
    .line 13
    .line 14
    div-float/2addr v0, v1

    .line 15
    iget-object v1, p0, Lxe;->o:Lzf;

    .line 16
    .line 17
    iput v0, v1, Lzf;->b:F

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onLevelChange(I)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lxe;->p:Z

    .line 2
    .line 3
    iget-object v1, p0, Lxe;->o:Lzf;

    .line 4
    .line 5
    const v2, 0x461c4000    # 10000.0f

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    iget-object v4, p0, Lxe;->n:Lr00;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v4}, Lr00;->b()V

    .line 14
    .line 15
    .line 16
    int-to-float p1, p1

    .line 17
    div-float/2addr p1, v2

    .line 18
    iput p1, v1, Lzf;->b:F

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 21
    .line 22
    .line 23
    return v3

    .line 24
    :cond_0
    iget p0, v1, Lzf;->b:F

    .line 25
    .line 26
    mul-float/2addr p0, v2

    .line 27
    iput p0, v4, Lr00;->b:F

    .line 28
    .line 29
    iput-boolean v3, v4, Lr00;->c:Z

    .line 30
    .line 31
    int-to-float p0, p1

    .line 32
    iget-boolean p1, v4, Lr00;->f:Z

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iput p0, v4, Lr00;->l:F

    .line 37
    .line 38
    return v3

    .line 39
    :cond_1
    iget-object p1, v4, Lr00;->k:Ls00;

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    new-instance p1, Ls00;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Ls00;-><init>(F)V

    .line 46
    .line 47
    .line 48
    iput-object p1, v4, Lr00;->k:Ls00;

    .line 49
    .line 50
    :cond_2
    iget-object p1, v4, Lr00;->k:Ls00;

    .line 51
    .line 52
    float-to-double v0, p0

    .line 53
    iput-wide v0, p1, Ls00;->i:D

    .line 54
    .line 55
    double-to-float p0, v0

    .line 56
    float-to-double v0, p0

    .line 57
    const-wide v5, 0x47efffffe0000000L    # 3.4028234663852886E38

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    cmpl-double p0, v0, v5

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    if-gtz p0, :cond_b

    .line 66
    .line 67
    const-wide v6, -0x3810000020000000L    # -3.4028234663852886E38

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    cmpg-double p0, v0, v6

    .line 73
    .line 74
    if-ltz p0, :cond_a

    .line 75
    .line 76
    iget p0, v4, Lr00;->h:F

    .line 77
    .line 78
    const/high16 v0, 0x3f400000    # 0.75f

    .line 79
    .line 80
    mul-float/2addr p0, v0

    .line 81
    float-to-double v0, p0

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    iput-wide v0, p1, Ls00;->d:D

    .line 87
    .line 88
    const-wide v6, 0x404f400000000000L    # 62.5

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    mul-double/2addr v0, v6

    .line 94
    iput-wide v0, p1, Ls00;->e:D

    .line 95
    .line 96
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-ne p0, p1, :cond_9

    .line 105
    .line 106
    iget-boolean p0, v4, Lr00;->f:Z

    .line 107
    .line 108
    if-nez p0, :cond_8

    .line 109
    .line 110
    if-nez p0, :cond_8

    .line 111
    .line 112
    iput-boolean v3, v4, Lr00;->f:Z

    .line 113
    .line 114
    iget-boolean p0, v4, Lr00;->c:Z

    .line 115
    .line 116
    if-nez p0, :cond_3

    .line 117
    .line 118
    iget-object p0, v4, Lr00;->e:Lwe;

    .line 119
    .line 120
    iget-object p1, v4, Lr00;->d:Lxe;

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    iget-object p0, p1, Lxe;->o:Lzf;

    .line 126
    .line 127
    iget p0, p0, Lzf;->b:F

    .line 128
    .line 129
    mul-float/2addr p0, v2

    .line 130
    iput p0, v4, Lr00;->b:F

    .line 131
    .line 132
    :cond_3
    iget p0, v4, Lr00;->b:F

    .line 133
    .line 134
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 135
    .line 136
    .line 137
    cmpl-float p1, p0, p1

    .line 138
    .line 139
    if-gtz p1, :cond_7

    .line 140
    .line 141
    const p1, -0x800001

    .line 142
    .line 143
    .line 144
    cmpg-float p0, p0, p1

    .line 145
    .line 146
    if-ltz p0, :cond_7

    .line 147
    .line 148
    sget-object p0, Lz2;->f:Ljava/lang/ThreadLocal;

    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    if-nez p1, :cond_4

    .line 155
    .line 156
    new-instance p1, Lz2;

    .line 157
    .line 158
    invoke-direct {p1}, Lz2;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_4
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    check-cast p0, Lz2;

    .line 169
    .line 170
    iget-object p1, p0, Lz2;->b:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_6

    .line 177
    .line 178
    iget-object v0, p0, Lz2;->d:Ly2;

    .line 179
    .line 180
    if-nez v0, :cond_5

    .line 181
    .line 182
    new-instance v0, Ly2;

    .line 183
    .line 184
    iget-object v1, p0, Lz2;->c:Lo0;

    .line 185
    .line 186
    invoke-direct {v0, v1}, Ly2;-><init>(Lo0;)V

    .line 187
    .line 188
    .line 189
    iput-object v0, p0, Lz2;->d:Ly2;

    .line 190
    .line 191
    :cond_5
    iget-object p0, p0, Lz2;->d:Ly2;

    .line 192
    .line 193
    iget-object v0, p0, Ly2;->c:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v0, Landroid/view/Choreographer;

    .line 196
    .line 197
    iget-object p0, p0, Ly2;->d:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast p0, Lx2;

    .line 200
    .line 201
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 202
    .line 203
    .line 204
    :cond_6
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-nez p0, :cond_8

    .line 209
    .line 210
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    return v3

    .line 214
    :cond_7
    const-string p0, "Starting value need to be in between min value and max value"

    .line 215
    .line 216
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return v5

    .line 220
    :cond_8
    return v3

    .line 221
    :cond_9
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 222
    .line 223
    const-string p1, "Animations may only be started on the main thread"

    .line 224
    .line 225
    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p0

    .line 229
    :cond_a
    const-string p0, "Final position of the spring cannot be less than the min value."

    .line 230
    .line 231
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    return v5

    .line 235
    :cond_b
    const-string p0, "Final position of the spring cannot be greater than the max value."

    .line 236
    .line 237
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    return v5
.end method
