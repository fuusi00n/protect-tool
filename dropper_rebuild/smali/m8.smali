.class public final Lm8;
.super Ltw;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final a:Landroid/graphics/Paint;

.field public final b:Ljava/util/List;

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm8;->a:Landroid/graphics/Paint;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lm8;->b:Ljava/util/List;

    .line 21
    .line 22
    const/high16 p0, 0x40a00000

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    .line 26
    .line 27
    const p0, -0xff01

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lzu;->m3_carousel_debug_keyline_width:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v6, p0, Lm8;->a:Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lm8;->b:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lgn;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    sget-object v0, Lja;->a:Ljava/lang/ThreadLocal;

    .line 38
    .line 39
    const/high16 v0, 0x3f800000

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    sub-float/2addr v0, v1

    .line 43
    const v2, -0xff01

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    int-to-float v3, v3

    .line 51
    mul-float/2addr v3, v0

    .line 52
    const v4, -0xffff01

    .line 53
    .line 54
    .line 55
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    int-to-float v5, v5

    .line 60
    mul-float/2addr v5, v1

    .line 61
    add-float/2addr v5, v3

    .line 62
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    int-to-float v3, v3

    .line 67
    mul-float/2addr v3, v0

    .line 68
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    int-to-float v7, v7

    .line 73
    mul-float/2addr v7, v1

    .line 74
    add-float/2addr v7, v3

    .line 75
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    int-to-float v3, v3

    .line 80
    mul-float/2addr v3, v0

    .line 81
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    int-to-float v8, v8

    .line 86
    mul-float/2addr v8, v1

    .line 87
    add-float/2addr v8, v3

    .line 88
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    int-to-float v2, v2

    .line 93
    mul-float/2addr v2, v0

    .line 94
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    int-to-float v0, v0

    .line 99
    mul-float/2addr v0, v1

    .line 100
    add-float/2addr v0, v2

    .line 101
    float-to-int v1, v5

    .line 102
    float-to-int v2, v7

    .line 103
    float-to-int v3, v8

    .line 104
    float-to-int v0, v0

    .line 105
    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lww;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->A0()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    const/4 v1, 0x0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    .line 125
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lww;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:Ln8;

    .line 132
    .line 133
    iget v2, v0, Ln8;->b:I

    .line 134
    .line 135
    packed-switch v2, :pswitch_data_0

    .line 136
    .line 137
    .line 138
    iget-object v0, v0, Ln8;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 139
    .line 140
    invoke-virtual {v0}, Lww;->G()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    :pswitch_0
    int-to-float v3, v1

    .line 145
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lww;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:Ln8;

    .line 152
    .line 153
    iget v1, v0, Ln8;->b:I

    .line 154
    .line 155
    packed-switch v1, :pswitch_data_1

    .line 156
    .line 157
    .line 158
    iget-object v0, v0, Ln8;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 159
    .line 160
    iget v1, v0, Lww;->o:I

    .line 161
    .line 162
    invoke-virtual {v0}, Lww;->D()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    sub-int/2addr v1, v0

    .line 167
    goto :goto_1

    .line 168
    :pswitch_1
    iget-object v0, v0, Ln8;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 169
    .line 170
    iget v1, v0, Lww;->o:I

    .line 171
    .line 172
    :goto_1
    int-to-float v5, v1

    .line 173
    const/4 v2, 0x0

    .line 174
    const/4 v4, 0x0

    .line 175
    move-object v1, p1

    .line 176
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lww;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 185
    .line 186
    iget-object v0, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:Ln8;

    .line 187
    .line 188
    iget v2, v0, Ln8;->b:I

    .line 189
    .line 190
    packed-switch v2, :pswitch_data_2

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :pswitch_2
    iget-object v0, v0, Ln8;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 195
    .line 196
    invoke-virtual {v0}, Lww;->E()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    :goto_2
    int-to-float v2, v1

    .line 201
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lww;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 206
    .line 207
    iget-object v0, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:Ln8;

    .line 208
    .line 209
    iget v1, v0, Ln8;->b:I

    .line 210
    .line 211
    packed-switch v1, :pswitch_data_3

    .line 212
    .line 213
    .line 214
    iget-object v0, v0, Ln8;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 215
    .line 216
    iget v0, v0, Lww;->n:I

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :pswitch_3
    iget-object v0, v0, Ln8;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 220
    .line 221
    iget v1, v0, Lww;->n:I

    .line 222
    .line 223
    invoke-virtual {v0}, Lww;->F()I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    sub-int v0, v1, v0

    .line 228
    .line 229
    :goto_3
    int-to-float v4, v0

    .line 230
    const/4 v5, 0x0

    .line 231
    const/4 v3, 0x0

    .line 232
    move-object v1, p1

    .line 233
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 234
    .line 235
    .line 236
    :goto_4
    move-object p1, v1

    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_1
    return-void

    .line 240
    nop

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method
