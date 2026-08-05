.class public final Lu8;
.super Landroid/util/Property;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final synthetic a:I

.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lu8;->a:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Lu8;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 15
    .line 16
    sget-object p0, Lt60;->a:Lz60;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lzt;->n(Landroid/view/View;)F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :pswitch_1
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 28
    .line 29
    iget p0, p1, Landroidx/appcompat/widget/SwitchCompat;->z:F

    .line 30
    .line 31
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_2
    check-cast p1, Lao;

    .line 37
    .line 38
    iget p0, p1, Lao;->i:F

    .line 39
    .line 40
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_3
    check-cast p1, Lyn;

    .line 46
    .line 47
    iget p0, p1, Lyn;->h:F

    .line 48
    .line 49
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_4
    check-cast p1, Lyf;

    .line 55
    .line 56
    invoke-virtual {p1}, Lyf;->b()F

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :pswitch_5
    check-cast p1, Lp9;

    .line 66
    .line 67
    iget p0, p1, Lp9;->i:F

    .line 68
    .line 69
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :pswitch_6
    check-cast p1, Lp9;

    .line 75
    .line 76
    iget p0, p1, Lp9;->h:F

    .line 77
    .line 78
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_7
    check-cast p1, Landroid/view/View;

    .line 84
    .line 85
    return-object v0

    .line 86
    :pswitch_8
    check-cast p1, Landroid/view/View;

    .line 87
    .line 88
    return-object v0

    .line 89
    :pswitch_9
    check-cast p1, Landroid/view/View;

    .line 90
    .line 91
    return-object v0

    .line 92
    :pswitch_a
    check-cast p1, Lx8;

    .line 93
    .line 94
    return-object v0

    .line 95
    :pswitch_b
    check-cast p1, Lx8;

    .line 96
    .line 97
    return-object v0

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget p0, p0, Lu8;->a:I

    .line 2
    .line 3
    const/16 v0, 0x29b

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/high16 v2, 0x3f800000

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    packed-switch p0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Landroid/view/View;

    .line 14
    .line 15
    check-cast p2, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 22
    .line 23
    check-cast p2, Ljava/lang/Float;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    sget-object p2, Lt60;->a:Lz60;

    .line 30
    .line 31
    invoke-virtual {p2, p1, p0}, Lzt;->s(Landroid/view/View;F)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_1
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 36
    .line 37
    check-cast p2, Ljava/lang/Float;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_2
    check-cast p1, Lao;

    .line 48
    .line 49
    check-cast p2, Ljava/lang/Float;

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    iput p0, p1, Lao;->i:F

    .line 56
    .line 57
    const/high16 p2, 0x44e10000

    .line 58
    .line 59
    mul-float/2addr p0, p2

    .line 60
    float-to-int p0, p0

    .line 61
    iget-object p2, p1, Lao;->e:[Landroid/view/animation/Interpolator;

    .line 62
    .line 63
    iget-object v0, p1, Ld4;->b:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    move v5, v3

    .line 68
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-ge v5, v6, :cond_0

    .line 73
    .line 74
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Lzf;

    .line 79
    .line 80
    sget-object v7, Lao;->l:[I

    .line 81
    .line 82
    mul-int/lit8 v8, v5, 0x2

    .line 83
    .line 84
    aget v9, v7, v8

    .line 85
    .line 86
    sget-object v10, Lao;->k:[I

    .line 87
    .line 88
    aget v11, v10, v8

    .line 89
    .line 90
    invoke-static {p0, v9, v11}, Ld4;->h(III)F

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    aget-object v11, p2, v8

    .line 95
    .line 96
    invoke-interface {v11, v9}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    invoke-static {v9, v1, v2}, Lnm;->k(FFF)F

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    iput v9, v6, Lzf;->a:F

    .line 105
    .line 106
    add-int/2addr v8, v4

    .line 107
    aget v7, v7, v8

    .line 108
    .line 109
    aget v9, v10, v8

    .line 110
    .line 111
    invoke-static {p0, v7, v9}, Ld4;->h(III)F

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    aget-object v8, p2, v8

    .line 116
    .line 117
    invoke-interface {v8, v7}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    invoke-static {v7, v1, v2}, Lnm;->k(FFF)F

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    iput v7, v6, Lzf;->b:F

    .line 126
    .line 127
    add-int/lit8 v5, v5, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_0
    iget-boolean p0, p1, Lao;->h:Z

    .line 131
    .line 132
    if-eqz p0, :cond_2

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    move p2, v3

    .line 139
    :goto_1
    if-ge p2, p0, :cond_1

    .line 140
    .line 141
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    add-int/lit8 p2, p2, 0x1

    .line 146
    .line 147
    check-cast v1, Lzf;

    .line 148
    .line 149
    iget-object v2, p1, Lao;->f:Lio;

    .line 150
    .line 151
    iget-object v2, v2, Lf7;->c:[I

    .line 152
    .line 153
    iget v4, p1, Lao;->g:I

    .line 154
    .line 155
    aget v2, v2, v4

    .line 156
    .line 157
    iput v2, v1, Lzf;->c:I

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_1
    iput-boolean v3, p1, Lao;->h:Z

    .line 161
    .line 162
    :cond_2
    iget-object p0, p1, Ld4;->a:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p0, Lam;

    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :pswitch_3
    check-cast p1, Lyn;

    .line 171
    .line 172
    check-cast p2, Ljava/lang/Float;

    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    iput p0, p1, Lyn;->h:F

    .line 179
    .line 180
    const p2, 0x43a68000

    .line 181
    .line 182
    .line 183
    mul-float/2addr p0, p2

    .line 184
    float-to-int p0, p0

    .line 185
    iget-object p2, p1, Ld4;->b:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p2, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    check-cast v5, Lzf;

    .line 194
    .line 195
    iput v1, v5, Lzf;->a:F

    .line 196
    .line 197
    invoke-static {p0, v3, v0}, Ld4;->h(III)F

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lzf;

    .line 206
    .line 207
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Lzf;

    .line 212
    .line 213
    iget-object v5, p1, Lyn;->d:Lxh;

    .line 214
    .line 215
    invoke-virtual {v5, p0}, Lxh;->getInterpolation(F)F

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    iput v6, v1, Lzf;->a:F

    .line 220
    .line 221
    iput v6, v0, Lzf;->b:F

    .line 222
    .line 223
    const v0, 0x3eff9dbf

    .line 224
    .line 225
    .line 226
    add-float/2addr p0, v0

    .line 227
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Lzf;

    .line 232
    .line 233
    const/4 v1, 0x2

    .line 234
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    check-cast v6, Lzf;

    .line 239
    .line 240
    invoke-virtual {v5, p0}, Lxh;->getInterpolation(F)F

    .line 241
    .line 242
    .line 243
    move-result p0

    .line 244
    iput p0, v6, Lzf;->a:F

    .line 245
    .line 246
    iput p0, v0, Lzf;->b:F

    .line 247
    .line 248
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    check-cast p0, Lzf;

    .line 253
    .line 254
    iput v2, p0, Lzf;->b:F

    .line 255
    .line 256
    iget-boolean p0, p1, Lyn;->g:Z

    .line 257
    .line 258
    if-eqz p0, :cond_3

    .line 259
    .line 260
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    check-cast p0, Lzf;

    .line 265
    .line 266
    iget p0, p0, Lzf;->b:F

    .line 267
    .line 268
    cmpg-float p0, p0, v2

    .line 269
    .line 270
    if-gez p0, :cond_3

    .line 271
    .line 272
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    check-cast p0, Lzf;

    .line 277
    .line 278
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Lzf;

    .line 283
    .line 284
    iget v0, v0, Lzf;->c:I

    .line 285
    .line 286
    iput v0, p0, Lzf;->c:I

    .line 287
    .line 288
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    check-cast p0, Lzf;

    .line 293
    .line 294
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    check-cast v0, Lzf;

    .line 299
    .line 300
    iget v0, v0, Lzf;->c:I

    .line 301
    .line 302
    iput v0, p0, Lzf;->c:I

    .line 303
    .line 304
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    check-cast p0, Lzf;

    .line 309
    .line 310
    iget-object p2, p1, Lyn;->e:Lio;

    .line 311
    .line 312
    iget-object p2, p2, Lf7;->c:[I

    .line 313
    .line 314
    iget v0, p1, Lyn;->f:I

    .line 315
    .line 316
    aget p2, p2, v0

    .line 317
    .line 318
    iput p2, p0, Lzf;->c:I

    .line 319
    .line 320
    iput-boolean v3, p1, Lyn;->g:Z

    .line 321
    .line 322
    :cond_3
    iget-object p0, p1, Ld4;->a:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast p0, Lam;

    .line 325
    .line 326
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :pswitch_4
    check-cast p1, Lyf;

    .line 331
    .line 332
    check-cast p2, Ljava/lang/Float;

    .line 333
    .line 334
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 335
    .line 336
    .line 337
    move-result p0

    .line 338
    iget p2, p1, Lyf;->h:F

    .line 339
    .line 340
    cmpl-float p2, p2, p0

    .line 341
    .line 342
    if-eqz p2, :cond_4

    .line 343
    .line 344
    iput p0, p1, Lyf;->h:F

    .line 345
    .line 346
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 347
    .line 348
    .line 349
    :cond_4
    return-void

    .line 350
    :pswitch_5
    check-cast p1, Lp9;

    .line 351
    .line 352
    check-cast p2, Ljava/lang/Float;

    .line 353
    .line 354
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 355
    .line 356
    .line 357
    move-result p0

    .line 358
    iput p0, p1, Lp9;->i:F

    .line 359
    .line 360
    return-void

    .line 361
    :pswitch_6
    check-cast p1, Lp9;

    .line 362
    .line 363
    check-cast p2, Ljava/lang/Float;

    .line 364
    .line 365
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 366
    .line 367
    .line 368
    move-result p0

    .line 369
    iput p0, p1, Lp9;->h:F

    .line 370
    .line 371
    const p2, 0x45a8c000

    .line 372
    .line 373
    .line 374
    mul-float/2addr p0, p2

    .line 375
    float-to-int p0, p0

    .line 376
    iget-object p2, p1, Lp9;->e:Lxh;

    .line 377
    .line 378
    iget-object v4, p1, Ld4;->b:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast v4, Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    check-cast v5, Lzf;

    .line 387
    .line 388
    const/high16 v6, 0x44be0000

    .line 389
    .line 390
    iget v7, p1, Lp9;->h:F

    .line 391
    .line 392
    mul-float/2addr v7, v6

    .line 393
    const/high16 v6, -0x3e600000

    .line 394
    .line 395
    add-float/2addr v6, v7

    .line 396
    iput v6, v5, Lzf;->a:F

    .line 397
    .line 398
    iput v7, v5, Lzf;->b:F

    .line 399
    .line 400
    move v6, v3

    .line 401
    :goto_2
    const/4 v7, 0x4

    .line 402
    if-ge v6, v7, :cond_5

    .line 403
    .line 404
    sget-object v7, Lp9;->k:[I

    .line 405
    .line 406
    aget v7, v7, v6

    .line 407
    .line 408
    invoke-static {p0, v7, v0}, Ld4;->h(III)F

    .line 409
    .line 410
    .line 411
    move-result v7

    .line 412
    iget v8, v5, Lzf;->b:F

    .line 413
    .line 414
    invoke-virtual {p2, v7}, Lxh;->getInterpolation(F)F

    .line 415
    .line 416
    .line 417
    move-result v7

    .line 418
    const/high16 v9, 0x437a0000

    .line 419
    .line 420
    mul-float/2addr v7, v9

    .line 421
    add-float/2addr v7, v8

    .line 422
    iput v7, v5, Lzf;->b:F

    .line 423
    .line 424
    sget-object v7, Lp9;->l:[I

    .line 425
    .line 426
    aget v7, v7, v6

    .line 427
    .line 428
    invoke-static {p0, v7, v0}, Ld4;->h(III)F

    .line 429
    .line 430
    .line 431
    move-result v7

    .line 432
    iget v8, v5, Lzf;->a:F

    .line 433
    .line 434
    invoke-virtual {p2, v7}, Lxh;->getInterpolation(F)F

    .line 435
    .line 436
    .line 437
    move-result v7

    .line 438
    mul-float/2addr v7, v9

    .line 439
    add-float/2addr v7, v8

    .line 440
    iput v7, v5, Lzf;->a:F

    .line 441
    .line 442
    add-int/lit8 v6, v6, 0x1

    .line 443
    .line 444
    goto :goto_2

    .line 445
    :cond_5
    iget v0, v5, Lzf;->a:F

    .line 446
    .line 447
    iget v6, v5, Lzf;->b:F

    .line 448
    .line 449
    sub-float v8, v6, v0

    .line 450
    .line 451
    iget v9, p1, Lp9;->i:F

    .line 452
    .line 453
    mul-float/2addr v8, v9

    .line 454
    add-float/2addr v8, v0

    .line 455
    const/high16 v0, 0x43b40000

    .line 456
    .line 457
    div-float/2addr v8, v0

    .line 458
    iput v8, v5, Lzf;->a:F

    .line 459
    .line 460
    div-float/2addr v6, v0

    .line 461
    iput v6, v5, Lzf;->b:F

    .line 462
    .line 463
    move v0, v3

    .line 464
    :goto_3
    if-ge v0, v7, :cond_7

    .line 465
    .line 466
    sget-object v5, Lp9;->m:[I

    .line 467
    .line 468
    aget v5, v5, v0

    .line 469
    .line 470
    const/16 v6, 0x14d

    .line 471
    .line 472
    invoke-static {p0, v5, v6}, Ld4;->h(III)F

    .line 473
    .line 474
    .line 475
    move-result v5

    .line 476
    cmpl-float v6, v5, v1

    .line 477
    .line 478
    if-ltz v6, :cond_6

    .line 479
    .line 480
    cmpg-float v6, v5, v2

    .line 481
    .line 482
    if-gtz v6, :cond_6

    .line 483
    .line 484
    iget p0, p1, Lp9;->g:I

    .line 485
    .line 486
    add-int/2addr v0, p0

    .line 487
    iget-object p0, p1, Lp9;->f:Lq9;

    .line 488
    .line 489
    iget-object p0, p0, Lf7;->c:[I

    .line 490
    .line 491
    array-length v1, p0

    .line 492
    rem-int/2addr v0, v1

    .line 493
    add-int/lit8 v1, v0, 0x1

    .line 494
    .line 495
    array-length v2, p0

    .line 496
    rem-int/2addr v1, v2

    .line 497
    aget v0, p0, v0

    .line 498
    .line 499
    aget p0, p0, v1

    .line 500
    .line 501
    invoke-virtual {p2, v5}, Lxh;->getInterpolation(F)F

    .line 502
    .line 503
    .line 504
    move-result p2

    .line 505
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    check-cast v1, Lzf;

    .line 510
    .line 511
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 516
    .line 517
    .line 518
    move-result-object p0

    .line 519
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    shr-int/lit8 v2, v0, 0x18

    .line 524
    .line 525
    and-int/lit16 v2, v2, 0xff

    .line 526
    .line 527
    int-to-float v2, v2

    .line 528
    const/high16 v3, 0x437f0000

    .line 529
    .line 530
    div-float/2addr v2, v3

    .line 531
    shr-int/lit8 v4, v0, 0x10

    .line 532
    .line 533
    and-int/lit16 v4, v4, 0xff

    .line 534
    .line 535
    int-to-float v4, v4

    .line 536
    div-float/2addr v4, v3

    .line 537
    shr-int/lit8 v5, v0, 0x8

    .line 538
    .line 539
    and-int/lit16 v5, v5, 0xff

    .line 540
    .line 541
    int-to-float v5, v5

    .line 542
    div-float/2addr v5, v3

    .line 543
    and-int/lit16 v0, v0, 0xff

    .line 544
    .line 545
    int-to-float v0, v0

    .line 546
    div-float/2addr v0, v3

    .line 547
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 548
    .line 549
    .line 550
    move-result p0

    .line 551
    shr-int/lit8 v6, p0, 0x18

    .line 552
    .line 553
    and-int/lit16 v6, v6, 0xff

    .line 554
    .line 555
    int-to-float v6, v6

    .line 556
    div-float/2addr v6, v3

    .line 557
    shr-int/lit8 v7, p0, 0x10

    .line 558
    .line 559
    and-int/lit16 v7, v7, 0xff

    .line 560
    .line 561
    int-to-float v7, v7

    .line 562
    div-float/2addr v7, v3

    .line 563
    shr-int/lit8 v8, p0, 0x8

    .line 564
    .line 565
    and-int/lit16 v8, v8, 0xff

    .line 566
    .line 567
    int-to-float v8, v8

    .line 568
    div-float/2addr v8, v3

    .line 569
    and-int/lit16 p0, p0, 0xff

    .line 570
    .line 571
    int-to-float p0, p0

    .line 572
    div-float/2addr p0, v3

    .line 573
    float-to-double v9, v4

    .line 574
    const-wide v11, 0x400199999999999aL

    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 580
    .line 581
    .line 582
    move-result-wide v9

    .line 583
    double-to-float v4, v9

    .line 584
    float-to-double v9, v5

    .line 585
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 586
    .line 587
    .line 588
    move-result-wide v9

    .line 589
    double-to-float v5, v9

    .line 590
    float-to-double v9, v0

    .line 591
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 592
    .line 593
    .line 594
    move-result-wide v9

    .line 595
    double-to-float v0, v9

    .line 596
    float-to-double v9, v7

    .line 597
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 598
    .line 599
    .line 600
    move-result-wide v9

    .line 601
    double-to-float v7, v9

    .line 602
    float-to-double v8, v8

    .line 603
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 604
    .line 605
    .line 606
    move-result-wide v8

    .line 607
    double-to-float v8, v8

    .line 608
    float-to-double v9, p0

    .line 609
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 610
    .line 611
    .line 612
    move-result-wide v9

    .line 613
    double-to-float p0, v9

    .line 614
    sub-float/2addr v6, v2

    .line 615
    mul-float/2addr v6, p2

    .line 616
    add-float/2addr v6, v2

    .line 617
    sub-float/2addr v7, v4

    .line 618
    mul-float/2addr v7, p2

    .line 619
    add-float/2addr v7, v4

    .line 620
    sub-float/2addr v8, v5

    .line 621
    mul-float/2addr v8, p2

    .line 622
    add-float/2addr v8, v5

    .line 623
    sub-float/2addr p0, v0

    .line 624
    mul-float/2addr p0, p2

    .line 625
    add-float/2addr p0, v0

    .line 626
    mul-float/2addr v6, v3

    .line 627
    float-to-double v4, v7

    .line 628
    const-wide v9, 0x3fdd1745d1745d17L

    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 634
    .line 635
    .line 636
    move-result-wide v4

    .line 637
    double-to-float p2, v4

    .line 638
    mul-float/2addr p2, v3

    .line 639
    float-to-double v4, v8

    .line 640
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 641
    .line 642
    .line 643
    move-result-wide v4

    .line 644
    double-to-float v0, v4

    .line 645
    mul-float/2addr v0, v3

    .line 646
    float-to-double v4, p0

    .line 647
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 648
    .line 649
    .line 650
    move-result-wide v4

    .line 651
    double-to-float p0, v4

    .line 652
    mul-float/2addr p0, v3

    .line 653
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 654
    .line 655
    .line 656
    move-result v2

    .line 657
    shl-int/lit8 v2, v2, 0x18

    .line 658
    .line 659
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 660
    .line 661
    .line 662
    move-result p2

    .line 663
    shl-int/lit8 p2, p2, 0x10

    .line 664
    .line 665
    or-int/2addr p2, v2

    .line 666
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 667
    .line 668
    .line 669
    move-result v0

    .line 670
    shl-int/lit8 v0, v0, 0x8

    .line 671
    .line 672
    or-int/2addr p2, v0

    .line 673
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 674
    .line 675
    .line 676
    move-result p0

    .line 677
    or-int/2addr p0, p2

    .line 678
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 679
    .line 680
    .line 681
    move-result-object p0

    .line 682
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 683
    .line 684
    .line 685
    move-result p0

    .line 686
    iput p0, v1, Lzf;->c:I

    .line 687
    .line 688
    goto :goto_4

    .line 689
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 690
    .line 691
    goto/16 :goto_3

    .line 692
    .line 693
    :cond_7
    :goto_4
    iget-object p0, p1, Ld4;->a:Ljava/lang/Object;

    .line 694
    .line 695
    check-cast p0, Lam;

    .line 696
    .line 697
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 698
    .line 699
    .line 700
    return-void

    .line 701
    :pswitch_7
    check-cast p1, Landroid/view/View;

    .line 702
    .line 703
    check-cast p2, Landroid/graphics/PointF;

    .line 704
    .line 705
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 706
    .line 707
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 708
    .line 709
    .line 710
    move-result p0

    .line 711
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 712
    .line 713
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 714
    .line 715
    .line 716
    move-result p2

    .line 717
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 718
    .line 719
    .line 720
    move-result v0

    .line 721
    add-int/2addr v0, p0

    .line 722
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    add-int/2addr v1, p2

    .line 727
    invoke-static {p1, p0, p2, v0, v1}, Lt60;->a(Landroid/view/View;IIII)V

    .line 728
    .line 729
    .line 730
    return-void

    .line 731
    :pswitch_8
    check-cast p1, Landroid/view/View;

    .line 732
    .line 733
    check-cast p2, Landroid/graphics/PointF;

    .line 734
    .line 735
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 736
    .line 737
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 738
    .line 739
    .line 740
    move-result p0

    .line 741
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 742
    .line 743
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 744
    .line 745
    .line 746
    move-result p2

    .line 747
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 748
    .line 749
    .line 750
    move-result v0

    .line 751
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 752
    .line 753
    .line 754
    move-result v1

    .line 755
    invoke-static {p1, p0, p2, v0, v1}, Lt60;->a(Landroid/view/View;IIII)V

    .line 756
    .line 757
    .line 758
    return-void

    .line 759
    :pswitch_9
    check-cast p1, Landroid/view/View;

    .line 760
    .line 761
    check-cast p2, Landroid/graphics/PointF;

    .line 762
    .line 763
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 764
    .line 765
    .line 766
    move-result p0

    .line 767
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 768
    .line 769
    .line 770
    move-result v0

    .line 771
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 772
    .line 773
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 774
    .line 775
    .line 776
    move-result v1

    .line 777
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 778
    .line 779
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 780
    .line 781
    .line 782
    move-result p2

    .line 783
    invoke-static {p1, p0, v0, v1, p2}, Lt60;->a(Landroid/view/View;IIII)V

    .line 784
    .line 785
    .line 786
    return-void

    .line 787
    :pswitch_a
    check-cast p1, Lx8;

    .line 788
    .line 789
    check-cast p2, Landroid/graphics/PointF;

    .line 790
    .line 791
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    .line 793
    .line 794
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 795
    .line 796
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 797
    .line 798
    .line 799
    move-result p0

    .line 800
    iput p0, p1, Lx8;->c:I

    .line 801
    .line 802
    iget p0, p2, Landroid/graphics/PointF;->y:F

    .line 803
    .line 804
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 805
    .line 806
    .line 807
    move-result p0

    .line 808
    iput p0, p1, Lx8;->d:I

    .line 809
    .line 810
    iget p2, p1, Lx8;->g:I

    .line 811
    .line 812
    add-int/2addr p2, v4

    .line 813
    iput p2, p1, Lx8;->g:I

    .line 814
    .line 815
    iget v0, p1, Lx8;->f:I

    .line 816
    .line 817
    if-ne v0, p2, :cond_8

    .line 818
    .line 819
    iget-object p2, p1, Lx8;->e:Landroid/view/View;

    .line 820
    .line 821
    iget v0, p1, Lx8;->a:I

    .line 822
    .line 823
    iget v1, p1, Lx8;->b:I

    .line 824
    .line 825
    iget v2, p1, Lx8;->c:I

    .line 826
    .line 827
    invoke-static {p2, v0, v1, v2, p0}, Lt60;->a(Landroid/view/View;IIII)V

    .line 828
    .line 829
    .line 830
    iput v3, p1, Lx8;->f:I

    .line 831
    .line 832
    iput v3, p1, Lx8;->g:I

    .line 833
    .line 834
    :cond_8
    return-void

    .line 835
    :pswitch_b
    check-cast p1, Lx8;

    .line 836
    .line 837
    check-cast p2, Landroid/graphics/PointF;

    .line 838
    .line 839
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 840
    .line 841
    .line 842
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 843
    .line 844
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 845
    .line 846
    .line 847
    move-result p0

    .line 848
    iput p0, p1, Lx8;->a:I

    .line 849
    .line 850
    iget p0, p2, Landroid/graphics/PointF;->y:F

    .line 851
    .line 852
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 853
    .line 854
    .line 855
    move-result p0

    .line 856
    iput p0, p1, Lx8;->b:I

    .line 857
    .line 858
    iget p2, p1, Lx8;->f:I

    .line 859
    .line 860
    add-int/2addr p2, v4

    .line 861
    iput p2, p1, Lx8;->f:I

    .line 862
    .line 863
    iget v0, p1, Lx8;->g:I

    .line 864
    .line 865
    if-ne p2, v0, :cond_9

    .line 866
    .line 867
    iget-object p2, p1, Lx8;->e:Landroid/view/View;

    .line 868
    .line 869
    iget v0, p1, Lx8;->a:I

    .line 870
    .line 871
    iget v1, p1, Lx8;->c:I

    .line 872
    .line 873
    iget v2, p1, Lx8;->d:I

    .line 874
    .line 875
    invoke-static {p2, v0, p0, v1, v2}, Lt60;->a(Landroid/view/View;IIII)V

    .line 876
    .line 877
    .line 878
    iput v3, p1, Lx8;->f:I

    .line 879
    .line 880
    iput v3, p1, Lx8;->g:I

    .line 881
    .line 882
    :cond_9
    return-void

    .line 883
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
