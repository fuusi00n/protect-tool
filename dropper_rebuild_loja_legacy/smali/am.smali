.class public final Lam;
.super Lyf;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public final l:Lag;

.field public m:Ld4;

.field public n:Lw40;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf7;Lag;Ld4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lyf;-><init>(Landroid/content/Context;Lf7;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lam;->l:Lag;

    .line 5
    .line 6
    iput-object p4, p0, Lam;->m:Ld4;

    .line 7
    .line 8
    iput-object p0, p4, Ld4;->a:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d(ZZZ)Z
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lyf;->d(ZZZ)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lyf;->c:Lb3;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lyf;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "animator_duration_scale"

    .line 16
    .line 17
    const/high16 v3, 0x3f800000    # 1.0f

    .line 18
    .line 19
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    cmpl-float v1, v1, v2

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lam;->n:Lw40;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1, p1, p2}, Lw40;->setVisible(ZZ)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lyf;->isRunning()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    iget-object p2, p0, Lam;->m:Ld4;

    .line 44
    .line 45
    invoke-virtual {p2}, Ld4;->c()V

    .line 46
    .line 47
    .line 48
    :cond_1
    if-eqz p1, :cond_3

    .line 49
    .line 50
    if-nez p3, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object p0, p0, Lam;->m:Ld4;

    .line 54
    .line 55
    invoke-virtual {p0}, Ld4;->o()V

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_0
    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13

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
    if-nez v3, :cond_a

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_a

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
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_0
    iget-object v1, p0, Lyf;->c:Lb3;

    .line 31
    .line 32
    const/high16 v7, 0x3f800000    # 1.0f

    .line 33
    .line 34
    const/4 v9, 0x0

    .line 35
    iget-object v10, p0, Lyf;->b:Lf7;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lyf;->a:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v3, "animator_duration_scale"

    .line 46
    .line 47
    invoke-static {v1, v3, v7}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v3, 0x0

    .line 52
    cmpl-float v1, v1, v3

    .line 53
    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lam;->n:Lw40;

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lam;->n:Lw40;

    .line 68
    .line 69
    iget-object v3, v10, Lf7;->c:[I

    .line 70
    .line 71
    aget v3, v3, v9

    .line 72
    .line 73
    invoke-static {v1, v3}, Lqf;->g(Landroid/graphics/drawable/Drawable;I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lam;->n:Lw40;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lw40;->draw(Landroid/graphics/Canvas;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {p0}, Lyf;->b()F

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    iget-object v1, p0, Lyf;->d:Landroid/animation/ObjectAnimator;

    .line 94
    .line 95
    const/4 v8, 0x1

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_2

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    move v5, v8

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    :goto_0
    move v5, v9

    .line 108
    :goto_1
    iget-object v1, p0, Lyf;->e:Landroid/animation/ObjectAnimator;

    .line 109
    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_4

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    move v6, v8

    .line 120
    goto :goto_3

    .line 121
    :cond_5
    :goto_2
    move v6, v9

    .line 122
    :goto_3
    iget-object v1, p0, Lam;->l:Lag;

    .line 123
    .line 124
    iget-object v11, v1, Lag;->a:Lf7;

    .line 125
    .line 126
    invoke-virtual {v11}, Lf7;->a()V

    .line 127
    .line 128
    .line 129
    move-object v2, p1

    .line 130
    invoke-virtual/range {v1 .. v6}, Lag;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    .line 131
    .line 132
    .line 133
    iget v11, v10, Lf7;->g:I

    .line 134
    .line 135
    move v1, v7

    .line 136
    iget v7, p0, Lyf;->j:I

    .line 137
    .line 138
    iget-object v3, p0, Lyf;->i:Landroid/graphics/Paint;

    .line 139
    .line 140
    if-nez v11, :cond_6

    .line 141
    .line 142
    iget v6, v10, Lf7;->d:I

    .line 143
    .line 144
    const/4 v8, 0x0

    .line 145
    iget-object v1, p0, Lam;->l:Lag;

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    const/high16 v5, 0x3f800000    # 1.0f

    .line 149
    .line 150
    move-object v2, p1

    .line 151
    invoke-virtual/range {v1 .. v8}, Lag;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 152
    .line 153
    .line 154
    move v8, v11

    .line 155
    goto :goto_4

    .line 156
    :cond_6
    iget-object v2, p0, Lam;->m:Ld4;

    .line 157
    .line 158
    iget-object v2, v2, Ld4;->b:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v2, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Lzf;

    .line 167
    .line 168
    iget-object v4, p0, Lam;->m:Ld4;

    .line 169
    .line 170
    iget-object v4, v4, Ld4;->b:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v4, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    sub-int/2addr v5, v8

    .line 179
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    move-object v12, v4

    .line 184
    check-cast v12, Lzf;

    .line 185
    .line 186
    move v4, v1

    .line 187
    iget-object v1, p0, Lam;->l:Lag;

    .line 188
    .line 189
    instance-of v5, v1, Lxn;

    .line 190
    .line 191
    if-eqz v5, :cond_7

    .line 192
    .line 193
    iget v5, v2, Lzf;->a:F

    .line 194
    .line 195
    iget v6, v10, Lf7;->d:I

    .line 196
    .line 197
    const/4 v4, 0x0

    .line 198
    move-object v2, p1

    .line 199
    move v8, v11

    .line 200
    invoke-virtual/range {v1 .. v8}, Lag;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 201
    .line 202
    .line 203
    iget v4, v12, Lzf;->b:F

    .line 204
    .line 205
    const/high16 v5, 0x3f800000    # 1.0f

    .line 206
    .line 207
    iget v6, v10, Lf7;->d:I

    .line 208
    .line 209
    iget-object v1, p0, Lam;->l:Lag;

    .line 210
    .line 211
    invoke-virtual/range {v1 .. v8}, Lag;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_7
    move v8, v11

    .line 216
    iget v5, v12, Lzf;->b:F

    .line 217
    .line 218
    iget v2, v2, Lzf;->a:F

    .line 219
    .line 220
    add-float/2addr v2, v4

    .line 221
    iget v6, v10, Lf7;->d:I

    .line 222
    .line 223
    const/4 v7, 0x0

    .line 224
    move v4, v5

    .line 225
    move v5, v2

    .line 226
    move-object v2, p1

    .line 227
    invoke-virtual/range {v1 .. v8}, Lag;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 228
    .line 229
    .line 230
    :goto_4
    iget-object v1, p0, Lam;->m:Ld4;

    .line 231
    .line 232
    iget-object v1, v1, Ld4;->b:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v1, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-ge v9, v1, :cond_9

    .line 241
    .line 242
    iget-object v1, p0, Lam;->m:Ld4;

    .line 243
    .line 244
    iget-object v1, v1, Ld4;->b:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v1, Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    check-cast v1, Lzf;

    .line 253
    .line 254
    iget-object v4, p0, Lam;->l:Lag;

    .line 255
    .line 256
    iget v5, p0, Lyf;->j:I

    .line 257
    .line 258
    invoke-virtual {v4, p1, v3, v1, v5}, Lag;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lzf;I)V

    .line 259
    .line 260
    .line 261
    if-lez v9, :cond_8

    .line 262
    .line 263
    if-lez v8, :cond_8

    .line 264
    .line 265
    iget-object v4, p0, Lam;->m:Ld4;

    .line 266
    .line 267
    iget-object v4, v4, Ld4;->b:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v4, Ljava/util/ArrayList;

    .line 270
    .line 271
    add-int/lit8 v5, v9, -0x1

    .line 272
    .line 273
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    check-cast v4, Lzf;

    .line 278
    .line 279
    iget v4, v4, Lzf;->b:F

    .line 280
    .line 281
    iget v5, v1, Lzf;->a:F

    .line 282
    .line 283
    iget v6, v10, Lf7;->d:I

    .line 284
    .line 285
    iget-object v1, p0, Lam;->l:Lag;

    .line 286
    .line 287
    move-object v2, p1

    .line 288
    invoke-virtual/range {v1 .. v8}, Lag;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 289
    .line 290
    .line 291
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 295
    .line 296
    .line 297
    :cond_a
    :goto_5
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lam;->l:Lag;

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
    iget-object p0, p0, Lam;->l:Lag;

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
