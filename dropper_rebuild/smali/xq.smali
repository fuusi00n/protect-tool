.class public Lxq;
.super Landroid/graphics/drawable/Drawable;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Lb00;

.field public static final w:Landroid/graphics/Paint;

.field public a:Lwq;

.field public final b:[Lzz;

.field public final c:[Lzz;

.field public final d:Ljava/util/BitSet;

.field public e:Z

.field public final f:Landroid/graphics/Matrix;

.field public final g:Landroid/graphics/Path;

.field public final h:Landroid/graphics/Path;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/Region;

.field public final l:Landroid/graphics/Region;

.field public m:Lqz;

.field public final n:Landroid/graphics/Paint;

.field public final o:Landroid/graphics/Paint;

.field public final p:Loz;

.field public final q:Lo0;

.field public final r:Lsz;

.field public s:Landroid/graphics/PorterDuffColorFilter;

.field public t:Landroid/graphics/PorterDuffColorFilter;

.field public final u:Landroid/graphics/RectF;

.field public final v:Z

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lxq;->w:Landroid/graphics/Paint;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 14
    .line 15
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 160
    new-instance v0, Lqz;

    invoke-direct {v0}, Lqz;-><init>()V

    invoke-direct {p0, v0}, Lxq;-><init>(Lqz;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 158
    invoke-static {p1, p2, p3, p4}, Lqz;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lpz;

    move-result-object p1

    invoke-virtual {p1}, Lpz;->a()Lqz;

    move-result-object p1

    invoke-direct {p0, p1}, Lxq;-><init>(Lqz;)V

    return-void
.end method

.method public constructor <init>(Lqz;)V
    .locals 1

    .line 159
    new-instance v0, Lwq;

    invoke-direct {v0, p1}, Lwq;-><init>(Lqz;)V

    invoke-direct {p0, v0}, Lxq;-><init>(Lwq;)V

    return-void
.end method

.method public constructor <init>(Lwq;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [Lzz;

    .line 6
    .line 7
    iput-object v1, p0, Lxq;->b:[Lzz;

    .line 8
    .line 9
    new-array v0, v0, [Lzz;

    .line 10
    .line 11
    iput-object v0, p0, Lxq;->c:[Lzz;

    .line 12
    .line 13
    new-instance v0, Ljava/util/BitSet;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lxq;->d:Ljava/util/BitSet;

    .line 21
    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lxq;->f:Landroid/graphics/Matrix;

    .line 28
    .line 29
    new-instance v0, Landroid/graphics/Path;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lxq;->g:Landroid/graphics/Path;

    .line 35
    .line 36
    new-instance v0, Landroid/graphics/Path;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lxq;->h:Landroid/graphics/Path;

    .line 42
    .line 43
    new-instance v0, Landroid/graphics/RectF;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lxq;->i:Landroid/graphics/RectF;

    .line 49
    .line 50
    new-instance v0, Landroid/graphics/RectF;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lxq;->j:Landroid/graphics/RectF;

    .line 56
    .line 57
    new-instance v0, Landroid/graphics/Region;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lxq;->k:Landroid/graphics/Region;

    .line 63
    .line 64
    new-instance v0, Landroid/graphics/Region;

    .line 65
    .line 66
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lxq;->l:Landroid/graphics/Region;

    .line 70
    .line 71
    new-instance v0, Landroid/graphics/Paint;

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lxq;->n:Landroid/graphics/Paint;

    .line 78
    .line 79
    new-instance v2, Landroid/graphics/Paint;

    .line 80
    .line 81
    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 82
    .line 83
    .line 84
    iput-object v2, p0, Lxq;->o:Landroid/graphics/Paint;

    .line 85
    .line 86
    new-instance v3, Loz;

    .line 87
    .line 88
    invoke-direct {v3}, Loz;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v3, p0, Lxq;->p:Loz;

    .line 92
    .line 93
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    if-ne v3, v4, :cond_0

    .line 106
    .line 107
    sget-object v3, Lrz;->a:Lsz;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    new-instance v3, Lsz;

    .line 111
    .line 112
    invoke-direct {v3}, Lsz;-><init>()V

    .line 113
    .line 114
    .line 115
    :goto_0
    iput-object v3, p0, Lxq;->r:Lsz;

    .line 116
    .line 117
    new-instance v3, Landroid/graphics/RectF;

    .line 118
    .line 119
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object v3, p0, Lxq;->u:Landroid/graphics/RectF;

    .line 123
    .line 124
    iput-boolean v1, p0, Lxq;->v:Z

    .line 125
    .line 126
    iput-object p1, p0, Lxq;->a:Lwq;

    .line 127
    .line 128
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 129
    .line 130
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    .line 132
    .line 133
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lxq;->l()Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Lxq;->k([I)Z

    .line 146
    .line 147
    .line 148
    new-instance p1, Lo0;

    .line 149
    .line 150
    const/16 v0, 0x12

    .line 151
    .line 152
    invoke-direct {p1, v0, p0}, Lo0;-><init>(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iput-object p1, p0, Lxq;->q:Lo0;

    .line 156
    .line 157
    return-void
.end method

.method public final a(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    iget-object v2, v0, Lwq;->a:Lqz;

    .line 4
    .line 5
    iget v3, v0, Lwq;->i:F

    .line 6
    .line 7
    iget-object v5, p0, Lxq;->q:Lo0;

    .line 8
    .line 9
    iget-object v1, p0, Lxq;->r:Lsz;

    .line 10
    .line 11
    move-object v4, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-virtual/range {v1 .. v6}, Lsz;->a(Lqz;FLandroid/graphics/RectF;Lo0;Landroid/graphics/Path;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lxq;->a:Lwq;

    .line 17
    .line 18
    iget p1, p1, Lwq;->h:F

    .line 19
    .line 20
    const/high16 p2, 0x3f800000

    .line 21
    .line 22
    cmpl-float p1, p1, p2

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lxq;->f:Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lxq;->a:Lwq;

    .line 32
    .line 33
    iget p2, p2, Lwq;->h:F

    .line 34
    .line 35
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/high16 v1, 0x40000000

    .line 40
    .line 41
    div-float/2addr v0, v1

    .line 42
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    div-float/2addr v2, v1

    .line 47
    invoke-virtual {p1, p2, p2, v0, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p0, p0, Lxq;->u:Landroid/graphics/RectF;

    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    invoke-virtual {v6, p0, p1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final b(I)I
    .locals 5

    .line 1
    iget-object p0, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    iget v0, p0, Lwq;->m:F

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    add-float/2addr v0, v1

    .line 7
    iget v2, p0, Lwq;->l:F

    .line 8
    .line 9
    add-float/2addr v0, v2

    .line 10
    iget-object p0, p0, Lwq;->b:Lsg;

    .line 11
    .line 12
    if-eqz p0, :cond_3

    .line 13
    .line 14
    iget-boolean v2, p0, Lsg;->a:Z

    .line 15
    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    const/16 v2, 0xff

    .line 19
    .line 20
    invoke-static {p1, v2}, Lja;->d(II)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget v4, p0, Lsg;->d:I

    .line 25
    .line 26
    if-ne v3, v4, :cond_3

    .line 27
    .line 28
    iget v3, p0, Lsg;->e:F

    .line 29
    .line 30
    cmpg-float v4, v3, v1

    .line 31
    .line 32
    if-lez v4, :cond_1

    .line 33
    .line 34
    cmpg-float v4, v0, v1

    .line 35
    .line 36
    if-gtz v4, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    div-float/2addr v0, v3

    .line 40
    float-to-double v3, v0

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Math;->log1p(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    double-to-float v0, v3

    .line 46
    const/high16 v3, 0x40900000

    .line 47
    .line 48
    mul-float/2addr v0, v3

    .line 49
    const/high16 v3, 0x40000000

    .line 50
    .line 51
    add-float/2addr v0, v3

    .line 52
    const/high16 v3, 0x42c80000

    .line 53
    .line 54
    div-float/2addr v0, v3

    .line 55
    const/high16 v3, 0x3f800000

    .line 56
    .line 57
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    move v0, v1

    .line 63
    :goto_1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-static {p1, v2}, Lja;->d(II)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iget v2, p0, Lsg;->b:I

    .line 72
    .line 73
    invoke-static {p1, v2, v0}, Lvd;->D(IIF)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    cmpl-float v0, v0, v1

    .line 78
    .line 79
    if-lez v0, :cond_2

    .line 80
    .line 81
    iget p0, p0, Lsg;->c:I

    .line 82
    .line 83
    if-eqz p0, :cond_2

    .line 84
    .line 85
    sget v0, Lsg;->f:I

    .line 86
    .line 87
    invoke-static {p0, v0}, Lja;->d(II)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    invoke-static {p0, p1}, Lja;->b(II)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    :cond_2
    invoke-static {p1, v3}, Lja;->d(II)I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    return p0

    .line 100
    :cond_3
    return p1
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lxq;->d:Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 7
    .line 8
    iget v0, v0, Lwq;->o:I

    .line 9
    .line 10
    iget-object v1, p0, Lxq;->g:Landroid/graphics/Path;

    .line 11
    .line 12
    iget-object v2, p0, Lxq;->p:Loz;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v2, Loz;->a:Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    const/4 v3, 0x4

    .line 23
    if-ge v0, v3, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Lxq;->b:[Lzz;

    .line 26
    .line 27
    aget-object v3, v3, v0

    .line 28
    .line 29
    iget-object v4, p0, Lxq;->a:Lwq;

    .line 30
    .line 31
    iget v4, v4, Lwq;->n:I

    .line 32
    .line 33
    sget-object v5, Lzz;->b:Landroid/graphics/Matrix;

    .line 34
    .line 35
    invoke-virtual {v3, v5, v2, v4, p1}, Lzz;->a(Landroid/graphics/Matrix;Loz;ILandroid/graphics/Canvas;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lxq;->c:[Lzz;

    .line 39
    .line 40
    aget-object v3, v3, v0

    .line 41
    .line 42
    iget-object v4, p0, Lxq;->a:Lwq;

    .line 43
    .line 44
    iget v4, v4, Lwq;->n:I

    .line 45
    .line 46
    invoke-virtual {v3, v5, v2, v4, p1}, Lzz;->a(Landroid/graphics/Matrix;Loz;ILandroid/graphics/Canvas;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-boolean v0, p0, Lxq;->v:Z

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 57
    .line 58
    iget v0, v0, Lwq;->o:I

    .line 59
    .line 60
    int-to-double v2, v0

    .line 61
    const-wide/16 v4, 0x0

    .line 62
    .line 63
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    mul-double/2addr v6, v2

    .line 72
    double-to-int v0, v6

    .line 73
    iget-object p0, p0, Lxq;->a:Lwq;

    .line 74
    .line 75
    iget p0, p0, Lwq;->o:I

    .line 76
    .line 77
    int-to-double v2, p0

    .line 78
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    mul-double/2addr v4, v2

    .line 87
    double-to-int p0, v4

    .line 88
    neg-int v2, v0

    .line 89
    int-to-float v2, v2

    .line 90
    neg-int v3, p0

    .line 91
    int-to-float v3, v3

    .line 92
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 93
    .line 94
    .line 95
    sget-object v2, Lxq;->w:Landroid/graphics/Paint;

    .line 96
    .line 97
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 98
    .line 99
    .line 100
    int-to-float v0, v0

    .line 101
    int-to-float p0, p0

    .line 102
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    .line 104
    .line 105
    :cond_2
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lqz;Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    invoke-virtual {p4, p5}, Lqz;->d(Landroid/graphics/RectF;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p3, p4, Lqz;->f:Lvc;

    .line 8
    .line 9
    invoke-interface {p3, p5}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    iget-object p0, p0, Lxq;->a:Lwq;

    .line 14
    .line 15
    iget p0, p0, Lwq;->i:F

    .line 16
    .line 17
    mul-float/2addr p3, p0

    .line 18
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lxq;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    .line 7
    iget-object v3, v0, Lxq;->n:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    iget-object v2, v0, Lxq;->a:Lwq;

    .line 17
    .line 18
    iget v2, v2, Lwq;->k:I

    .line 19
    .line 20
    ushr-int/lit8 v4, v2, 0x7

    .line 21
    .line 22
    add-int/2addr v2, v4

    .line 23
    mul-int/2addr v2, v6

    .line 24
    ushr-int/lit8 v2, v2, 0x8

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lxq;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 30
    .line 31
    iget-object v7, v0, Lxq;->o:Landroid/graphics/Paint;

    .line 32
    .line 33
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 34
    .line 35
    .line 36
    iget-object v2, v0, Lxq;->a:Lwq;

    .line 37
    .line 38
    iget v2, v2, Lwq;->j:F

    .line 39
    .line 40
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    iget-object v2, v0, Lxq;->a:Lwq;

    .line 48
    .line 49
    iget v2, v2, Lwq;->k:I

    .line 50
    .line 51
    ushr-int/lit8 v4, v2, 0x7

    .line 52
    .line 53
    add-int/2addr v2, v4

    .line 54
    mul-int/2addr v2, v8

    .line 55
    ushr-int/lit8 v2, v2, 0x8

    .line 56
    .line 57
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    .line 59
    .line 60
    iget-boolean v2, v0, Lxq;->e:Z

    .line 61
    .line 62
    move v4, v2

    .line 63
    move-object v2, v3

    .line 64
    iget-object v3, v0, Lxq;->g:Landroid/graphics/Path;

    .line 65
    .line 66
    if-eqz v4, :cond_6

    .line 67
    .line 68
    invoke-virtual {v0}, Lxq;->g()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const/4 v5, 0x0

    .line 73
    const/high16 v9, 0x40000000

    .line 74
    .line 75
    if-eqz v4, :cond_0

    .line 76
    .line 77
    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    div-float/2addr v4, v9

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    move v4, v5

    .line 84
    :goto_0
    neg-float v4, v4

    .line 85
    iget-object v10, v0, Lxq;->a:Lwq;

    .line 86
    .line 87
    iget-object v10, v10, Lwq;->a:Lqz;

    .line 88
    .line 89
    invoke-virtual {v10}, Lqz;->e()Lpz;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    iget-object v12, v10, Lqz;->e:Lvc;

    .line 94
    .line 95
    instance-of v13, v12, Lqx;

    .line 96
    .line 97
    if-eqz v13, :cond_1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    new-instance v13, Li2;

    .line 101
    .line 102
    invoke-direct {v13, v4, v12}, Li2;-><init>(FLvc;)V

    .line 103
    .line 104
    .line 105
    move-object v12, v13

    .line 106
    :goto_1
    iput-object v12, v11, Lpz;->e:Lvc;

    .line 107
    .line 108
    iget-object v12, v10, Lqz;->f:Lvc;

    .line 109
    .line 110
    instance-of v13, v12, Lqx;

    .line 111
    .line 112
    if-eqz v13, :cond_2

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    new-instance v13, Li2;

    .line 116
    .line 117
    invoke-direct {v13, v4, v12}, Li2;-><init>(FLvc;)V

    .line 118
    .line 119
    .line 120
    move-object v12, v13

    .line 121
    :goto_2
    iput-object v12, v11, Lpz;->f:Lvc;

    .line 122
    .line 123
    iget-object v12, v10, Lqz;->h:Lvc;

    .line 124
    .line 125
    instance-of v13, v12, Lqx;

    .line 126
    .line 127
    if-eqz v13, :cond_3

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_3
    new-instance v13, Li2;

    .line 131
    .line 132
    invoke-direct {v13, v4, v12}, Li2;-><init>(FLvc;)V

    .line 133
    .line 134
    .line 135
    move-object v12, v13

    .line 136
    :goto_3
    iput-object v12, v11, Lpz;->h:Lvc;

    .line 137
    .line 138
    iget-object v10, v10, Lqz;->g:Lvc;

    .line 139
    .line 140
    instance-of v12, v10, Lqx;

    .line 141
    .line 142
    if-eqz v12, :cond_4

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_4
    new-instance v12, Li2;

    .line 146
    .line 147
    invoke-direct {v12, v4, v10}, Li2;-><init>(FLvc;)V

    .line 148
    .line 149
    .line 150
    move-object v10, v12

    .line 151
    :goto_4
    iput-object v10, v11, Lpz;->g:Lvc;

    .line 152
    .line 153
    invoke-virtual {v11}, Lpz;->a()Lqz;

    .line 154
    .line 155
    .line 156
    move-result-object v13

    .line 157
    iput-object v13, v0, Lxq;->m:Lqz;

    .line 158
    .line 159
    iget-object v4, v0, Lxq;->a:Lwq;

    .line 160
    .line 161
    iget v14, v4, Lwq;->i:F

    .line 162
    .line 163
    invoke-virtual {v0}, Lxq;->f()Landroid/graphics/RectF;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    iget-object v15, v0, Lxq;->j:Landroid/graphics/RectF;

    .line 168
    .line 169
    invoke-virtual {v15, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lxq;->g()Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_5

    .line 177
    .line 178
    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    div-float v5, v4, v9

    .line 183
    .line 184
    :cond_5
    invoke-virtual {v15, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 185
    .line 186
    .line 187
    iget-object v4, v0, Lxq;->h:Landroid/graphics/Path;

    .line 188
    .line 189
    const/16 v16, 0x0

    .line 190
    .line 191
    iget-object v12, v0, Lxq;->r:Lsz;

    .line 192
    .line 193
    move-object/from16 v17, v4

    .line 194
    .line 195
    invoke-virtual/range {v12 .. v17}, Lsz;->a(Lqz;FLandroid/graphics/RectF;Lo0;Landroid/graphics/Path;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Lxq;->f()Landroid/graphics/RectF;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v0, v4, v3}, Lxq;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 203
    .line 204
    .line 205
    const/4 v4, 0x0

    .line 206
    iput-boolean v4, v0, Lxq;->e:Z

    .line 207
    .line 208
    :cond_6
    iget-object v4, v0, Lxq;->a:Lwq;

    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    iget v4, v4, Lwq;->n:I

    .line 214
    .line 215
    if-lez v4, :cond_9

    .line 216
    .line 217
    iget-object v4, v0, Lxq;->a:Lwq;

    .line 218
    .line 219
    iget-object v4, v4, Lwq;->a:Lqz;

    .line 220
    .line 221
    invoke-virtual {v0}, Lxq;->f()Landroid/graphics/RectF;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-virtual {v4, v5}, Lqz;->d(Landroid/graphics/RectF;)Z

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-nez v4, :cond_9

    .line 230
    .line 231
    invoke-virtual {v3}, Landroid/graphics/Path;->isConvex()Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-nez v4, :cond_9

    .line 236
    .line 237
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 238
    .line 239
    const/16 v5, 0x1d

    .line 240
    .line 241
    if-ge v4, v5, :cond_9

    .line 242
    .line 243
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 244
    .line 245
    .line 246
    iget-object v4, v0, Lxq;->a:Lwq;

    .line 247
    .line 248
    iget v4, v4, Lwq;->o:I

    .line 249
    .line 250
    int-to-double v4, v4

    .line 251
    const-wide/16 v9, 0x0

    .line 252
    .line 253
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    .line 254
    .line 255
    .line 256
    move-result-wide v11

    .line 257
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 258
    .line 259
    .line 260
    move-result-wide v11

    .line 261
    mul-double/2addr v11, v4

    .line 262
    double-to-int v4, v11

    .line 263
    iget-object v5, v0, Lxq;->a:Lwq;

    .line 264
    .line 265
    iget v5, v5, Lwq;->o:I

    .line 266
    .line 267
    int-to-double v11, v5

    .line 268
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    .line 269
    .line 270
    .line 271
    move-result-wide v9

    .line 272
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 273
    .line 274
    .line 275
    move-result-wide v9

    .line 276
    mul-double/2addr v9, v11

    .line 277
    double-to-int v5, v9

    .line 278
    int-to-float v4, v4

    .line 279
    int-to-float v5, v5

    .line 280
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 281
    .line 282
    .line 283
    iget-boolean v4, v0, Lxq;->v:Z

    .line 284
    .line 285
    if-nez v4, :cond_7

    .line 286
    .line 287
    invoke-virtual/range {p0 .. p1}, Lxq;->c(Landroid/graphics/Canvas;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 291
    .line 292
    .line 293
    goto/16 :goto_5

    .line 294
    .line 295
    :cond_7
    iget-object v4, v0, Lxq;->u:Landroid/graphics/RectF;

    .line 296
    .line 297
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 306
    .line 307
    .line 308
    move-result v9

    .line 309
    int-to-float v9, v9

    .line 310
    sub-float/2addr v5, v9

    .line 311
    float-to-int v5, v5

    .line 312
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 313
    .line 314
    .line 315
    move-result v9

    .line 316
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 321
    .line 322
    .line 323
    move-result v10

    .line 324
    int-to-float v10, v10

    .line 325
    sub-float/2addr v9, v10

    .line 326
    float-to-int v9, v9

    .line 327
    if-ltz v5, :cond_8

    .line 328
    .line 329
    if-ltz v9, :cond_8

    .line 330
    .line 331
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 332
    .line 333
    .line 334
    move-result v10

    .line 335
    float-to-int v10, v10

    .line 336
    iget-object v11, v0, Lxq;->a:Lwq;

    .line 337
    .line 338
    iget v11, v11, Lwq;->n:I

    .line 339
    .line 340
    mul-int/lit8 v11, v11, 0x2

    .line 341
    .line 342
    add-int/2addr v11, v10

    .line 343
    add-int/2addr v11, v5

    .line 344
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    float-to-int v4, v4

    .line 349
    iget-object v10, v0, Lxq;->a:Lwq;

    .line 350
    .line 351
    iget v10, v10, Lwq;->n:I

    .line 352
    .line 353
    mul-int/lit8 v10, v10, 0x2

    .line 354
    .line 355
    add-int/2addr v10, v4

    .line 356
    add-int/2addr v10, v9

    .line 357
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 358
    .line 359
    invoke-static {v11, v10, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    new-instance v10, Landroid/graphics/Canvas;

    .line 364
    .line 365
    invoke-direct {v10, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 369
    .line 370
    .line 371
    move-result-object v11

    .line 372
    iget v11, v11, Landroid/graphics/Rect;->left:I

    .line 373
    .line 374
    iget-object v12, v0, Lxq;->a:Lwq;

    .line 375
    .line 376
    iget v12, v12, Lwq;->n:I

    .line 377
    .line 378
    sub-int/2addr v11, v12

    .line 379
    sub-int/2addr v11, v5

    .line 380
    int-to-float v5, v11

    .line 381
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 382
    .line 383
    .line 384
    move-result-object v11

    .line 385
    iget v11, v11, Landroid/graphics/Rect;->top:I

    .line 386
    .line 387
    iget-object v12, v0, Lxq;->a:Lwq;

    .line 388
    .line 389
    iget v12, v12, Lwq;->n:I

    .line 390
    .line 391
    sub-int/2addr v11, v12

    .line 392
    sub-int/2addr v11, v9

    .line 393
    int-to-float v9, v11

    .line 394
    neg-float v11, v5

    .line 395
    neg-float v12, v9

    .line 396
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v10}, Lxq;->c(Landroid/graphics/Canvas;)V

    .line 400
    .line 401
    .line 402
    const/4 v10, 0x0

    .line 403
    invoke-virtual {v1, v4, v5, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 410
    .line 411
    .line 412
    goto :goto_5

    .line 413
    :cond_8
    const-string v0, "Invalid shadow bounds. Check that the treatments result in a valid path."

    .line 414
    .line 415
    invoke-static {v0}, Lg9;->k(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    return-void

    .line 419
    :cond_9
    :goto_5
    iget-object v4, v0, Lxq;->a:Lwq;

    .line 420
    .line 421
    iget-object v5, v4, Lwq;->p:Landroid/graphics/Paint$Style;

    .line 422
    .line 423
    sget-object v9, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 424
    .line 425
    if-eq v5, v9, :cond_a

    .line 426
    .line 427
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 428
    .line 429
    if-ne v5, v9, :cond_b

    .line 430
    .line 431
    :cond_a
    iget-object v4, v4, Lwq;->a:Lqz;

    .line 432
    .line 433
    invoke-virtual {v0}, Lxq;->f()Landroid/graphics/RectF;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    invoke-virtual/range {v0 .. v5}, Lxq;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lqz;Landroid/graphics/RectF;)V

    .line 438
    .line 439
    .line 440
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lxq;->g()Z

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-eqz v0, :cond_c

    .line 445
    .line 446
    invoke-virtual/range {p0 .. p1}, Lxq;->e(Landroid/graphics/Canvas;)V

    .line 447
    .line 448
    .line 449
    :cond_c
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 453
    .line 454
    .line 455
    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v4, p0, Lxq;->m:Lqz;

    .line 2
    .line 3
    invoke-virtual {p0}, Lxq;->f()Landroid/graphics/RectF;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v5, p0, Lxq;->j:Landroid/graphics/RectF;

    .line 8
    .line 9
    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lxq;->g()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lxq;->o:Landroid/graphics/Paint;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/high16 v1, 0x40000000

    .line 25
    .line 26
    div-float/2addr v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {v5, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lxq;->h:Landroid/graphics/Path;

    .line 33
    .line 34
    move-object v0, p0

    .line 35
    move-object v1, p1

    .line 36
    invoke-virtual/range {v0 .. v5}, Lxq;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lqz;Landroid/graphics/RectF;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final f()Landroid/graphics/RectF;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lxq;->i:Landroid/graphics/RectF;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    iget-object v0, v0, Lwq;->p:Landroid/graphics/Paint$Style;

    .line 4
    .line 5
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lxq;->o:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 v0, 0x0

    .line 20
    cmpl-float p0, p0, v0

    .line 21
    .line 22
    if-lez p0, :cond_1

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public getAlpha()I
    .locals 0

    .line 1
    iget-object p0, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    iget p0, p0, Lwq;->k:I

    .line 4
    .line 5
    return p0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 1
    iget-object p0, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 7
    .line 8
    iget-object v0, v0, Lwq;->a:Lqz;

    .line 9
    .line 10
    invoke-virtual {p0}, Lxq;->f()Landroid/graphics/RectF;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lqz;->d(Landroid/graphics/RectF;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 21
    .line 22
    iget-object v0, v0, Lwq;->a:Lqz;

    .line 23
    .line 24
    iget-object v0, v0, Lqz;->e:Lvc;

    .line 25
    .line 26
    invoke-virtual {p0}, Lxq;->f()Landroid/graphics/RectF;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lxq;->a:Lwq;

    .line 35
    .line 36
    iget v1, v1, Lwq;->i:F

    .line 37
    .line 38
    mul-float/2addr v0, v1

    .line 39
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lxq;->f()Landroid/graphics/RectF;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lxq;->g:Landroid/graphics/Path;

    .line 52
    .line 53
    invoke-virtual {p0, v0, v1}, Lxq;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 54
    .line 55
    .line 56
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    .line 58
    const/16 v0, 0x1e

    .line 59
    .line 60
    if-lt p0, v0, :cond_1

    .line 61
    .line 62
    invoke-static {p1, v1}, Lvf;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    const/16 v0, 0x1d

    .line 67
    .line 68
    if-lt p0, v0, :cond_2

    .line 69
    .line 70
    :try_start_0
    invoke-static {p1, v1}, Luf;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    :catch_0
    return-void

    .line 74
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Path;->isConvex()Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    invoke-static {p1, v1}, Luf;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    iget-object v0, v0, Lwq;->g:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lxq;->k:Landroid/graphics/Region;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lxq;->f()Landroid/graphics/RectF;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lxq;->g:Landroid/graphics/Path;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v2}, Lxq;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lxq;->l:Landroid/graphics/Region;

    .line 20
    .line 21
    invoke-virtual {p0, v2, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 22
    .line 23
    .line 24
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 25
    .line 26
    invoke-virtual {v1, p0, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public final h(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    new-instance v1, Lsg;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lsg;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lwq;->b:Lsg;

    .line 9
    .line 10
    invoke-virtual {p0}, Lxq;->m()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final i(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    iget v1, v0, Lwq;->m:F

    .line 4
    .line 5
    cmpl-float v1, v1, p1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput p1, v0, Lwq;->m:F

    .line 10
    .line 11
    invoke-virtual {p0}, Lxq;->m()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final invalidateSelf()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lxq;->e:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 8
    .line 9
    iget-object v0, v0, Lwq;->e:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 25
    .line 26
    iget-object v0, v0, Lwq;->d:Landroid/content/res/ColorStateList;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    :cond_1
    iget-object p0, p0, Lxq;->a:Lwq;

    .line 37
    .line 38
    iget-object p0, p0, Lwq;->c:Landroid/content/res/ColorStateList;

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 p0, 0x0

    .line 50
    return p0

    .line 51
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 52
    return p0
.end method

.method public final j(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    iget-object v1, v0, Lwq;->c:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, Lwq;->c:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lxq;->onStateChange([I)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final k([I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    iget-object v0, v0, Lwq;->c:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lxq;->n:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Lxq;->a:Lwq;

    .line 15
    .line 16
    iget-object v3, v3, Lwq;->c:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v2, p0, Lxq;->a:Lwq;

    .line 31
    .line 32
    iget-object v2, v2, Lwq;->d:Landroid/content/res/ColorStateList;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, Lxq;->o:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object p0, p0, Lxq;->a:Lwq;

    .line 43
    .line 44
    iget-object p0, p0, Lwq;->d:Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    invoke-virtual {p0, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eq v3, p0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    .line 54
    .line 55
    return v1

    .line 56
    :cond_1
    return v0
.end method

.method public final l()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lxq;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 2
    .line 3
    iget-object v1, p0, Lxq;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 4
    .line 5
    iget-object v2, p0, Lxq;->a:Lwq;

    .line 6
    .line 7
    iget-object v3, v2, Lwq;->e:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iget-object v2, v2, Lwq;->f:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x1

    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    invoke-virtual {v3, v7, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p0, v3}, Lxq;->b(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    .line 32
    .line 33
    invoke-direct {v7, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    iget-object v2, p0, Lxq;->n:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {p0, v2}, Lxq;->b(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eq v3, v2, :cond_2

    .line 48
    .line 49
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    .line 50
    .line 51
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 52
    .line 53
    invoke-direct {v7, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move-object v7, v4

    .line 58
    :goto_1
    iput-object v7, p0, Lxq;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 59
    .line 60
    iget-object v2, p0, Lxq;->a:Lwq;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iput-object v4, p0, Lxq;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 66
    .line 67
    iget-object v2, p0, Lxq;->a:Lwq;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lxq;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 73
    .line 74
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object p0, p0, Lxq;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 81
    .line 82
    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_3

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    return v5

    .line 90
    :cond_4
    :goto_2
    return v6
.end method

.method public final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    iget v1, v0, Lwq;->m:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    add-float/2addr v1, v2

    .line 7
    const/high16 v2, 0x3f400000

    .line 8
    .line 9
    mul-float/2addr v2, v1

    .line 10
    float-to-double v2, v2

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    double-to-int v2, v2

    .line 16
    iput v2, v0, Lwq;->n:I

    .line 17
    .line 18
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 19
    .line 20
    const/high16 v2, 0x3e800000

    .line 21
    .line 22
    mul-float/2addr v1, v2

    .line 23
    float-to-double v1, v1

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    double-to-int v1, v1

    .line 29
    iput v1, v0, Lwq;->o:I

    .line 30
    .line 31
    invoke-virtual {p0}, Lxq;->l()Z

    .line 32
    .line 33
    .line 34
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Lwq;

    .line 2
    .line 3
    iget-object v1, p0, Lxq;->a:Lwq;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lwq;-><init>(Lwq;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lxq;->a:Lwq;

    .line 9
    .line 10
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lxq;->e:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lxq;->k([I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lxq;->l()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lxq;->invalidateSelf()V

    .line 20
    .line 21
    .line 22
    :cond_2
    return p1
.end method

.method public setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    iget v1, v0, Lwq;->k:I

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput p1, v0, Lwq;->k:I

    .line 8
    .line 9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setShapeAppearanceModel(Lqz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    iput-object p1, v0, Lwq;->a:Lqz;

    .line 4
    .line 5
    invoke-virtual {p0}, Lxq;->invalidateSelf()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setTint(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lxq;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    iput-object p1, v0, Lwq;->e:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    invoke-virtual {p0}, Lxq;->l()Z

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxq;->a:Lwq;

    .line 2
    .line 3
    iget-object v1, v0, Lwq;->f:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, Lwq;->f:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    invoke-virtual {p0}, Lxq;->l()Z

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
