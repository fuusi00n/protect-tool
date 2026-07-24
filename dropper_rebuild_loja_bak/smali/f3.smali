.class public abstract Lf3;
.super Ldb;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lj3;


# instance fields
.field public final s:Lo0;

.field public final t:Ltn;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Lg4;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ldb;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcj;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcj;-><init>(Lf3;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lo0;

    .line 10
    .line 11
    const/16 v2, 0xd

    .line 12
    .line 13
    invoke-direct {v1, v2, v0}, Lo0;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lf3;->s:Lo0;

    .line 17
    .line 18
    new-instance v0, Ltn;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Ltn;-><init>(Lrn;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lf3;->t:Ltn;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lf3;->w:Z

    .line 27
    .line 28
    iget-object v0, p0, Ldb;->d:Lcz;

    .line 29
    .line 30
    iget-object v0, v0, Lcz;->b:Lm3;

    .line 31
    .line 32
    new-instance v1, Lua;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-direct {v1, v2, p0}, Lua;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const-string v2, "android:support:lifecycle"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Lm3;->e(Ljava/lang/String;Lbz;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lbj;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, p0, v1}, Lbj;-><init>(Lf3;I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Ldb;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    new-instance v0, Lbj;

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-direct {v0, p0, v1}, Lbj;-><init>(Lf3;I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Ldb;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v0, Lva;

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-direct {v0, p0, v1}, Lva;-><init>(Lf3;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ldb;->g(Lmt;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Ldb;->d:Lcz;

    .line 75
    .line 76
    iget-object v0, v0, Lcz;->b:Lm3;

    .line 77
    .line 78
    new-instance v1, Ld3;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Ld3;-><init>(Lf3;)V

    .line 81
    .line 82
    .line 83
    const-string v2, "androidx:appcompat"

    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Lm3;->e(Ljava/lang/String;Lbz;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Le3;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Le3;-><init>(Lf3;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ldb;->g(Lmt;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public static m(Lpj;)Z
    .locals 7

    .line 1
    iget-object p0, p0, Lpj;->c:Lle;

    .line 2
    .line 3
    invoke-virtual {p0}, Lle;->h()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_5

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Laj;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v2, v1, Laj;->s:Lcj;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget-object v2, v2, Lcj;->I:Lf3;

    .line 34
    .line 35
    :goto_1
    if-eqz v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1}, Laj;->g()Lpj;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lf3;->m(Lpj;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    or-int/2addr v0, v2

    .line 46
    :cond_3
    iget-object v2, v1, Laj;->N:Lbk;

    .line 47
    .line 48
    const-string v3, "setCurrentState"

    .line 49
    .line 50
    sget-object v4, Lpn;->c:Lpn;

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    sget-object v6, Lpn;->d:Lpn;

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {v2}, Lbk;->f()V

    .line 58
    .line 59
    .line 60
    iget-object v2, v2, Lbk;->c:Ltn;

    .line 61
    .line 62
    iget-object v2, v2, Ltn;->c:Lpn;

    .line 63
    .line 64
    invoke-virtual {v2, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ltz v2, :cond_4

    .line 69
    .line 70
    iget-object v0, v1, Laj;->N:Lbk;

    .line 71
    .line 72
    iget-object v0, v0, Lbk;->c:Ltn;

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ltn;->c(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v4}, Ltn;->e(Lpn;)V

    .line 78
    .line 79
    .line 80
    move v0, v5

    .line 81
    :cond_4
    iget-object v2, v1, Laj;->M:Ltn;

    .line 82
    .line 83
    iget-object v2, v2, Ltn;->c:Lpn;

    .line 84
    .line 85
    invoke-virtual {v2, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-ltz v2, :cond_0

    .line 90
    .line 91
    iget-object v0, v1, Laj;->M:Ltn;

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Ltn;->c(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4}, Ltn;->e(Lpn;)V

    .line 97
    .line 98
    .line 99
    move v0, v5

    .line 100
    goto :goto_0

    .line 101
    :cond_5
    return v0
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf3;->l()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lg4;

    .line 9
    .line 10
    invoke-virtual {p0}, Lg4;->u()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lg4;->z:Landroid/view/ViewGroup;

    .line 14
    .line 15
    const v1, 0x1020002

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/ViewGroup;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lg4;->m:La4;

    .line 28
    .line 29
    iget-object p0, p0, Lg4;->l:Landroid/view/Window;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, La4;->a(Landroid/view/Window$Callback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lg4;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lg4;->N:Z

    .line 9
    .line 10
    iget v2, v0, Lg4;->R:I

    .line 11
    .line 12
    const/16 v3, -0x64

    .line 13
    .line 14
    if-eq v2, v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget v2, Ls3;->b:I

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, p1, v2}, Lg4;->A(Landroid/content/Context;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p1}, Ls3;->a(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_7

    .line 28
    .line 29
    invoke-static {p1}, Ls3;->a(Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v3, 0x21

    .line 39
    .line 40
    if-lt v2, v3, :cond_2

    .line 41
    .line 42
    sget-boolean v2, Ls3;->f:Z

    .line 43
    .line 44
    if-nez v2, :cond_7

    .line 45
    .line 46
    sget-object v2, Ls3;->a:Lq3;

    .line 47
    .line 48
    new-instance v3, Lr1;

    .line 49
    .line 50
    invoke-direct {v3, v1, p1}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lq3;->execute(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_2
    sget-object v2, Ls3;->i:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter v2

    .line 60
    :try_start_0
    sget-object v3, Ls3;->c:Lbp;

    .line 61
    .line 62
    if-nez v3, :cond_5

    .line 63
    .line 64
    sget-object v3, Ls3;->d:Lbp;

    .line 65
    .line 66
    if-nez v3, :cond_3

    .line 67
    .line 68
    invoke-static {p1}, Lnm;->K(Landroid/content/Context;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v3}, Lbp;->a(Ljava/lang/String;)Lbp;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    sput-object v3, Ls3;->d:Lbp;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_3

    .line 81
    :cond_3
    :goto_1
    sget-object v3, Ls3;->d:Lbp;

    .line 82
    .line 83
    iget-object v3, v3, Lbp;->a:Lcp;

    .line 84
    .line 85
    iget-object v3, v3, Lcp;->a:Landroid/os/LocaleList;

    .line 86
    .line 87
    invoke-virtual {v3}, Landroid/os/LocaleList;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_4

    .line 92
    .line 93
    monitor-exit v2

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    sget-object v3, Ls3;->d:Lbp;

    .line 96
    .line 97
    sput-object v3, Ls3;->c:Lbp;

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    sget-object v4, Ls3;->d:Lbp;

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Lbp;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_6

    .line 107
    .line 108
    sget-object v3, Ls3;->c:Lbp;

    .line 109
    .line 110
    sput-object v3, Ls3;->d:Lbp;

    .line 111
    .line 112
    iget-object v3, v3, Lbp;->a:Lcp;

    .line 113
    .line 114
    iget-object v3, v3, Lcp;->a:Landroid/os/LocaleList;

    .line 115
    .line 116
    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {p1, v3}, Lnm;->F(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_6
    :goto_2
    monitor-exit v2

    .line 124
    goto :goto_4

    .line 125
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p0

    .line 127
    :cond_7
    :goto_4
    invoke-static {p1}, Lg4;->n(Landroid/content/Context;)Lbp;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    instance-of v3, p1, Landroid/view/ContextThemeWrapper;

    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    const/4 v5, 0x0

    .line 135
    if-eqz v3, :cond_8

    .line 136
    .line 137
    invoke-static {p1, v0, v2, v5, v4}, Lg4;->r(Landroid/content/Context;ILbp;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    :try_start_1
    move-object v6, p1

    .line 142
    check-cast v6, Landroid/view/ContextThemeWrapper;

    .line 143
    .line 144
    invoke-virtual {v6, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    .line 146
    .line 147
    goto/16 :goto_a

    .line 148
    .line 149
    :catch_0
    :cond_8
    instance-of v3, p1, Llc;

    .line 150
    .line 151
    if-eqz v3, :cond_9

    .line 152
    .line 153
    invoke-static {p1, v0, v2, v5, v4}, Lg4;->r(Landroid/content/Context;ILbp;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    :try_start_2
    move-object v4, p1

    .line 158
    check-cast v4, Llc;

    .line 159
    .line 160
    invoke-virtual {v4, v3}, Llc;->a(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    .line 162
    .line 163
    goto/16 :goto_a

    .line 164
    .line 165
    :catch_1
    :cond_9
    sget-boolean v3, Lg4;->i0:Z

    .line 166
    .line 167
    if-nez v3, :cond_a

    .line 168
    .line 169
    goto/16 :goto_a

    .line 170
    .line 171
    :cond_a
    new-instance v3, Landroid/content/res/Configuration;

    .line 172
    .line 173
    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 174
    .line 175
    .line 176
    const/4 v4, -0x1

    .line 177
    iput v4, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 178
    .line 179
    const/4 v4, 0x0

    .line 180
    iput v4, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 181
    .line 182
    invoke-virtual {p1, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 203
    .line 204
    iput v7, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 205
    .line 206
    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    if-nez v7, :cond_20

    .line 211
    .line 212
    new-instance v7, Landroid/content/res/Configuration;

    .line 213
    .line 214
    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    .line 215
    .line 216
    .line 217
    iput v4, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 218
    .line 219
    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-nez v4, :cond_b

    .line 224
    .line 225
    goto/16 :goto_5

    .line 226
    .line 227
    :cond_b
    iget v4, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 228
    .line 229
    iget v8, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 230
    .line 231
    cmpl-float v4, v4, v8

    .line 232
    .line 233
    if-eqz v4, :cond_c

    .line 234
    .line 235
    iput v8, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 236
    .line 237
    :cond_c
    iget v4, v3, Landroid/content/res/Configuration;->mcc:I

    .line 238
    .line 239
    iget v8, v6, Landroid/content/res/Configuration;->mcc:I

    .line 240
    .line 241
    if-eq v4, v8, :cond_d

    .line 242
    .line 243
    iput v8, v7, Landroid/content/res/Configuration;->mcc:I

    .line 244
    .line 245
    :cond_d
    iget v4, v3, Landroid/content/res/Configuration;->mnc:I

    .line 246
    .line 247
    iget v8, v6, Landroid/content/res/Configuration;->mnc:I

    .line 248
    .line 249
    if-eq v4, v8, :cond_e

    .line 250
    .line 251
    iput v8, v7, Landroid/content/res/Configuration;->mnc:I

    .line 252
    .line 253
    :cond_e
    invoke-static {v3, v6, v7}, Lx3;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 254
    .line 255
    .line 256
    iget v4, v3, Landroid/content/res/Configuration;->touchscreen:I

    .line 257
    .line 258
    iget v8, v6, Landroid/content/res/Configuration;->touchscreen:I

    .line 259
    .line 260
    if-eq v4, v8, :cond_f

    .line 261
    .line 262
    iput v8, v7, Landroid/content/res/Configuration;->touchscreen:I

    .line 263
    .line 264
    :cond_f
    iget v4, v3, Landroid/content/res/Configuration;->keyboard:I

    .line 265
    .line 266
    iget v8, v6, Landroid/content/res/Configuration;->keyboard:I

    .line 267
    .line 268
    if-eq v4, v8, :cond_10

    .line 269
    .line 270
    iput v8, v7, Landroid/content/res/Configuration;->keyboard:I

    .line 271
    .line 272
    :cond_10
    iget v4, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 273
    .line 274
    iget v8, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 275
    .line 276
    if-eq v4, v8, :cond_11

    .line 277
    .line 278
    iput v8, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 279
    .line 280
    :cond_11
    iget v4, v3, Landroid/content/res/Configuration;->navigation:I

    .line 281
    .line 282
    iget v8, v6, Landroid/content/res/Configuration;->navigation:I

    .line 283
    .line 284
    if-eq v4, v8, :cond_12

    .line 285
    .line 286
    iput v8, v7, Landroid/content/res/Configuration;->navigation:I

    .line 287
    .line 288
    :cond_12
    iget v4, v3, Landroid/content/res/Configuration;->navigationHidden:I

    .line 289
    .line 290
    iget v8, v6, Landroid/content/res/Configuration;->navigationHidden:I

    .line 291
    .line 292
    if-eq v4, v8, :cond_13

    .line 293
    .line 294
    iput v8, v7, Landroid/content/res/Configuration;->navigationHidden:I

    .line 295
    .line 296
    :cond_13
    iget v4, v3, Landroid/content/res/Configuration;->orientation:I

    .line 297
    .line 298
    iget v8, v6, Landroid/content/res/Configuration;->orientation:I

    .line 299
    .line 300
    if-eq v4, v8, :cond_14

    .line 301
    .line 302
    iput v8, v7, Landroid/content/res/Configuration;->orientation:I

    .line 303
    .line 304
    :cond_14
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 305
    .line 306
    and-int/lit8 v4, v4, 0xf

    .line 307
    .line 308
    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 309
    .line 310
    and-int/lit8 v8, v8, 0xf

    .line 311
    .line 312
    if-eq v4, v8, :cond_15

    .line 313
    .line 314
    iget v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 315
    .line 316
    or-int/2addr v4, v8

    .line 317
    iput v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 318
    .line 319
    :cond_15
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 320
    .line 321
    and-int/lit16 v4, v4, 0xc0

    .line 322
    .line 323
    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 324
    .line 325
    and-int/lit16 v8, v8, 0xc0

    .line 326
    .line 327
    if-eq v4, v8, :cond_16

    .line 328
    .line 329
    iget v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 330
    .line 331
    or-int/2addr v4, v8

    .line 332
    iput v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 333
    .line 334
    :cond_16
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 335
    .line 336
    and-int/lit8 v4, v4, 0x30

    .line 337
    .line 338
    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 339
    .line 340
    and-int/lit8 v8, v8, 0x30

    .line 341
    .line 342
    if-eq v4, v8, :cond_17

    .line 343
    .line 344
    iget v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 345
    .line 346
    or-int/2addr v4, v8

    .line 347
    iput v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 348
    .line 349
    :cond_17
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 350
    .line 351
    and-int/lit16 v4, v4, 0x300

    .line 352
    .line 353
    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 354
    .line 355
    and-int/lit16 v8, v8, 0x300

    .line 356
    .line 357
    if-eq v4, v8, :cond_18

    .line 358
    .line 359
    iget v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 360
    .line 361
    or-int/2addr v4, v8

    .line 362
    iput v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 363
    .line 364
    :cond_18
    iget v4, v3, Landroid/content/res/Configuration;->colorMode:I

    .line 365
    .line 366
    and-int/lit8 v4, v4, 0x3

    .line 367
    .line 368
    iget v8, v6, Landroid/content/res/Configuration;->colorMode:I

    .line 369
    .line 370
    and-int/lit8 v8, v8, 0x3

    .line 371
    .line 372
    if-eq v4, v8, :cond_19

    .line 373
    .line 374
    iget v4, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 375
    .line 376
    or-int/2addr v4, v8

    .line 377
    iput v4, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 378
    .line 379
    :cond_19
    iget v4, v3, Landroid/content/res/Configuration;->colorMode:I

    .line 380
    .line 381
    and-int/lit8 v4, v4, 0xc

    .line 382
    .line 383
    iget v8, v6, Landroid/content/res/Configuration;->colorMode:I

    .line 384
    .line 385
    and-int/lit8 v8, v8, 0xc

    .line 386
    .line 387
    if-eq v4, v8, :cond_1a

    .line 388
    .line 389
    iget v4, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 390
    .line 391
    or-int/2addr v4, v8

    .line 392
    iput v4, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 393
    .line 394
    :cond_1a
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 395
    .line 396
    and-int/lit8 v4, v4, 0xf

    .line 397
    .line 398
    iget v8, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 399
    .line 400
    and-int/lit8 v8, v8, 0xf

    .line 401
    .line 402
    if-eq v4, v8, :cond_1b

    .line 403
    .line 404
    iget v4, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 405
    .line 406
    or-int/2addr v4, v8

    .line 407
    iput v4, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 408
    .line 409
    :cond_1b
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 410
    .line 411
    and-int/lit8 v4, v4, 0x30

    .line 412
    .line 413
    iget v8, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 414
    .line 415
    and-int/lit8 v8, v8, 0x30

    .line 416
    .line 417
    if-eq v4, v8, :cond_1c

    .line 418
    .line 419
    iget v4, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 420
    .line 421
    or-int/2addr v4, v8

    .line 422
    iput v4, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 423
    .line 424
    :cond_1c
    iget v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 425
    .line 426
    iget v8, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 427
    .line 428
    if-eq v4, v8, :cond_1d

    .line 429
    .line 430
    iput v8, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 431
    .line 432
    :cond_1d
    iget v4, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 433
    .line 434
    iget v8, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 435
    .line 436
    if-eq v4, v8, :cond_1e

    .line 437
    .line 438
    iput v8, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 439
    .line 440
    :cond_1e
    iget v4, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 441
    .line 442
    iget v8, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 443
    .line 444
    if-eq v4, v8, :cond_1f

    .line 445
    .line 446
    iput v8, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 447
    .line 448
    :cond_1f
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 449
    .line 450
    iget v4, v6, Landroid/content/res/Configuration;->densityDpi:I

    .line 451
    .line 452
    if-eq v3, v4, :cond_21

    .line 453
    .line 454
    iput v4, v7, Landroid/content/res/Configuration;->densityDpi:I

    .line 455
    .line 456
    goto :goto_5

    .line 457
    :cond_20
    move-object v7, v5

    .line 458
    :cond_21
    :goto_5
    invoke-static {p1, v0, v2, v7, v1}, Lg4;->r(Landroid/content/Context;ILbp;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    new-instance v2, Llc;

    .line 463
    .line 464
    sget v3, Law;->Theme_AppCompat_Empty:I

    .line 465
    .line 466
    invoke-direct {v2, p1, v3}, Llc;-><init>(Landroid/content/Context;I)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v2, v0}, Llc;->a(Landroid/content/res/Configuration;)V

    .line 470
    .line 471
    .line 472
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 473
    .line 474
    .line 475
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    .line 476
    if-eqz p1, :cond_25

    .line 477
    .line 478
    invoke-virtual {v2}, Llc;->getTheme()Landroid/content/res/Resources$Theme;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 483
    .line 484
    const/16 v3, 0x1d

    .line 485
    .line 486
    if-lt v0, v3, :cond_22

    .line 487
    .line 488
    invoke-static {p1}, Liy;->a(Landroid/content/res/Resources$Theme;)V

    .line 489
    .line 490
    .line 491
    goto :goto_9

    .line 492
    :cond_22
    sget-object v0, Lnm;->k:Ljava/lang/Object;

    .line 493
    .line 494
    monitor-enter v0

    .line 495
    :try_start_4
    sget-boolean v3, Lnm;->m:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 496
    .line 497
    if-nez v3, :cond_23

    .line 498
    .line 499
    :try_start_5
    const-class v3, Landroid/content/res/Resources$Theme;

    .line 500
    .line 501
    const-string v4, "rebase"

    .line 502
    .line 503
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    sput-object v3, Lnm;->l:Ljava/lang/reflect/Method;

    .line 508
    .line 509
    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 510
    .line 511
    .line 512
    goto :goto_6

    .line 513
    :catchall_1
    move-exception p0

    .line 514
    goto :goto_8

    .line 515
    :catch_2
    :goto_6
    :try_start_6
    sput-boolean v1, Lnm;->m:Z

    .line 516
    .line 517
    :cond_23
    sget-object v1, Lnm;->l:Ljava/lang/reflect/Method;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 518
    .line 519
    if-eqz v1, :cond_24

    .line 520
    .line 521
    :try_start_7
    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 522
    .line 523
    .line 524
    goto :goto_7

    .line 525
    :catch_3
    :try_start_8
    sput-object v5, Lnm;->l:Ljava/lang/reflect/Method;

    .line 526
    .line 527
    :cond_24
    :goto_7
    monitor-exit v0

    .line 528
    goto :goto_9

    .line 529
    :goto_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 530
    throw p0

    .line 531
    :catch_4
    :cond_25
    :goto_9
    move-object p1, v2

    .line 532
    :goto_a
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 533
    .line 534
    .line 535
    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lg4;

    .line 6
    .line 7
    invoke-virtual {v0}, Lg4;->y()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lg4;

    .line 9
    .line 10
    invoke-virtual {v0}, Lg4;->y()V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Ldb;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p4, :cond_5

    .line 6
    .line 7
    array-length v1, p4

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    aget-object v1, p4, v0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sparse-switch v2, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :sswitch_0
    const-string v2, "--autofill"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_4

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :sswitch_1
    const-string v2, "--contentcapture"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v2, 0x1d

    .line 42
    .line 43
    if-lt v1, v2, :cond_5

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :sswitch_2
    const-string v2, "--list-dumpables"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :sswitch_3
    const-string v2, "--dump-dumpable"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    .line 66
    const/16 v2, 0x21

    .line 67
    .line 68
    if-lt v1, v2, :cond_5

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :sswitch_4
    const-string v2, "--translation"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 81
    .line 82
    const/16 v2, 0x1f

    .line 83
    .line 84
    if-lt v1, v2, :cond_5

    .line 85
    .line 86
    :cond_4
    :goto_0
    return-void

    .line 87
    :cond_5
    :goto_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v1, "Local FragmentActivity "

    .line 91
    .line 92
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v1, " State:"

    .line 107
    .line 108
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v2, "  "

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v2, "mCreated="

    .line 132
    .line 133
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-boolean v2, p0, Lf3;->u:Z

    .line 137
    .line 138
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 139
    .line 140
    .line 141
    const-string v2, " mResumed="

    .line 142
    .line 143
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-boolean v2, p0, Lf3;->v:Z

    .line 147
    .line 148
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 149
    .line 150
    .line 151
    const-string v2, " mStopped="

    .line 152
    .line 153
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-boolean v2, p0, Lf3;->w:Z

    .line 157
    .line 158
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    if-eqz v2, :cond_8

    .line 166
    .line 167
    invoke-interface {p0}, Lj60;->d()Li60;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    new-instance v3, Lo0;

    .line 172
    .line 173
    sget-object v4, Lyo;->c:Lsj;

    .line 174
    .line 175
    invoke-direct {v3, v2, v4}, Lo0;-><init>(Li60;Lh60;)V

    .line 176
    .line 177
    .line 178
    const-class v2, Lyo;

    .line 179
    .line 180
    invoke-virtual {v3, v2}, Lo0;->t(Ljava/lang/Class;)Le60;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    check-cast v2, Lyo;

    .line 185
    .line 186
    iget-object v2, v2, Lyo;->b:Lo00;

    .line 187
    .line 188
    iget v3, v2, Lo00;->c:I

    .line 189
    .line 190
    if-lez v3, :cond_8

    .line 191
    .line 192
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v3, "Loaders:"

    .line 196
    .line 197
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget v3, v2, Lo00;->c:I

    .line 201
    .line 202
    if-gtz v3, :cond_6

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_6
    iget-object p0, v2, Lo00;->b:[Ljava/lang/Object;

    .line 206
    .line 207
    aget-object p0, p0, v0

    .line 208
    .line 209
    if-eqz p0, :cond_7

    .line 210
    .line 211
    invoke-static {}, Lg9;->a()V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_7
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string p0, "  #"

    .line 219
    .line 220
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object p0, v2, Lo00;->a:[I

    .line 224
    .line 225
    aget p0, p0, v0

    .line 226
    .line 227
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 228
    .line 229
    .line 230
    const-string p0, ": "

    .line 231
    .line 232
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    const/4 p0, 0x0

    .line 236
    throw p0

    .line 237
    :cond_8
    :goto_2
    iget-object p0, p0, Lf3;->s:Lo0;

    .line 238
    .line 239
    iget-object p0, p0, Lo0;->b:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast p0, Lcj;

    .line 242
    .line 243
    iget-object p0, p0, Lcj;->H:Lqj;

    .line 244
    .line 245
    invoke-virtual {p0, p1, p2, p3, p4}, Lpj;->v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :sswitch_data_0
    .sparse-switch
        -0x2673d6ef -> :sswitch_4
        0x5fd0f67 -> :sswitch_3
        0x1c2b8816 -> :sswitch_2
        0x4519f64d -> :sswitch_1
        0x56b9c952 -> :sswitch_0
    .end sparse-switch
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lg4;

    .line 6
    .line 7
    invoke-virtual {p0}, Lg4;->u()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lg4;->l:Landroid/view/Window;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lg4;

    .line 6
    .line 7
    iget-object v0, p0, Lg4;->o:Lq10;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lg4;->y()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lq10;

    .line 15
    .line 16
    iget-object v1, p0, Lg4;->n:Lo70;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lo70;->b()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lg4;->k:Landroid/content/Context;

    .line 26
    .line 27
    :goto_0
    invoke-direct {v0, v1}, Lq10;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lg4;->o:Lq10;

    .line 31
    .line 32
    :cond_1
    iget-object p0, p0, Lg4;->o:Lq10;

    .line 33
    .line 34
    return-object p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    sget v0, Lx40;->a:I

    .line 2
    .line 3
    invoke-super {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lg4;

    .line 6
    .line 7
    iget-object v0, p0, Lg4;->n:Lo70;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lg4;->y()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lg4;->n:Lo70;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lg4;->z(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final k()Ls3;
    .locals 2

    .line 1
    iget-object v0, p0, Lf3;->x:Lg4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ls3;->a:Lq3;

    .line 6
    .line 7
    new-instance v0, Lg4;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1, p0, p0}, Lg4;-><init>(Landroid/content/Context;Landroid/view/Window;Lj3;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lf3;->x:Lg4;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lf3;->x:Lg4;

    .line 16
    .line 17
    return-object p0
.end method

.method public final l()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget v1, Ljv;->view_tree_lifecycle_owner:I

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget v1, Lkv;->view_tree_view_model_store_owner:I

    .line 29
    .line 30
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sget v1, Llv;->view_tree_saved_state_registry_owner:I

    .line 45
    .line 46
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    sget v1, Lov;->view_tree_on_back_pressed_dispatcher_owner:I

    .line 61
    .line 62
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf3;->s:Lo0;

    .line 5
    .line 6
    iget-object v0, v0, Lo0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcj;

    .line 9
    .line 10
    iget-object v0, v0, Lcj;->H:Lqj;

    .line 11
    .line 12
    invoke-virtual {v0}, Lpj;->k()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lf3;->t:Ltn;

    .line 16
    .line 17
    sget-object v0, Lon;->ON_DESTROY:Lon;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ltn;->d(Lon;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final o(ILandroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ldb;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p2, 0x6

    .line 10
    if-ne p1, p2, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lf3;->s:Lo0;

    .line 13
    .line 14
    iget-object p0, p0, Lo0;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lcj;

    .line 17
    .line 18
    iget-object p0, p0, Lcj;->H:Lqj;

    .line 19
    .line 20
    invoke-virtual {p0}, Lpj;->i()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf3;->s:Lo0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo0;->u()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Ldb;->onActivityResult(IILandroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ldb;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lg4;

    .line 9
    .line 10
    iget-boolean p1, p0, Lg4;->E:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Lg4;->y:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lg4;->y()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lg4;->n:Lo70;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object v0, p1, Lo70;->a:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget v1, Lvu;->abc_action_bar_embed_tabs:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p1, v0}, Lo70;->e(Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {}, Lj4;->a()Lj4;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v0, p0, Lg4;->k:Landroid/content/Context;

    .line 45
    .line 46
    monitor-enter p1

    .line 47
    :try_start_0
    iget-object v1, p1, Lj4;->a:Lcy;

    .line 48
    .line 49
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v2, v1, Lcy;->b:Ljava/util/WeakHashMap;

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljp;

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Ljp;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    monitor-exit p1

    .line 68
    new-instance p1, Landroid/content/res/Configuration;

    .line 69
    .line 70
    iget-object v0, p0, Lg4;->k:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lg4;->Q:Landroid/content/res/Configuration;

    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    invoke-virtual {p0, p1, p1}, Lg4;->l(ZZ)Z

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :try_start_4
    throw p0

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 94
    throw p0
.end method

.method public final onContentChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ldb;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lf3;->t:Ltn;

    .line 5
    .line 6
    sget-object v0, Lon;->ON_CREATE:Lon;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ltn;->d(Lon;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lf3;->s:Lo0;

    .line 12
    .line 13
    iget-object p0, p0, Lo0;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lcj;

    .line 16
    .line 17
    iget-object p0, p0, Lcj;->H:Lqj;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lpj;->E:Z

    .line 21
    .line 22
    iput-boolean p1, p0, Lpj;->F:Z

    .line 23
    .line 24
    iget-object v0, p0, Lpj;->L:Ltj;

    .line 25
    .line 26
    iput-boolean p1, v0, Ltj;->g:Z

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Lpj;->t(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 24
    iget-object v0, p0, Lf3;->s:Lo0;

    .line 25
    iget-object v0, v0, Lo0;->b:Ljava/lang/Object;

    check-cast v0, Lcj;

    .line 26
    iget-object v0, v0, Lcj;->H:Lqj;

    .line 27
    iget-object v0, v0, Lpj;->f:Lfj;

    .line 28
    invoke-virtual {v0, p1, p2, p3, p4}, Lfj;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lf3;->s:Lo0;

    .line 2
    .line 3
    iget-object v0, v0, Lo0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcj;

    .line 6
    .line 7
    iget-object v0, v0, Lcj;->H:Lqj;

    .line 8
    .line 9
    iget-object v0, v0, Lpj;->f:Lfj;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, p1, p2, p3}, Lfj;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf3;->n()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ls3;->c()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lf3;->o(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lg4;

    .line 15
    .line 16
    invoke-virtual {p1}, Lg4;->y()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lg4;->n:Lo70;

    .line 20
    .line 21
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const v1, 0x102002c

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-ne p2, v1, :cond_7

    .line 30
    .line 31
    if-eqz p1, :cond_7

    .line 32
    .line 33
    iget-object p1, p1, Lo70;->e:Lwd;

    .line 34
    .line 35
    check-cast p1, Lm30;

    .line 36
    .line 37
    iget p1, p1, Lm30;->b:I

    .line 38
    .line 39
    and-int/lit8 p1, p1, 0x4

    .line 40
    .line 41
    if-eqz p1, :cond_7

    .line 42
    .line 43
    invoke-static {p0}, Lns;->k(Lf3;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_7

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_6

    .line 54
    .line 55
    new-instance p1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Lns;->k(Lf3;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-nez p2, :cond_1

    .line 65
    .line 66
    invoke-static {p0}, Lns;->k(Lf3;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    :cond_1
    if-eqz p2, :cond_4

    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    :try_start_0
    invoke-static {p0, v1}, Lns;->l(Lf3;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :goto_0
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {p0, v1}, Lns;->l(Lf3;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catch_0
    move-exception p0

    .line 113
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-nez p2, :cond_5

    .line 124
    .line 125
    new-array p2, v2, [Landroid/content/Intent;

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, [Landroid/content/Intent;

    .line 132
    .line 133
    new-instance p2, Landroid/content/Intent;

    .line 134
    .line 135
    aget-object v1, p1, v2

    .line 136
    .line 137
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 138
    .line 139
    .line 140
    const v1, 0x1000c000

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    aput-object p2, p1, v2

    .line 148
    .line 149
    const/4 p2, 0x0

    .line 150
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 151
    .line 152
    .line 153
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 158
    .line 159
    .line 160
    :goto_2
    return v0

    .line 161
    :cond_5
    const-string p0, "No intents added to TaskStackBuilder; cannot startActivities"

    .line 162
    .line 163
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return v2

    .line 167
    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    .line 168
    .line 169
    .line 170
    return v0

    .line 171
    :cond_7
    return v2
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lf3;->v:Z

    .line 6
    .line 7
    iget-object v0, p0, Lf3;->s:Lo0;

    .line 8
    .line 9
    iget-object v0, v0, Lo0;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lcj;

    .line 12
    .line 13
    iget-object v0, v0, Lcj;->H:Lqj;

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    invoke-virtual {v0, v1}, Lpj;->t(I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lf3;->t:Ltn;

    .line 20
    .line 21
    sget-object v0, Lon;->ON_PAUSE:Lon;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ltn;->d(Lon;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lg4;

    .line 9
    .line 10
    invoke-virtual {p0}, Lg4;->u()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onPostResume()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf3;->p()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lg4;

    .line 9
    .line 10
    invoke-virtual {p0}, Lg4;->y()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lg4;->n:Lo70;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lo70;->t:Z

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf3;->s:Lo0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo0;->u()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Ldb;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf3;->s:Lo0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo0;->u()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lf3;->v:Z

    .line 11
    .line 12
    iget-object p0, v0, Lo0;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lcj;

    .line 15
    .line 16
    iget-object p0, p0, Lcj;->H:Lqj;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lpj;->y(Z)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf3;->q()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lg4;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Lg4;->l(ZZ)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onStateNotSaved()V
    .locals 0

    .line 1
    iget-object p0, p0, Lf3;->s:Lo0;

    .line 2
    .line 3
    invoke-virtual {p0}, Lo0;->u()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf3;->r()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lg4;

    .line 9
    .line 10
    invoke-virtual {p0}, Lg4;->y()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lg4;->n:Lo70;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lo70;->t:Z

    .line 19
    .line 20
    iget-object p0, p0, Lo70;->s:Ln60;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Ln60;->a()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Ls3;->j(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final openOptionsMenu()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lg4;

    .line 6
    .line 7
    invoke-virtual {v0}, Lg4;->y()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf3;->t:Ltn;

    .line 5
    .line 6
    sget-object v1, Lon;->ON_RESUME:Lon;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ltn;->d(Lon;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lf3;->s:Lo0;

    .line 12
    .line 13
    iget-object p0, p0, Lo0;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lcj;

    .line 16
    .line 17
    iget-object p0, p0, Lcj;->H:Lqj;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lpj;->E:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lpj;->F:Z

    .line 23
    .line 24
    iget-object v1, p0, Lpj;->L:Ltj;

    .line 25
    .line 26
    iput-boolean v0, v1, Ltj;->g:Z

    .line 27
    .line 28
    const/4 v0, 0x7

    .line 29
    invoke-virtual {p0, v0}, Lpj;->t(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf3;->s:Lo0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo0;->u()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lo0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcj;

    .line 9
    .line 10
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lf3;->w:Z

    .line 15
    .line 16
    iget-boolean v2, p0, Lf3;->u:Z

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iput-boolean v3, p0, Lf3;->u:Z

    .line 22
    .line 23
    iget-object v2, v0, Lcj;->H:Lqj;

    .line 24
    .line 25
    iput-boolean v1, v2, Lpj;->E:Z

    .line 26
    .line 27
    iput-boolean v1, v2, Lpj;->F:Z

    .line 28
    .line 29
    iget-object v4, v2, Lpj;->L:Ltj;

    .line 30
    .line 31
    iput-boolean v1, v4, Ltj;->g:Z

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    invoke-virtual {v2, v4}, Lpj;->t(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v2, v0, Lcj;->H:Lqj;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lpj;->y(Z)Z

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lf3;->t:Ltn;

    .line 43
    .line 44
    sget-object v2, Lon;->ON_START:Lon;

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Ltn;->d(Lon;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, v0, Lcj;->H:Lqj;

    .line 50
    .line 51
    iput-boolean v1, p0, Lpj;->E:Z

    .line 52
    .line 53
    iput-boolean v1, p0, Lpj;->F:Z

    .line 54
    .line 55
    iget-object v0, p0, Lpj;->L:Ltj;

    .line 56
    .line 57
    iput-boolean v1, v0, Ltj;->g:Z

    .line 58
    .line 59
    const/4 v0, 0x5

    .line 60
    invoke-virtual {p0, v0}, Lpj;->t(I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lf3;->w:Z

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lf3;->s:Lo0;

    .line 8
    .line 9
    iget-object v2, v1, Lo0;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lcj;

    .line 12
    .line 13
    iget-object v2, v2, Lcj;->H:Lqj;

    .line 14
    .line 15
    invoke-static {v2}, Lf3;->m(Lpj;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget-object v1, v1, Lo0;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lcj;

    .line 24
    .line 25
    iget-object v1, v1, Lcj;->H:Lqj;

    .line 26
    .line 27
    iput-boolean v0, v1, Lpj;->F:Z

    .line 28
    .line 29
    iget-object v2, v1, Lpj;->L:Ltj;

    .line 30
    .line 31
    iput-boolean v0, v2, Ltj;->g:Z

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    invoke-virtual {v1, v0}, Lpj;->t(I)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lf3;->t:Ltn;

    .line 38
    .line 39
    sget-object v0, Lon;->ON_STOP:Lon;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ltn;->d(Lon;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf3;->l()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Ls3;->f(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 12
    invoke-virtual {p0}, Lf3;->l()V

    .line 13
    invoke-virtual {p0}, Lf3;->k()Ls3;

    move-result-object p0

    invoke-virtual {p0, p1}, Ls3;->g(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lf3;->l()V

    .line 15
    invoke-virtual {p0}, Lf3;->k()Ls3;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ls3;->i(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTheme(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf3;->k()Ls3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lg4;

    .line 9
    .line 10
    iput p1, p0, Lg4;->S:I

    .line 11
    .line 12
    return-void
.end method
