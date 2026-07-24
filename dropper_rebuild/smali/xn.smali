.class public final Lxn;
.super Lag;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:Z

.field public f:F


# virtual methods
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
    iput v0, p0, Lxn;->b:F

    .line 7
    .line 8
    iget-object v0, p0, Lag;->a:Lf7;

    .line 9
    .line 10
    check-cast v0, Lio;

    .line 11
    .line 12
    iget v1, v0, Lf7;->a:I

    .line 13
    .line 14
    int-to-float v1, v1

    .line 15
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    int-to-float v2, v2

    .line 18
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    int-to-float v3, v3

    .line 23
    const/high16 v4, 0x40000000    # 2.0f

    .line 24
    .line 25
    div-float/2addr v3, v4

    .line 26
    add-float/2addr v3, v2

    .line 27
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 28
    .line 29
    int-to-float v2, v2

    .line 30
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    int-to-float v5, v5

    .line 35
    div-float/2addr v5, v4

    .line 36
    add-float/2addr v5, v2

    .line 37
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    int-to-float p2, p2

    .line 42
    sub-float/2addr p2, v1

    .line 43
    div-float/2addr p2, v4

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    add-float/2addr p2, v5

    .line 50
    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    .line 52
    .line 53
    iget-boolean p2, v0, Lio;->j:Z

    .line 54
    .line 55
    const/high16 v3, -0x40800000    # -1.0f

    .line 56
    .line 57
    const/high16 v5, 0x3f800000    # 1.0f

    .line 58
    .line 59
    if-eqz p2, :cond_0

    .line 60
    .line 61
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 62
    .line 63
    .line 64
    :cond_0
    iget p2, p0, Lxn;->b:F

    .line 65
    .line 66
    div-float/2addr p2, v4

    .line 67
    div-float/2addr v1, v4

    .line 68
    neg-float v6, p2

    .line 69
    neg-float v7, v1

    .line 70
    invoke-virtual {p1, v6, v7, p2, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 71
    .line 72
    .line 73
    iget p2, v0, Lf7;->a:I

    .line 74
    .line 75
    div-int/lit8 v1, p2, 0x2

    .line 76
    .line 77
    iget v6, v0, Lf7;->b:I

    .line 78
    .line 79
    const/4 v7, 0x1

    .line 80
    if-ne v1, v6, :cond_1

    .line 81
    .line 82
    move v1, v7

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 v1, 0x0

    .line 85
    :goto_0
    iput-boolean v1, p0, Lxn;->e:Z

    .line 86
    .line 87
    int-to-float v1, p2

    .line 88
    mul-float/2addr v1, p3

    .line 89
    iput v1, p0, Lxn;->c:F

    .line 90
    .line 91
    const/4 v1, 0x2

    .line 92
    div-int/2addr p2, v1

    .line 93
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    int-to-float p2, p2

    .line 98
    mul-float/2addr p2, p3

    .line 99
    iput p2, p0, Lxn;->d:F

    .line 100
    .line 101
    const/4 p2, 0x3

    .line 102
    if-nez p4, :cond_2

    .line 103
    .line 104
    if-eqz p5, :cond_7

    .line 105
    .line 106
    :cond_2
    if-eqz p4, :cond_3

    .line 107
    .line 108
    iget v6, v0, Lf7;->e:I

    .line 109
    .line 110
    if-eq v6, v1, :cond_4

    .line 111
    .line 112
    :cond_3
    if-eqz p5, :cond_5

    .line 113
    .line 114
    iget v1, v0, Lf7;->f:I

    .line 115
    .line 116
    if-ne v1, v7, :cond_5

    .line 117
    .line 118
    :cond_4
    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 119
    .line 120
    .line 121
    :cond_5
    if-nez p4, :cond_6

    .line 122
    .line 123
    if-eqz p5, :cond_7

    .line 124
    .line 125
    iget p4, v0, Lf7;->f:I

    .line 126
    .line 127
    if-eq p4, p2, :cond_7

    .line 128
    .line 129
    :cond_6
    iget p4, v0, Lf7;->a:I

    .line 130
    .line 131
    int-to-float p4, p4

    .line 132
    sub-float v1, v5, p3

    .line 133
    .line 134
    mul-float/2addr v1, p4

    .line 135
    div-float/2addr v1, v4

    .line 136
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 137
    .line 138
    .line 139
    :cond_7
    if-eqz p5, :cond_8

    .line 140
    .line 141
    iget p1, v0, Lf7;->f:I

    .line 142
    .line 143
    if-ne p1, p2, :cond_8

    .line 144
    .line 145
    iput p3, p0, Lxn;->f:F

    .line 146
    .line 147
    return-void

    .line 148
    :cond_8
    iput v5, p0, Lxn;->f:F

    .line 149
    .line 150
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 8

    .line 1
    invoke-static {p3, p4}, Lvd;->j(II)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    iget-object p4, p0, Lag;->a:Lf7;

    .line 6
    .line 7
    check-cast p4, Lio;

    .line 8
    .line 9
    iget v0, p4, Lio;->k:I

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Landroid/graphics/PointF;

    .line 24
    .line 25
    iget p3, p0, Lxn;->b:F

    .line 26
    .line 27
    const/high16 v0, 0x40000000    # 2.0f

    .line 28
    .line 29
    div-float/2addr p3, v0

    .line 30
    iget v1, p0, Lxn;->c:F

    .line 31
    .line 32
    div-float/2addr v1, v0

    .line 33
    sub-float/2addr p3, v1

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-direct {v4, p3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 36
    .line 37
    .line 38
    iget p3, p4, Lio;->k:I

    .line 39
    .line 40
    int-to-float v6, p3

    .line 41
    int-to-float v7, p3

    .line 42
    const/4 v5, 0x0

    .line 43
    move-object v1, p0

    .line 44
    move-object v2, p1

    .line 45
    move-object v3, p2

    .line 46
    invoke-virtual/range {v1 .. v7}, Lxn;->h(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/PointF;Landroid/graphics/PointF;FF)V

    .line 47
    .line 48
    .line 49
    :cond_0
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
    invoke-virtual/range {v1 .. v8}, Lxn;->g(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

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
    invoke-virtual/range {p0 .. p7}, Lxn;->g(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final e()I
    .locals 0

    .line 1
    iget-object p0, p0, Lag;->a:Lf7;

    .line 2
    .line 3
    check-cast p0, Lio;

    .line 4
    .line 5
    iget p0, p0, Lf7;->a:I

    .line 6
    .line 7
    return p0
.end method

.method public final f()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final g(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    invoke-static {p3, v0, v1}, Lnm;->k(FFF)F

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    move/from16 v2, p4

    .line 9
    .line 10
    invoke-static {v2, v0, v1}, Lnm;->k(FFF)F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget v3, p0, Lxn;->f:F

    .line 15
    .line 16
    sub-float v3, v1, v3

    .line 17
    .line 18
    invoke-static {v3, v1, p3}, Lvd;->E(FFF)F

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    iget v3, p0, Lxn;->f:F

    .line 23
    .line 24
    sub-float v3, v1, v3

    .line 25
    .line 26
    invoke-static {v3, v1, v2}, Lvd;->E(FFF)F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    move/from16 v3, p6

    .line 31
    .line 32
    int-to-float v3, v3

    .line 33
    const v4, 0x3c23d70a    # 0.01f

    .line 34
    .line 35
    .line 36
    invoke-static {p3, v0, v4}, Lnm;->k(FFF)F

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    mul-float/2addr v5, v3

    .line 41
    div-float/2addr v5, v4

    .line 42
    float-to-int v3, v5

    .line 43
    move/from16 v5, p7

    .line 44
    .line 45
    int-to-float v5, v5

    .line 46
    const v6, 0x3f7d70a4    # 0.99f

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v6, v1}, Lnm;->k(FFF)F

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    sub-float/2addr v1, v6

    .line 54
    mul-float/2addr v1, v5

    .line 55
    div-float/2addr v1, v4

    .line 56
    float-to-int v1, v1

    .line 57
    iget v4, p0, Lxn;->b:F

    .line 58
    .line 59
    mul-float/2addr p3, v4

    .line 60
    int-to-float v3, v3

    .line 61
    add-float/2addr p3, v3

    .line 62
    float-to-int p3, p3

    .line 63
    mul-float/2addr v2, v4

    .line 64
    int-to-float v1, v1

    .line 65
    sub-float/2addr v2, v1

    .line 66
    float-to-int v1, v2

    .line 67
    neg-float v2, v4

    .line 68
    const/high16 v3, 0x40000000    # 2.0f

    .line 69
    .line 70
    div-float/2addr v2, v3

    .line 71
    if-gt p3, v1, :cond_3

    .line 72
    .line 73
    int-to-float p3, p3

    .line 74
    iget v4, p0, Lxn;->d:F

    .line 75
    .line 76
    add-float/2addr p3, v4

    .line 77
    int-to-float v1, v1

    .line 78
    sub-float/2addr v1, v4

    .line 79
    mul-float v10, v4, v3

    .line 80
    .line 81
    move/from16 v3, p5

    .line 82
    .line 83
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    .line 89
    .line 90
    iget v3, p0, Lxn;->c:F

    .line 91
    .line 92
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    .line 94
    .line 95
    cmpl-float v3, p3, v1

    .line 96
    .line 97
    if-ltz v3, :cond_0

    .line 98
    .line 99
    new-instance v8, Landroid/graphics/PointF;

    .line 100
    .line 101
    add-float/2addr p3, v2

    .line 102
    invoke-direct {v8, p3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 103
    .line 104
    .line 105
    new-instance v9, Landroid/graphics/PointF;

    .line 106
    .line 107
    add-float/2addr v1, v2

    .line 108
    invoke-direct {v9, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 109
    .line 110
    .line 111
    iget v11, p0, Lxn;->c:F

    .line 112
    .line 113
    move-object v5, p0

    .line 114
    move-object v6, p1

    .line 115
    move-object v7, p2

    .line 116
    invoke-virtual/range {v5 .. v11}, Lxn;->h(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/PointF;Landroid/graphics/PointF;FF)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_0
    move v4, v10

    .line 121
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 122
    .line 123
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    .line 125
    .line 126
    iget-boolean v3, p0, Lxn;->e:Z

    .line 127
    .line 128
    if-eqz v3, :cond_1

    .line 129
    .line 130
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_1
    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 134
    .line 135
    :goto_0
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 136
    .line 137
    .line 138
    add-float v7, p3, v2

    .line 139
    .line 140
    add-float v9, v1, v2

    .line 141
    .line 142
    const/4 v10, 0x0

    .line 143
    const/4 v8, 0x0

    .line 144
    move-object v6, p1

    .line 145
    move-object v11, p2

    .line 146
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 147
    .line 148
    .line 149
    move v2, v7

    .line 150
    move v3, v9

    .line 151
    iget-boolean v6, p0, Lxn;->e:Z

    .line 152
    .line 153
    if-nez v6, :cond_3

    .line 154
    .line 155
    iget v6, p0, Lxn;->d:F

    .line 156
    .line 157
    cmpl-float v6, v6, v0

    .line 158
    .line 159
    if-lez v6, :cond_3

    .line 160
    .line 161
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 162
    .line 163
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    .line 165
    .line 166
    cmpl-float p3, p3, v0

    .line 167
    .line 168
    if-lez p3, :cond_2

    .line 169
    .line 170
    new-instance v8, Landroid/graphics/PointF;

    .line 171
    .line 172
    invoke-direct {v8, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 173
    .line 174
    .line 175
    iget v11, p0, Lxn;->c:F

    .line 176
    .line 177
    const/4 v9, 0x0

    .line 178
    move-object v5, p0

    .line 179
    move-object v6, p1

    .line 180
    move-object v7, p2

    .line 181
    move v10, v4

    .line 182
    invoke-virtual/range {v5 .. v11}, Lxn;->h(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/PointF;Landroid/graphics/PointF;FF)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_2
    move v10, v4

    .line 187
    :goto_1
    iget p3, p0, Lxn;->b:F

    .line 188
    .line 189
    cmpg-float p3, v1, p3

    .line 190
    .line 191
    if-gez p3, :cond_3

    .line 192
    .line 193
    new-instance v8, Landroid/graphics/PointF;

    .line 194
    .line 195
    invoke-direct {v8, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 196
    .line 197
    .line 198
    iget v11, p0, Lxn;->c:F

    .line 199
    .line 200
    const/4 v9, 0x0

    .line 201
    move-object v5, p0

    .line 202
    move-object v6, p1

    .line 203
    move-object v7, p2

    .line 204
    invoke-virtual/range {v5 .. v11}, Lxn;->h(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/PointF;Landroid/graphics/PointF;FF)V

    .line 205
    .line 206
    .line 207
    :cond_3
    return-void
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/PointF;Landroid/graphics/PointF;FF)V
    .locals 4

    .line 1
    iget v0, p0, Lxn;->c:F

    .line 2
    .line 3
    invoke-static {p6, v0}, Ljava/lang/Math;->min(FF)F

    .line 4
    .line 5
    .line 6
    move-result p6

    .line 7
    iget v0, p0, Lxn;->d:F

    .line 8
    .line 9
    mul-float/2addr v0, p6

    .line 10
    iget p0, p0, Lxn;->c:F

    .line 11
    .line 12
    div-float/2addr v0, p0

    .line 13
    const/high16 p0, 0x40000000    # 2.0f

    .line 14
    .line 15
    div-float v1, p5, p0

    .line 16
    .line 17
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    new-instance v2, Landroid/graphics/RectF;

    .line 22
    .line 23
    neg-float p5, p5

    .line 24
    div-float/2addr p5, p0

    .line 25
    neg-float v3, p6

    .line 26
    div-float/2addr v3, p0

    .line 27
    div-float/2addr p6, p0

    .line 28
    invoke-direct {v2, p5, v3, v1, p6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 32
    .line 33
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 37
    .line 38
    .line 39
    if-eqz p4, :cond_0

    .line 40
    .line 41
    iget p0, p4, Landroid/graphics/PointF;->x:F

    .line 42
    .line 43
    iget p5, p4, Landroid/graphics/PointF;->y:F

    .line 44
    .line 45
    invoke-virtual {p1, p0, p5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Landroid/graphics/Path;

    .line 49
    .line 50
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 51
    .line 52
    .line 53
    sget-object p5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 54
    .line 55
    invoke-virtual {p0, v2, v0, v0, p5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 59
    .line 60
    .line 61
    iget p0, p4, Landroid/graphics/PointF;->x:F

    .line 62
    .line 63
    neg-float p0, p0

    .line 64
    iget p4, p4, Landroid/graphics/PointF;->y:F

    .line 65
    .line 66
    neg-float p4, p4

    .line 67
    invoke-virtual {p1, p0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget p0, p3, Landroid/graphics/PointF;->x:F

    .line 71
    .line 72
    iget p3, p3, Landroid/graphics/PointF;->y:F

    .line 73
    .line 74
    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v2, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 81
    .line 82
    .line 83
    return-void
.end method
