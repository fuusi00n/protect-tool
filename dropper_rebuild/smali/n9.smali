.class public final Ln9;
.super Lag;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public b:F

.field public c:F

.field public d:F

.field public e:Z

.field public f:F

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0}, Ln9;->i()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    div-float/2addr v0, v1

    .line 12
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    invoke-virtual {p0}, Ln9;->i()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    div-float/2addr v1, v2

    .line 23
    iget-object v2, p0, Lag;->a:Lf7;

    .line 24
    .line 25
    check-cast v2, Lq9;

    .line 26
    .line 27
    iget v3, v2, Lq9;->h:I

    .line 28
    .line 29
    int-to-float v3, v3

    .line 30
    const/high16 v4, 0x40000000

    .line 31
    .line 32
    div-float/2addr v3, v4

    .line 33
    iget v5, v2, Lq9;->i:I

    .line 34
    .line 35
    int-to-float v5, v5

    .line 36
    add-float/2addr v3, v5

    .line 37
    mul-float v5, v3, v0

    .line 38
    .line 39
    mul-float v6, v3, v1

    .line 40
    .line 41
    iget v7, p2, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    int-to-float v7, v7

    .line 44
    add-float/2addr v5, v7

    .line 45
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 46
    .line 47
    int-to-float p2, p2

    .line 48
    add-float/2addr v6, p2

    .line 49
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    .line 51
    .line 52
    const/high16 p2, -0x3d4c0000

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 58
    .line 59
    .line 60
    iget p2, v2, Lq9;->j:I

    .line 61
    .line 62
    const/high16 v0, 0x3f800000

    .line 63
    .line 64
    if-eqz p2, :cond_0

    .line 65
    .line 66
    const/high16 p2, -0x40800000

    .line 67
    .line 68
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 69
    .line 70
    .line 71
    :cond_0
    neg-float p2, v3

    .line 72
    invoke-virtual {p1, p2, p2, v3, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 73
    .line 74
    .line 75
    iget p1, v2, Lf7;->a:I

    .line 76
    .line 77
    div-int/lit8 p2, p1, 0x2

    .line 78
    .line 79
    iget v1, v2, Lf7;->b:I

    .line 80
    .line 81
    const/4 v3, 0x1

    .line 82
    if-gt p2, v1, :cond_1

    .line 83
    .line 84
    move p2, v3

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const/4 p2, 0x0

    .line 87
    :goto_0
    iput-boolean p2, p0, Ln9;->e:Z

    .line 88
    .line 89
    int-to-float p2, p1

    .line 90
    mul-float/2addr p2, p3

    .line 91
    iput p2, p0, Ln9;->b:F

    .line 92
    .line 93
    const/4 p2, 0x2

    .line 94
    div-int/2addr p1, p2

    .line 95
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    int-to-float p1, p1

    .line 100
    mul-float/2addr p1, p3

    .line 101
    iput p1, p0, Ln9;->c:F

    .line 102
    .line 103
    iget p1, v2, Lq9;->h:I

    .line 104
    .line 105
    iget v1, v2, Lf7;->a:I

    .line 106
    .line 107
    sub-int/2addr p1, v1

    .line 108
    int-to-float p1, p1

    .line 109
    div-float/2addr p1, v4

    .line 110
    iput p1, p0, Ln9;->d:F

    .line 111
    .line 112
    if-nez p4, :cond_2

    .line 113
    .line 114
    if-eqz p5, :cond_8

    .line 115
    .line 116
    :cond_2
    if-eqz p4, :cond_3

    .line 117
    .line 118
    iget v5, v2, Lf7;->e:I

    .line 119
    .line 120
    if-eq v5, p2, :cond_4

    .line 121
    .line 122
    :cond_3
    if-eqz p5, :cond_5

    .line 123
    .line 124
    iget v5, v2, Lf7;->f:I

    .line 125
    .line 126
    if-ne v5, v3, :cond_5

    .line 127
    .line 128
    :cond_4
    sub-float p2, v0, p3

    .line 129
    .line 130
    int-to-float p4, v1

    .line 131
    mul-float/2addr p2, p4

    .line 132
    div-float/2addr p2, v4

    .line 133
    add-float/2addr p2, p1

    .line 134
    iput p2, p0, Ln9;->d:F

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    if-eqz p4, :cond_6

    .line 138
    .line 139
    iget p4, v2, Lf7;->e:I

    .line 140
    .line 141
    if-eq p4, v3, :cond_7

    .line 142
    .line 143
    :cond_6
    if-eqz p5, :cond_8

    .line 144
    .line 145
    iget p4, v2, Lf7;->f:I

    .line 146
    .line 147
    if-ne p4, p2, :cond_8

    .line 148
    .line 149
    :cond_7
    sub-float p2, v0, p3

    .line 150
    .line 151
    int-to-float p4, v1

    .line 152
    mul-float/2addr p2, p4

    .line 153
    div-float/2addr p2, v4

    .line 154
    sub-float/2addr p1, p2

    .line 155
    iput p1, p0, Ln9;->d:F

    .line 156
    .line 157
    :cond_8
    :goto_1
    if-eqz p5, :cond_9

    .line 158
    .line 159
    iget p1, v2, Lf7;->f:I

    .line 160
    .line 161
    const/4 p2, 0x3

    .line 162
    if-ne p1, p2, :cond_9

    .line 163
    .line 164
    iput p3, p0, Ln9;->f:F

    .line 165
    .line 166
    return-void

    .line 167
    :cond_9
    iput v0, p0, Ln9;->f:F

    .line 168
    .line 169
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lzf;I)V
    .locals 9

    .line 1
    iget v0, p3, Lzf;->c:I

    .line 2
    .line 3
    invoke-static {v0, p4}, Lvd;->j(II)I

    .line 4
    .line 5
    .line 6
    move-result v6

    .line 7
    iget v4, p3, Lzf;->a:F

    .line 8
    .line 9
    iget v5, p3, Lzf;->b:F

    .line 10
    .line 11
    iget v7, p3, Lzf;->d:I

    .line 12
    .line 13
    move v8, v7

    .line 14
    move-object v1, p0

    .line 15
    move-object v2, p1

    .line 16
    move-object v3, p2

    .line 17
    invoke-virtual/range {v1 .. v8}, Ln9;->g(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V
    .locals 0

    .line 1
    invoke-static {p5, p6}, Lvd;->j(II)I

    .line 2
    .line 3
    .line 4
    move-result p5

    .line 5
    move p6, p7

    .line 6
    invoke-virtual/range {p0 .. p7}, Ln9;->g(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final e()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln9;->i()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final f()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln9;->i()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final g(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V
    .locals 12

    .line 1
    cmpl-float v1, p4, p3

    .line 2
    .line 3
    const/high16 v2, 0x3f800000

    .line 4
    .line 5
    if-ltz v1, :cond_0

    .line 6
    .line 7
    sub-float v1, p4, p3

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    add-float v1, p4, v2

    .line 11
    .line 12
    sub-float/2addr v1, p3

    .line 13
    :goto_0
    rem-float v3, p3, v2

    .line 14
    .line 15
    iget v4, p0, Ln9;->f:F

    .line 16
    .line 17
    cmpg-float v4, v4, v2

    .line 18
    .line 19
    if-gez v4, :cond_1

    .line 20
    .line 21
    add-float v8, v3, v1

    .line 22
    .line 23
    cmpl-float v4, v8, v2

    .line 24
    .line 25
    if-lez v4, :cond_1

    .line 26
    .line 27
    const/high16 v4, 0x3f800000

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    move-object v0, p0

    .line 31
    move-object v1, p1

    .line 32
    move-object v2, p2

    .line 33
    move/from16 v5, p5

    .line 34
    .line 35
    move/from16 v6, p6

    .line 36
    .line 37
    invoke-virtual/range {v0 .. v7}, Ln9;->g(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 38
    .line 39
    .line 40
    const/high16 v3, 0x3f800000

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    move/from16 v7, p7

    .line 44
    .line 45
    move v4, v8

    .line 46
    invoke-virtual/range {v0 .. v7}, Ln9;->g(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget v4, p0, Ln9;->c:F

    .line 51
    .line 52
    iget v6, p0, Ln9;->d:F

    .line 53
    .line 54
    div-float/2addr v4, v6

    .line 55
    float-to-double v6, v4

    .line 56
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    .line 57
    .line 58
    .line 59
    move-result-wide v6

    .line 60
    double-to-float v7, v6

    .line 61
    const/4 v6, 0x0

    .line 62
    cmpl-float v4, v3, v6

    .line 63
    .line 64
    const/high16 v8, 0x43b40000

    .line 65
    .line 66
    const/high16 v9, 0x40000000

    .line 67
    .line 68
    if-nez v4, :cond_2

    .line 69
    .line 70
    const v4, 0x3f7d70a4

    .line 71
    .line 72
    .line 73
    cmpl-float v10, v1, v4

    .line 74
    .line 75
    if-ltz v10, :cond_2

    .line 76
    .line 77
    sub-float v4, v1, v4

    .line 78
    .line 79
    mul-float v10, v7, v9

    .line 80
    .line 81
    div-float/2addr v10, v8

    .line 82
    mul-float/2addr v10, v4

    .line 83
    const v4, 0x3c23d70a

    .line 84
    .line 85
    .line 86
    div-float/2addr v10, v4

    .line 87
    add-float/2addr v1, v10

    .line 88
    :cond_2
    iget v4, p0, Ln9;->f:F

    .line 89
    .line 90
    sub-float v4, v2, v4

    .line 91
    .line 92
    invoke-static {v4, v2, v3}, Lvd;->E(FFF)F

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    iget v3, p0, Ln9;->f:F

    .line 97
    .line 98
    invoke-static {v6, v3, v1}, Lvd;->E(FFF)F

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    move/from16 v3, p6

    .line 103
    .line 104
    int-to-float v3, v3

    .line 105
    iget v4, p0, Ln9;->d:F

    .line 106
    .line 107
    div-float/2addr v3, v4

    .line 108
    float-to-double v3, v3

    .line 109
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    double-to-float v3, v3

    .line 114
    move/from16 v4, p7

    .line 115
    .line 116
    int-to-float v4, v4

    .line 117
    iget v10, p0, Ln9;->d:F

    .line 118
    .line 119
    div-float/2addr v4, v10

    .line 120
    float-to-double v10, v4

    .line 121
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    .line 122
    .line 123
    .line 124
    move-result-wide v10

    .line 125
    double-to-float v4, v10

    .line 126
    mul-float/2addr v1, v8

    .line 127
    sub-float/2addr v1, v3

    .line 128
    sub-float v10, v1, v4

    .line 129
    .line 130
    mul-float/2addr v2, v8

    .line 131
    add-float v8, v2, v3

    .line 132
    .line 133
    cmpg-float v1, v10, v6

    .line 134
    .line 135
    if-gtz v1, :cond_3

    .line 136
    .line 137
    goto/16 :goto_2

    .line 138
    .line 139
    :cond_3
    const/4 v1, 0x1

    .line 140
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    .line 142
    .line 143
    move/from16 v1, p5

    .line 144
    .line 145
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    .line 147
    .line 148
    iget v1, p0, Ln9;->b:F

    .line 149
    .line 150
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    .line 152
    .line 153
    mul-float v1, v7, v9

    .line 154
    .line 155
    cmpg-float v2, v10, v1

    .line 156
    .line 157
    if-gez v2, :cond_4

    .line 158
    .line 159
    div-float v6, v10, v1

    .line 160
    .line 161
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 162
    .line 163
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    .line 165
    .line 166
    mul-float/2addr v7, v6

    .line 167
    add-float v3, v7, v8

    .line 168
    .line 169
    iget v1, p0, Ln9;->c:F

    .line 170
    .line 171
    mul-float v4, v1, v9

    .line 172
    .line 173
    iget v5, p0, Ln9;->b:F

    .line 174
    .line 175
    move-object v0, p0

    .line 176
    move-object v1, p1

    .line 177
    move-object v2, p2

    .line 178
    invoke-virtual/range {v0 .. v6}, Ln9;->h(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFF)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_4
    move v0, v1

    .line 183
    new-instance v1, Landroid/graphics/RectF;

    .line 184
    .line 185
    iget v3, p0, Ln9;->d:F

    .line 186
    .line 187
    neg-float v4, v3

    .line 188
    invoke-direct {v1, v4, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 189
    .line 190
    .line 191
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 192
    .line 193
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    .line 195
    .line 196
    iget-boolean v3, p0, Ln9;->e:Z

    .line 197
    .line 198
    if-eqz v3, :cond_5

    .line 199
    .line 200
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_5
    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 204
    .line 205
    :goto_1
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 206
    .line 207
    .line 208
    add-float v3, v8, v7

    .line 209
    .line 210
    sub-float v0, v10, v0

    .line 211
    .line 212
    const/4 v4, 0x0

    .line 213
    move-object v5, p2

    .line 214
    move v2, v3

    .line 215
    move v3, v0

    .line 216
    move-object v0, p1

    .line 217
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 218
    .line 219
    .line 220
    move v3, v2

    .line 221
    iget-boolean v0, p0, Ln9;->e:Z

    .line 222
    .line 223
    if-nez v0, :cond_6

    .line 224
    .line 225
    iget v0, p0, Ln9;->c:F

    .line 226
    .line 227
    cmpl-float v0, v0, v6

    .line 228
    .line 229
    if-lez v0, :cond_6

    .line 230
    .line 231
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 232
    .line 233
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 234
    .line 235
    .line 236
    iget v0, p0, Ln9;->c:F

    .line 237
    .line 238
    mul-float v4, v0, v9

    .line 239
    .line 240
    iget v5, p0, Ln9;->b:F

    .line 241
    .line 242
    const/high16 v6, 0x3f800000

    .line 243
    .line 244
    move-object v0, p0

    .line 245
    move-object v1, p1

    .line 246
    move-object v2, p2

    .line 247
    invoke-virtual/range {v0 .. v6}, Ln9;->h(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFF)V

    .line 248
    .line 249
    .line 250
    add-float/2addr v8, v10

    .line 251
    sub-float v3, v8, v7

    .line 252
    .line 253
    iget v1, p0, Ln9;->c:F

    .line 254
    .line 255
    mul-float v4, v1, v9

    .line 256
    .line 257
    iget v5, p0, Ln9;->b:F

    .line 258
    .line 259
    move-object v1, p1

    .line 260
    invoke-virtual/range {v0 .. v6}, Ln9;->h(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFF)V

    .line 261
    .line 262
    .line 263
    :cond_6
    :goto_2
    return-void
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFF)V
    .locals 6

    .line 1
    iget v0, p0, Ln9;->b:F

    .line 2
    .line 3
    invoke-static {p5, v0}, Ljava/lang/Math;->min(FF)F

    .line 4
    .line 5
    .line 6
    move-result p5

    .line 7
    float-to-int p5, p5

    .line 8
    int-to-float p5, p5

    .line 9
    iget v0, p0, Ln9;->c:F

    .line 10
    .line 11
    mul-float/2addr v0, p5

    .line 12
    iget v1, p0, Ln9;->b:F

    .line 13
    .line 14
    div-float/2addr v0, v1

    .line 15
    const/high16 v1, 0x40000000

    .line 16
    .line 17
    div-float v2, p4, v1

    .line 18
    .line 19
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    new-instance v3, Landroid/graphics/RectF;

    .line 24
    .line 25
    neg-float v4, p5

    .line 26
    div-float/2addr v4, v1

    .line 27
    neg-float p4, p4

    .line 28
    div-float/2addr p4, v1

    .line 29
    div-float/2addr p5, v1

    .line 30
    invoke-direct {v3, v4, p4, p5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 34
    .line 35
    .line 36
    iget p4, p0, Ln9;->d:F

    .line 37
    .line 38
    float-to-double p4, p4

    .line 39
    float-to-double v1, p3

    .line 40
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    mul-double/2addr v4, p4

    .line 49
    double-to-float p4, v4

    .line 50
    iget p0, p0, Ln9;->d:F

    .line 51
    .line 52
    float-to-double v4, p0

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    mul-double/2addr v1, v4

    .line 62
    double-to-float p0, v1

    .line 63
    invoke-virtual {p1, p4, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v3, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final i()I
    .locals 1

    .line 1
    iget-object p0, p0, Lag;->a:Lf7;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lq9;

    .line 5
    .line 6
    iget v0, v0, Lq9;->h:I

    .line 7
    .line 8
    check-cast p0, Lq9;

    .line 9
    .line 10
    iget p0, p0, Lq9;->i:I

    .line 11
    .line 12
    mul-int/lit8 p0, p0, 0x2

    .line 13
    .line 14
    add-int/2addr p0, v0

    .line 15
    return p0
.end method
