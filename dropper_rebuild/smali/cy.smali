.class public final Lcy;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# static fields
.field public static final f:Landroid/graphics/PorterDuff$Mode;

.field public static g:Lcy;

.field public static final h:Lay;


# instance fields
.field public a:Ljava/util/WeakHashMap;

.field public final b:Ljava/util/WeakHashMap;

.field public c:Landroid/util/TypedValue;

.field public d:Z

.field public e:Li4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    sput-object v0, Lcy;->f:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    new-instance v0, Lay;

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-direct {v0, v1}, Lkp;-><init>(I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcy;->h:Lay;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcy;->b:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    return-void
.end method

.method public static declared-synchronized c()Lcy;
    .locals 2

    .line 1
    const-class v0, Lcy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcy;->g:Lcy;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcy;

    .line 9
    .line 10
    invoke-direct {v1}, Lcy;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcy;->g:Lcy;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcy;->g:Lcy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method

.method public static declared-synchronized f(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 4

    .line 1
    const-class v0, Lcy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcy;->h:Lay;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 v2, 0x1f

    .line 10
    .line 11
    add-int v3, v2, p0

    .line 12
    .line 13
    mul-int/2addr v3, v2

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v3

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Lkp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/graphics/PorterDuffColorFilter;

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 32
    .line 33
    invoke-direct {v2, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    add-int/2addr p0, v3

    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v1, p0, v2}, Lkp;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit v0

    .line 55
    return-object v2

    .line 56
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcy;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcy;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcy;->a:Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lo00;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lo00;

    .line 23
    .line 24
    invoke-direct {v0}, Lo00;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcy;->a:Ljava/util/WeakHashMap;

    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_1
    iget p0, v0, Lo00;->c:I

    .line 33
    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    iget-object p1, v0, Lo00;->a:[I

    .line 37
    .line 38
    add-int/lit8 v1, p0, -0x1

    .line 39
    .line 40
    aget p1, p1, v1

    .line 41
    .line 42
    if-gt p2, p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0, p2, p3}, Lo00;->a(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget-object p1, v0, Lo00;->a:[I

    .line 49
    .line 50
    array-length p1, p1

    .line 51
    const/4 v1, 0x1

    .line 52
    if-lt p0, p1, :cond_5

    .line 53
    .line 54
    add-int/lit8 p1, p0, 0x1

    .line 55
    .line 56
    const/4 v2, 0x4

    .line 57
    mul-int/2addr p1, v2

    .line 58
    move v3, v2

    .line 59
    :goto_0
    const/16 v4, 0x20

    .line 60
    .line 61
    if-ge v3, v4, :cond_4

    .line 62
    .line 63
    shl-int v4, v1, v3

    .line 64
    .line 65
    add-int/lit8 v4, v4, -0xc

    .line 66
    .line 67
    if-gt p1, v4, :cond_3

    .line 68
    .line 69
    move p1, v4

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    :goto_1
    div-int/2addr p1, v2

    .line 75
    new-array v2, p1, [I

    .line 76
    .line 77
    new-array p1, p1, [Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v3, v0, Lo00;->a:[I

    .line 80
    .line 81
    array-length v4, v3

    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    .line 85
    .line 86
    iget-object v3, v0, Lo00;->b:[Ljava/lang/Object;

    .line 87
    .line 88
    array-length v4, v3

    .line 89
    invoke-static {v3, v5, p1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    .line 91
    .line 92
    iput-object v2, v0, Lo00;->a:[I

    .line 93
    .line 94
    iput-object p1, v0, Lo00;->b:[Ljava/lang/Object;

    .line 95
    .line 96
    :cond_5
    iget-object p1, v0, Lo00;->a:[I

    .line 97
    .line 98
    aput p2, p1, p0

    .line 99
    .line 100
    iget-object p1, v0, Lo00;->b:[Ljava/lang/Object;

    .line 101
    .line 102
    aput-object p3, p1, p0

    .line 103
    .line 104
    add-int/2addr p0, v1

    .line 105
    iput p0, v0, Lo00;->c:I

    .line 106
    .line 107
    return-void
.end method

.method public final b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 10

    .line 1
    iget-object v0, p0, Lcy;->c:Landroid/util/TypedValue;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcy;->c:Landroid/util/TypedValue;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcy;->c:Landroid/util/TypedValue;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 20
    .line 21
    .line 22
    iget v1, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 23
    .line 24
    int-to-long v3, v1

    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    shl-long/2addr v3, v1

    .line 28
    iget v1, v0, Landroid/util/TypedValue;->data:I

    .line 29
    .line 30
    int-to-long v5, v1

    .line 31
    or-long/2addr v3, v5

    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcy;->b:Ljava/util/WeakHashMap;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    monitor-exit p0

    .line 45
    :goto_0
    move-object v1, v5

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :try_start_1
    invoke-virtual {v1, v3, v4}, Ljp;->c(J)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 60
    .line 61
    if-eqz v6, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    .line 70
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit p0

    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :cond_2
    :try_start_2
    iget-object v6, v1, Ljp;->b:[J

    .line 77
    .line 78
    iget v7, v1, Ljp;->d:I

    .line 79
    .line 80
    invoke-static {v6, v7, v3, v4}, Ld40;->e([JIJ)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-ltz v6, :cond_3

    .line 85
    .line 86
    iget-object v7, v1, Ljp;->c:[Ljava/lang/Object;

    .line 87
    .line 88
    aget-object v8, v7, v6

    .line 89
    .line 90
    sget-object v9, Ljp;->e:Ljava/lang/Object;

    .line 91
    .line 92
    if-eq v8, v9, :cond_3

    .line 93
    .line 94
    aput-object v9, v7, v6

    .line 95
    .line 96
    iput-boolean v2, v1, Ljp;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    :cond_3
    monitor-exit p0

    .line 99
    goto :goto_0

    .line 100
    :goto_1
    if-eqz v1, :cond_4

    .line 101
    .line 102
    return-object v1

    .line 103
    :cond_4
    iget-object v1, p0, Lcy;->e:Li4;

    .line 104
    .line 105
    if-nez v1, :cond_5

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    sget v1, Ldv;->abc_cab_background_top_material:I

    .line 109
    .line 110
    if-ne p2, v1, :cond_6

    .line 111
    .line 112
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    .line 113
    .line 114
    sget p2, Ldv;->abc_cab_background_internal_bg:I

    .line 115
    .line 116
    invoke-virtual {p0, p1, p2}, Lcy;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    sget v1, Ldv;->abc_cab_background_top_mtrl_alpha:I

    .line 121
    .line 122
    invoke-virtual {p0, p1, v1}, Lcy;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    filled-new-array {p2, v1}, [Landroid/graphics/drawable/Drawable;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-direct {v5, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_6
    sget v1, Ldv;->abc_ratingbar_material:I

    .line 135
    .line 136
    if-ne p2, v1, :cond_7

    .line 137
    .line 138
    sget p2, Lav;->abc_star_big:I

    .line 139
    .line 140
    invoke-static {p0, p1, p2}, Li4;->c(Lcy;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    goto :goto_2

    .line 145
    :cond_7
    sget v1, Ldv;->abc_ratingbar_indicator_material:I

    .line 146
    .line 147
    if-ne p2, v1, :cond_8

    .line 148
    .line 149
    sget p2, Lav;->abc_star_medium:I

    .line 150
    .line 151
    invoke-static {p0, p1, p2}, Li4;->c(Lcy;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    goto :goto_2

    .line 156
    :cond_8
    sget v1, Ldv;->abc_ratingbar_small_material:I

    .line 157
    .line 158
    if-ne p2, v1, :cond_9

    .line 159
    .line 160
    sget p2, Lav;->abc_star_small:I

    .line 161
    .line 162
    invoke-static {p0, p1, p2}, Li4;->c(Lcy;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    :cond_9
    :goto_2
    if-eqz v5, :cond_c

    .line 167
    .line 168
    iget p2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 169
    .line 170
    invoke-virtual {v5, p2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 171
    .line 172
    .line 173
    monitor-enter p0

    .line 174
    :try_start_3
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    if-eqz p2, :cond_b

    .line 179
    .line 180
    iget-object v0, p0, Lcy;->b:Ljava/util/WeakHashMap;

    .line 181
    .line 182
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Ljp;

    .line 187
    .line 188
    if-nez v0, :cond_a

    .line 189
    .line 190
    new-instance v0, Ljp;

    .line 191
    .line 192
    invoke-direct {v0}, Ljp;-><init>()V

    .line 193
    .line 194
    .line 195
    iget-object v1, p0, Lcy;->b:Ljava/util/WeakHashMap;

    .line 196
    .line 197
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :catchall_1
    move-exception p1

    .line 202
    goto :goto_4

    .line 203
    :cond_a
    :goto_3
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 204
    .line 205
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v3, v4, p1}, Ljp;->d(JLjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 209
    .line 210
    .line 211
    monitor-exit p0

    .line 212
    return-object v5

    .line 213
    :cond_b
    monitor-exit p0

    .line 214
    return-object v5

    .line 215
    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 216
    throw p1

    .line 217
    :cond_c
    return-object v5

    .line 218
    :goto_5
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 219
    throw p1
.end method

.method public final declared-synchronized d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcy;->e(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    .line 8
    return-object p1

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public final declared-synchronized e(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcy;->d:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcy;->d:Z

    .line 9
    .line 10
    sget v0, Lbv;->abc_vector_test:I

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcy;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    instance-of v1, v0, Lw40;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const-string v1, "android.graphics.drawable.VectorDrawable"

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_5

    .line 37
    .line 38
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcy;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-static {p1, p2}, Lic;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, p1, p2, p3, v0}, Lcy;->h(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_3
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-static {v0}, Lwf;->a(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    :cond_4
    monitor-exit p0

    .line 63
    return-object v0

    .line 64
    :cond_5
    const/4 p1, 0x0

    .line 65
    :try_start_1
    iput-boolean p1, p0, Lcy;->d:Z

    .line 66
    .line 67
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw p1
.end method

.method public final declared-synchronized g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcy;->a:Ljava/util/WeakHashMap;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lo00;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v2, v0, Lo00;->a:[I

    .line 16
    .line 17
    iget v3, v0, Lo00;->c:I

    .line 18
    .line 19
    invoke-static {v3, p2, v2}, Ld40;->d(II[I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ltz v2, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lo00;->b:[Ljava/lang/Object;

    .line 26
    .line 27
    aget-object v0, v0, v2

    .line 28
    .line 29
    sget-object v2, Lo00;->d:Ljava/lang/Object;

    .line 30
    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    :cond_0
    move-object v0, v1

    .line 34
    :cond_1
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    move-object v0, v1

    .line 38
    :goto_0
    if-nez v0, :cond_5

    .line 39
    .line 40
    iget-object v0, p0, Lcy;->e:Li4;

    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    invoke-virtual {v0, p1, p2}, Li4;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_1
    if-eqz v1, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2, v1}, Lcy;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_3

    .line 57
    :cond_4
    :goto_2
    move-object v0, v1

    .line 58
    :cond_5
    monitor-exit p0

    .line 59
    return-object v0

    .line 60
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p1
.end method

.method public final h(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lcy;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1, v0}, Lqf;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcy;->e:Li4;

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget p0, Ldv;->abc_switch_thumb_material:I

    .line 21
    .line 22
    if-ne p2, p0, :cond_1

    .line 23
    .line 24
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 25
    .line 26
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-static {p1, v1}, Lqf;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-object p1

    .line 32
    :cond_3
    iget-object v0, p0, Lcy;->e:Li4;

    .line 33
    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    sget v0, Ldv;->abc_seekbar_track_material:I

    .line 37
    .line 38
    const v2, 0x102000d

    .line 39
    .line 40
    .line 41
    const v3, 0x102000f

    .line 42
    .line 43
    .line 44
    const/high16 v4, 0x1020000

    .line 45
    .line 46
    if-ne p2, v0, :cond_4

    .line 47
    .line 48
    move-object p0, p4

    .line 49
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 50
    .line 51
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    sget p3, Luu;->colorControlNormal:I

    .line 56
    .line 57
    invoke-static {p1, p3}, Ls20;->c(Landroid/content/Context;I)I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    sget-object v0, Lj4;->b:Landroid/graphics/PorterDuff$Mode;

    .line 62
    .line 63
    invoke-static {p2, p3, v0}, Li4;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    sget p3, Luu;->colorControlNormal:I

    .line 71
    .line 72
    invoke-static {p1, p3}, Ls20;->c(Landroid/content/Context;I)I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    invoke-static {p2, p3, v0}, Li4;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    sget p2, Luu;->colorControlActivated:I

    .line 84
    .line 85
    invoke-static {p1, p2}, Ls20;->c(Landroid/content/Context;I)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-static {p0, p1, v0}, Li4;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 90
    .line 91
    .line 92
    return-object p4

    .line 93
    :cond_4
    sget v0, Ldv;->abc_ratingbar_material:I

    .line 94
    .line 95
    if-eq p2, v0, :cond_5

    .line 96
    .line 97
    sget v0, Ldv;->abc_ratingbar_indicator_material:I

    .line 98
    .line 99
    if-eq p2, v0, :cond_5

    .line 100
    .line 101
    sget v0, Ldv;->abc_ratingbar_small_material:I

    .line 102
    .line 103
    if-ne p2, v0, :cond_6

    .line 104
    .line 105
    :cond_5
    move-object p0, p4

    .line 106
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 107
    .line 108
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    sget p3, Luu;->colorControlNormal:I

    .line 113
    .line 114
    invoke-static {p1, p3}, Ls20;->b(Landroid/content/Context;I)I

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    sget-object v0, Lj4;->b:Landroid/graphics/PorterDuff$Mode;

    .line 119
    .line 120
    invoke-static {p2, p3, v0}, Li4;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    sget p3, Luu;->colorControlActivated:I

    .line 128
    .line 129
    invoke-static {p1, p3}, Ls20;->c(Landroid/content/Context;I)I

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    invoke-static {p2, p3, v0}, Li4;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    sget p2, Luu;->colorControlActivated:I

    .line 141
    .line 142
    invoke-static {p1, p2}, Ls20;->c(Landroid/content/Context;I)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    invoke-static {p0, p1, v0}, Li4;->e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 147
    .line 148
    .line 149
    return-object p4

    .line 150
    :cond_6
    iget-object p0, p0, Lcy;->e:Li4;

    .line 151
    .line 152
    const/4 v0, 0x0

    .line 153
    if-eqz p0, :cond_d

    .line 154
    .line 155
    sget-object v2, Lj4;->b:Landroid/graphics/PorterDuff$Mode;

    .line 156
    .line 157
    iget-object v3, p0, Li4;->a:[I

    .line 158
    .line 159
    invoke-static {v3, p2}, Li4;->a([II)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    const/4 v4, 0x1

    .line 164
    const/4 v5, -0x1

    .line 165
    if-eqz v3, :cond_7

    .line 166
    .line 167
    sget p0, Luu;->colorControlNormal:I

    .line 168
    .line 169
    :goto_1
    move v3, v4

    .line 170
    :goto_2
    move p2, v5

    .line 171
    goto :goto_4

    .line 172
    :cond_7
    iget-object v3, p0, Li4;->c:[I

    .line 173
    .line 174
    invoke-static {v3, p2}, Li4;->a([II)Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_8

    .line 179
    .line 180
    sget p0, Luu;->colorControlActivated:I

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_8
    iget-object p0, p0, Li4;->d:[I

    .line 184
    .line 185
    invoke-static {p0, p2}, Li4;->a([II)Z

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    const v3, 0x1010031

    .line 190
    .line 191
    .line 192
    if-eqz p0, :cond_9

    .line 193
    .line 194
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 195
    .line 196
    :goto_3
    move p0, v3

    .line 197
    goto :goto_1

    .line 198
    :cond_9
    sget p0, Ldv;->abc_list_divider_mtrl_alpha:I

    .line 199
    .line 200
    if-ne p2, p0, :cond_a

    .line 201
    .line 202
    const p0, 0x42233333    # 40.8f

    .line 203
    .line 204
    .line 205
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    const p2, 0x1010030

    .line 210
    .line 211
    .line 212
    move v3, p2

    .line 213
    move p2, p0

    .line 214
    move p0, v3

    .line 215
    move v3, v4

    .line 216
    goto :goto_4

    .line 217
    :cond_a
    sget p0, Ldv;->abc_dialog_material_background:I

    .line 218
    .line 219
    if-ne p2, p0, :cond_b

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_b
    move p0, v0

    .line 223
    move v3, p0

    .line 224
    goto :goto_2

    .line 225
    :goto_4
    if-eqz v3, :cond_d

    .line 226
    .line 227
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {p1, p0}, Ls20;->c(Landroid/content/Context;I)I

    .line 232
    .line 233
    .line 234
    move-result p0

    .line 235
    invoke-static {p0, v2}, Lj4;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 240
    .line 241
    .line 242
    if-eq p2, v5, :cond_c

    .line 243
    .line 244
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 245
    .line 246
    .line 247
    :cond_c
    move v0, v4

    .line 248
    :cond_d
    if-nez v0, :cond_e

    .line 249
    .line 250
    if-eqz p3, :cond_e

    .line 251
    .line 252
    return-object v1

    .line 253
    :cond_e
    return-object p4
.end method
