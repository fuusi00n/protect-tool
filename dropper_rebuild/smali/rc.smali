.class public final Lrc;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public a:Loc;

.field public b:Z

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Z

.field public n:Z

.field public final o:Landroid/graphics/Rect;

.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x2

    .line 257
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lrc;->b:Z

    .line 259
    iput v0, p0, Lrc;->c:I

    .line 260
    iput v0, p0, Lrc;->d:I

    const/4 v1, -0x1

    .line 261
    iput v1, p0, Lrc;->e:I

    .line 262
    iput v1, p0, Lrc;->f:I

    .line 263
    iput v0, p0, Lrc;->g:I

    .line 264
    iput v0, p0, Lrc;->h:I

    .line 265
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lrc;->o:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lrc;->b:Z

    .line 6
    .line 7
    iput v0, p0, Lrc;->c:I

    .line 8
    .line 9
    iput v0, p0, Lrc;->d:I

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lrc;->e:I

    .line 13
    .line 14
    iput v1, p0, Lrc;->f:I

    .line 15
    .line 16
    iput v0, p0, Lrc;->g:I

    .line 17
    .line 18
    iput v0, p0, Lrc;->h:I

    .line 19
    .line 20
    new-instance v2, Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lrc;->o:Landroid/graphics/Rect;

    .line 26
    .line 27
    sget-object v2, Lcw;->CoordinatorLayout_Layout:[I

    .line 28
    .line 29
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    sget v3, Lcw;->CoordinatorLayout_Layout_android_layout_gravity:I

    .line 34
    .line 35
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iput v3, p0, Lrc;->c:I

    .line 40
    .line 41
    sget v3, Lcw;->CoordinatorLayout_Layout_layout_anchor:I

    .line 42
    .line 43
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iput v3, p0, Lrc;->f:I

    .line 48
    .line 49
    sget v3, Lcw;->CoordinatorLayout_Layout_layout_anchorGravity:I

    .line 50
    .line 51
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iput v3, p0, Lrc;->d:I

    .line 56
    .line 57
    sget v3, Lcw;->CoordinatorLayout_Layout_layout_keyline:I

    .line 58
    .line 59
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iput v1, p0, Lrc;->e:I

    .line 64
    .line 65
    sget v1, Lcw;->CoordinatorLayout_Layout_layout_insetEdge:I

    .line 66
    .line 67
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput v1, p0, Lrc;->g:I

    .line 72
    .line 73
    sget v1, Lcw;->CoordinatorLayout_Layout_layout_dodgeInsetEdges:I

    .line 74
    .line 75
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iput v1, p0, Lrc;->h:I

    .line 80
    .line 81
    sget v1, Lcw;->CoordinatorLayout_Layout_layout_behavior:I

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iput-boolean v1, p0, Lrc;->b:Z

    .line 88
    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    sget v1, Lcw;->CoordinatorLayout_Layout_layout_behavior:I

    .line 92
    .line 93
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    sget-object v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_0

    .line 104
    .line 105
    const/4 p1, 0x0

    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_0
    const-string v3, "."

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_1

    .line 115
    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    goto :goto_0

    .line 136
    :cond_1
    const/16 v3, 0x2e

    .line 137
    .line 138
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-ltz v4, :cond_2

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_2
    sget-object v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Ljava/lang/String;

    .line 146
    .line 147
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-nez v5, :cond_3

    .line 152
    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    :cond_3
    :goto_0
    :try_start_0
    sget-object v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Ljava/lang/ThreadLocal;

    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    check-cast v4, Ljava/util/Map;

    .line 178
    .line 179
    if-nez v4, :cond_4

    .line 180
    .line 181
    new-instance v4, Ljava/util/HashMap;

    .line 182
    .line 183
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :catch_0
    move-exception p0

    .line 191
    goto :goto_3

    .line 192
    :cond_4
    :goto_1
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    check-cast v3, Ljava/lang/reflect/Constructor;

    .line 197
    .line 198
    if-nez v3, :cond_5

    .line 199
    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-static {v1, v0, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    sget-object v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:[Ljava/lang/Class;

    .line 209
    .line 210
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    const/4 v0, 0x1

    .line 215
    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    :cond_5
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Loc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 231
    :goto_2
    iput-object p1, p0, Lrc;->a:Loc;

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :goto_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 235
    .line 236
    const-string p2, "Could not inflate Behavior subclass "

    .line 237
    .line 238
    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    .line 244
    .line 245
    throw p1

    .line 246
    :cond_6
    :goto_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lrc;->a:Loc;

    .line 250
    .line 251
    if-eqz p1, :cond_7

    .line 252
    .line 253
    invoke-virtual {p1, p0}, Loc;->c(Lrc;)V

    .line 254
    .line 255
    .line 256
    :cond_7
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 284
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 285
    iput-boolean p1, p0, Lrc;->b:Z

    .line 286
    iput p1, p0, Lrc;->c:I

    .line 287
    iput p1, p0, Lrc;->d:I

    const/4 v0, -0x1

    .line 288
    iput v0, p0, Lrc;->e:I

    .line 289
    iput v0, p0, Lrc;->f:I

    .line 290
    iput p1, p0, Lrc;->g:I

    .line 291
    iput p1, p0, Lrc;->h:I

    .line 292
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lrc;->o:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 275
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 276
    iput-boolean p1, p0, Lrc;->b:Z

    .line 277
    iput p1, p0, Lrc;->c:I

    .line 278
    iput p1, p0, Lrc;->d:I

    const/4 v0, -0x1

    .line 279
    iput v0, p0, Lrc;->e:I

    .line 280
    iput v0, p0, Lrc;->f:I

    .line 281
    iput p1, p0, Lrc;->g:I

    .line 282
    iput p1, p0, Lrc;->h:I

    .line 283
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lrc;->o:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lrc;)V
    .locals 1

    .line 266
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 267
    iput-boolean p1, p0, Lrc;->b:Z

    .line 268
    iput p1, p0, Lrc;->c:I

    .line 269
    iput p1, p0, Lrc;->d:I

    const/4 v0, -0x1

    .line 270
    iput v0, p0, Lrc;->e:I

    .line 271
    iput v0, p0, Lrc;->f:I

    .line 272
    iput p1, p0, Lrc;->g:I

    .line 273
    iput p1, p0, Lrc;->h:I

    .line 274
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lrc;->o:Landroid/graphics/Rect;

    return-void
.end method

.method public final a(I)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    iget-boolean p0, p0, Lrc;->n:Z

    .line 9
    .line 10
    return p0

    .line 11
    :cond_1
    iget-boolean p0, p0, Lrc;->m:Z

    .line 12
    .line 13
    return p0
.end method
