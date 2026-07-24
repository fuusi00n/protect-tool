.class public final Lh3;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lj4;

.field public c:I

.field public d:Lb30;

.field public e:Lb30;

.field public f:Lb30;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lh3;->c:I

    .line 6
    .line 7
    iput-object p1, p0, Lh3;->a:Landroid/view/View;

    .line 8
    .line 9
    invoke-static {}, Lj4;->a()Lj4;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lh3;->b:Lj4;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lh3;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    iget-object v2, p0, Lh3;->d:Lb30;

    .line 10
    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    iget-object v2, p0, Lh3;->f:Lb30;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Lb30;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lh3;->f:Lb30;

    .line 23
    .line 24
    :cond_0
    iget-object v2, p0, Lh3;->f:Lb30;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    iput-object v3, v2, Lb30;->a:Landroid/content/res/ColorStateList;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    iput-boolean v4, v2, Lb30;->d:Z

    .line 31
    .line 32
    iput-object v3, v2, Lb30;->b:Landroid/graphics/PorterDuff$Mode;

    .line 33
    .line 34
    iput-boolean v4, v2, Lb30;->c:Z

    .line 35
    .line 36
    sget-object v3, Lw50;->a:Ljava/util/WeakHashMap;

    .line 37
    .line 38
    invoke-static {v0}, Ll50;->g(Landroid/view/View;)Landroid/content/res/ColorStateList;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x1

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    iput-boolean v4, v2, Lb30;->d:Z

    .line 46
    .line 47
    iput-object v3, v2, Lb30;->a:Landroid/content/res/ColorStateList;

    .line 48
    .line 49
    :cond_1
    invoke-static {v0}, Ll50;->h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iput-boolean v4, v2, Lb30;->c:Z

    .line 56
    .line 57
    iput-object v3, v2, Lb30;->b:Landroid/graphics/PorterDuff$Mode;

    .line 58
    .line 59
    :cond_2
    iget-boolean v3, v2, Lb30;->d:Z

    .line 60
    .line 61
    if-nez v3, :cond_3

    .line 62
    .line 63
    iget-boolean v3, v2, Lb30;->c:Z

    .line 64
    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {v1, v2, p0}, Lj4;->e(Landroid/graphics/drawable/Drawable;Lb30;[I)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_4
    iget-object v2, p0, Lh3;->e:Lb30;

    .line 76
    .line 77
    if-eqz v2, :cond_5

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {v1, v2, p0}, Lj4;->e(Landroid/graphics/drawable/Drawable;Lb30;[I)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    iget-object p0, p0, Lh3;->d:Lb30;

    .line 88
    .line 89
    if-eqz p0, :cond_6

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v1, p0, v0}, Lj4;->e(Landroid/graphics/drawable/Drawable;Lb30;[I)V

    .line 96
    .line 97
    .line 98
    :cond_6
    return-void
.end method

.method public final b()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lh3;->e:Lb30;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lb30;->a:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final c()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Lh3;->e:Lb30;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lb30;->b:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final d(Landroid/util/AttributeSet;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lh3;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Liw;->ViewBackgroundHelper:[I

    .line 8
    .line 9
    invoke-static {v1, p1, v2, p2}, Ly2;->p(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ly2;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, v1, Ly2;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Landroid/content/res/TypedArray;

    .line 16
    .line 17
    iget-object v3, p0, Lh3;->a:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    sget-object v5, Liw;->ViewBackgroundHelper:[I

    .line 24
    .line 25
    iget-object v6, v1, Ly2;->c:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v7, v6

    .line 28
    check-cast v7, Landroid/content/res/TypedArray;

    .line 29
    .line 30
    const/4 v9, 0x0

    .line 31
    move-object v6, p1

    .line 32
    move v8, p2

    .line 33
    invoke-static/range {v3 .. v9}, Lw50;->k(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    sget p1, Liw;->ViewBackgroundHelper_android_background:I

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 p2, -0x1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    sget p1, Liw;->ViewBackgroundHelper_android_background:I

    .line 46
    .line 47
    invoke-virtual {v2, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lh3;->c:I

    .line 52
    .line 53
    iget-object p1, p0, Lh3;->b:Lj4;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget v4, p0, Lh3;->c:I

    .line 60
    .line 61
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    iget-object v5, p1, Lj4;->a:Lcy;

    .line 63
    .line 64
    invoke-virtual {v5, v3, v4}, Lcy;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 65
    .line 66
    .line 67
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    :try_start_2
    monitor-exit p1

    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    invoke-virtual {p0, v3}, Lh3;->g(Landroid/content/res/ColorStateList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    move-object p0, v0

    .line 77
    goto :goto_1

    .line 78
    :catchall_1
    move-exception v0

    .line 79
    move-object p0, v0

    .line 80
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    :try_start_4
    throw p0

    .line 82
    :cond_0
    :goto_0
    sget p0, Liw;->ViewBackgroundHelper_backgroundTint:I

    .line 83
    .line 84
    invoke-virtual {v2, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_1

    .line 89
    .line 90
    sget p0, Liw;->ViewBackgroundHelper_backgroundTint:I

    .line 91
    .line 92
    invoke-virtual {v1, p0}, Ly2;->f(I)Landroid/content/res/ColorStateList;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {v0, p0}, Ll50;->q(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    sget p0, Liw;->ViewBackgroundHelper_backgroundTintMode:I

    .line 100
    .line 101
    invoke-virtual {v2, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_2

    .line 106
    .line 107
    sget p0, Liw;->ViewBackgroundHelper_backgroundTintMode:I

    .line 108
    .line 109
    invoke-virtual {v2, p0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    const/4 p1, 0x0

    .line 114
    invoke-static {p0, p1}, Lwf;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {v0, p0}, Ll50;->r(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    .line 120
    .line 121
    :cond_2
    invoke-virtual {v1}, Ly2;->r()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :goto_1
    invoke-virtual {v1}, Ly2;->r()V

    .line 126
    .line 127
    .line 128
    throw p0
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lh3;->c:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lh3;->g(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lh3;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f(I)V
    .locals 3

    .line 1
    iput p1, p0, Lh3;->c:I

    .line 2
    .line 3
    iget-object v0, p0, Lh3;->b:Lj4;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lh3;->a:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, v0, Lj4;->a:Lcy;

    .line 15
    .line 16
    invoke-virtual {v2, v1, p1}, Lcy;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0, p1}, Lh3;->g(Landroid/content/res/ColorStateList;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lh3;->a()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final g(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lh3;->d:Lb30;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lb30;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lh3;->d:Lb30;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lh3;->d:Lb30;

    .line 15
    .line 16
    iput-object p1, v0, Lb30;->a:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, v0, Lb30;->d:Z

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lh3;->d:Lb30;

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Lh3;->a()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final h(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh3;->e:Lb30;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lb30;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lh3;->e:Lb30;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lh3;->e:Lb30;

    .line 13
    .line 14
    iput-object p1, v0, Lb30;->a:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, v0, Lb30;->d:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lh3;->a()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final i(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh3;->e:Lb30;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lb30;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lh3;->e:Lb30;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lh3;->e:Lb30;

    .line 13
    .line 14
    iput-object p1, v0, Lb30;->b:Landroid/graphics/PorterDuff$Mode;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, v0, Lb30;->c:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lh3;->a()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
