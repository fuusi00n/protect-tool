.class public final Lqz;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public a:Lnm;

.field public b:Lnm;

.field public c:Lnm;

.field public d:Lnm;

.field public e:Lvc;

.field public f:Lvc;

.field public g:Lvc;

.field public h:Lvc;

.field public i:Lqg;

.field public j:Lqg;

.field public k:Lqg;

.field public l:Lqg;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lny;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lqz;->a:Lnm;

    .line 10
    .line 11
    new-instance v0, Lny;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lqz;->b:Lnm;

    .line 17
    .line 18
    new-instance v0, Lny;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lqz;->c:Lnm;

    .line 24
    .line 25
    new-instance v0, Lny;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lqz;->d:Lnm;

    .line 31
    .line 32
    new-instance v0, Le;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, v1}, Le;-><init>(F)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lqz;->e:Lvc;

    .line 39
    .line 40
    new-instance v0, Le;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Le;-><init>(F)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lqz;->f:Lvc;

    .line 46
    .line 47
    new-instance v0, Le;

    .line 48
    .line 49
    invoke-direct {v0, v1}, Le;-><init>(F)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lqz;->g:Lvc;

    .line 53
    .line 54
    new-instance v0, Le;

    .line 55
    .line 56
    invoke-direct {v0, v1}, Le;-><init>(F)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lqz;->h:Lvc;

    .line 60
    .line 61
    new-instance v0, Lqg;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-direct {v0, v1}, Lqg;-><init>(I)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lqz;->i:Lqg;

    .line 68
    .line 69
    new-instance v0, Lqg;

    .line 70
    .line 71
    invoke-direct {v0, v1}, Lqg;-><init>(I)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lqz;->j:Lqg;

    .line 75
    .line 76
    new-instance v0, Lqg;

    .line 77
    .line 78
    invoke-direct {v0, v1}, Lqg;-><init>(I)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lqz;->k:Lqg;

    .line 82
    .line 83
    new-instance v0, Lqg;

    .line 84
    .line 85
    invoke-direct {v0, v1}, Lqg;-><init>(I)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lqz;->l:Lqg;

    .line 89
    .line 90
    return-void
.end method

.method public static a(Landroid/content/Context;IILe;)Lpz;
    .locals 6

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance p0, Landroid/view/ContextThemeWrapper;

    .line 9
    .line 10
    invoke-direct {p0, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    move-object v0, p0

    .line 14
    :cond_0
    sget-object p0, Lhw;->ShapeAppearance:[I

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :try_start_0
    sget p1, Lhw;->ShapeAppearance_cornerFamily:I

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    sget p2, Lhw;->ShapeAppearance_cornerFamilyTopLeft:I

    .line 28
    .line 29
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    sget v0, Lhw;->ShapeAppearance_cornerFamilyTopRight:I

    .line 34
    .line 35
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sget v1, Lhw;->ShapeAppearance_cornerFamilyBottomRight:I

    .line 40
    .line 41
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    sget v2, Lhw;->ShapeAppearance_cornerFamilyBottomLeft:I

    .line 46
    .line 47
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    sget v2, Lhw;->ShapeAppearance_cornerSize:I

    .line 52
    .line 53
    invoke-static {p0, v2, p3}, Lqz;->c(Landroid/content/res/TypedArray;ILvc;)Lvc;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    sget v2, Lhw;->ShapeAppearance_cornerSizeTopLeft:I

    .line 58
    .line 59
    invoke-static {p0, v2, p3}, Lqz;->c(Landroid/content/res/TypedArray;ILvc;)Lvc;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sget v3, Lhw;->ShapeAppearance_cornerSizeTopRight:I

    .line 64
    .line 65
    invoke-static {p0, v3, p3}, Lqz;->c(Landroid/content/res/TypedArray;ILvc;)Lvc;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    sget v4, Lhw;->ShapeAppearance_cornerSizeBottomRight:I

    .line 70
    .line 71
    invoke-static {p0, v4, p3}, Lqz;->c(Landroid/content/res/TypedArray;ILvc;)Lvc;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    sget v5, Lhw;->ShapeAppearance_cornerSizeBottomLeft:I

    .line 76
    .line 77
    invoke-static {p0, v5, p3}, Lqz;->c(Landroid/content/res/TypedArray;ILvc;)Lvc;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    new-instance v5, Lpz;

    .line 82
    .line 83
    invoke-direct {v5}, Lpz;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-static {p2}, Ld40;->l(I)Lnm;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    iput-object p2, v5, Lpz;->a:Lnm;

    .line 91
    .line 92
    iput-object v2, v5, Lpz;->e:Lvc;

    .line 93
    .line 94
    invoke-static {v0}, Ld40;->l(I)Lnm;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iput-object p2, v5, Lpz;->b:Lnm;

    .line 99
    .line 100
    iput-object v3, v5, Lpz;->f:Lvc;

    .line 101
    .line 102
    invoke-static {v1}, Ld40;->l(I)Lnm;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    iput-object p2, v5, Lpz;->c:Lnm;

    .line 107
    .line 108
    iput-object v4, v5, Lpz;->g:Lvc;

    .line 109
    .line 110
    invoke-static {p1}, Ld40;->l(I)Lnm;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, v5, Lpz;->d:Lnm;

    .line 115
    .line 116
    iput-object p3, v5, Lpz;->h:Lvc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    .line 120
    .line 121
    return-object v5

    .line 122
    :catchall_0
    move-exception p1

    .line 123
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method public static b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lpz;
    .locals 2

    .line 1
    new-instance v0, Le;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Le;-><init>(F)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lhw;->MaterialShape:[I

    .line 8
    .line 9
    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget p2, Lhw;->MaterialShape_shapeAppearance:I

    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    sget v1, Lhw;->MaterialShape_shapeAppearanceOverlay:I

    .line 21
    .line 22
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p2, p3, v0}, Lqz;->a(Landroid/content/Context;IILe;)Lpz;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static c(Landroid/content/res/TypedArray;ILvc;)Lvc;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    new-instance p2, Le;

    .line 14
    .line 15
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    int-to-float p0, p0

    .line 30
    invoke-direct {p2, p0}, Le;-><init>(F)V

    .line 31
    .line 32
    .line 33
    return-object p2

    .line 34
    :cond_1
    const/4 p0, 0x6

    .line 35
    if-ne v0, p0, :cond_2

    .line 36
    .line 37
    new-instance p0, Lqx;

    .line 38
    .line 39
    const/high16 p2, 0x3f800000    # 1.0f

    .line 40
    .line 41
    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-direct {p0, p1}, Lqx;-><init>(F)V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_2
    :goto_0
    return-object p2
.end method


# virtual methods
.method public final d(Landroid/graphics/RectF;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lqz;->l:Lqg;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lqg;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lqz;->j:Lqg;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lqz;->i:Lqg;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lqz;->k:Lqg;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    move v0, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v0, v2

    .line 56
    :goto_0
    iget-object v1, p0, Lqz;->e:Lvc;

    .line 57
    .line 58
    invoke-interface {v1, p1}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iget-object v4, p0, Lqz;->f:Lvc;

    .line 63
    .line 64
    invoke-interface {v4, p1}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    cmpl-float v4, v4, v1

    .line 69
    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    iget-object v4, p0, Lqz;->h:Lvc;

    .line 73
    .line 74
    invoke-interface {v4, p1}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    cmpl-float v4, v4, v1

    .line 79
    .line 80
    if-nez v4, :cond_1

    .line 81
    .line 82
    iget-object v4, p0, Lqz;->g:Lvc;

    .line 83
    .line 84
    invoke-interface {v4, p1}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    cmpl-float p1, p1, v1

    .line 89
    .line 90
    if-nez p1, :cond_1

    .line 91
    .line 92
    move p1, v3

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    move p1, v2

    .line 95
    :goto_1
    iget-object v1, p0, Lqz;->b:Lnm;

    .line 96
    .line 97
    instance-of v1, v1, Lny;

    .line 98
    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    iget-object v1, p0, Lqz;->a:Lnm;

    .line 102
    .line 103
    instance-of v1, v1, Lny;

    .line 104
    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    iget-object v1, p0, Lqz;->c:Lnm;

    .line 108
    .line 109
    instance-of v1, v1, Lny;

    .line 110
    .line 111
    if-eqz v1, :cond_2

    .line 112
    .line 113
    iget-object p0, p0, Lqz;->d:Lnm;

    .line 114
    .line 115
    instance-of p0, p0, Lny;

    .line 116
    .line 117
    if-eqz p0, :cond_2

    .line 118
    .line 119
    move p0, v3

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    move p0, v2

    .line 122
    :goto_2
    if-eqz v0, :cond_3

    .line 123
    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    if-eqz p0, :cond_3

    .line 127
    .line 128
    return v3

    .line 129
    :cond_3
    return v2
.end method

.method public final e()Lpz;
    .locals 2

    .line 1
    new-instance v0, Lpz;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lqz;->a:Lnm;

    .line 7
    .line 8
    iput-object v1, v0, Lpz;->a:Lnm;

    .line 9
    .line 10
    iget-object v1, p0, Lqz;->b:Lnm;

    .line 11
    .line 12
    iput-object v1, v0, Lpz;->b:Lnm;

    .line 13
    .line 14
    iget-object v1, p0, Lqz;->c:Lnm;

    .line 15
    .line 16
    iput-object v1, v0, Lpz;->c:Lnm;

    .line 17
    .line 18
    iget-object v1, p0, Lqz;->d:Lnm;

    .line 19
    .line 20
    iput-object v1, v0, Lpz;->d:Lnm;

    .line 21
    .line 22
    iget-object v1, p0, Lqz;->e:Lvc;

    .line 23
    .line 24
    iput-object v1, v0, Lpz;->e:Lvc;

    .line 25
    .line 26
    iget-object v1, p0, Lqz;->f:Lvc;

    .line 27
    .line 28
    iput-object v1, v0, Lpz;->f:Lvc;

    .line 29
    .line 30
    iget-object v1, p0, Lqz;->g:Lvc;

    .line 31
    .line 32
    iput-object v1, v0, Lpz;->g:Lvc;

    .line 33
    .line 34
    iget-object v1, p0, Lqz;->h:Lvc;

    .line 35
    .line 36
    iput-object v1, v0, Lpz;->h:Lvc;

    .line 37
    .line 38
    iget-object v1, p0, Lqz;->i:Lqg;

    .line 39
    .line 40
    iput-object v1, v0, Lpz;->i:Lqg;

    .line 41
    .line 42
    iget-object v1, p0, Lqz;->j:Lqg;

    .line 43
    .line 44
    iput-object v1, v0, Lpz;->j:Lqg;

    .line 45
    .line 46
    iget-object v1, p0, Lqz;->k:Lqg;

    .line 47
    .line 48
    iput-object v1, v0, Lpz;->k:Lqg;

    .line 49
    .line 50
    iget-object p0, p0, Lqz;->l:Lqg;

    .line 51
    .line 52
    iput-object p0, v0, Lpz;->l:Lqg;

    .line 53
    .line 54
    return-object v0
.end method
