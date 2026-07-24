.class public final Lx2;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Ly2;


# direct methods
.method public constructor <init>(Ly2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx2;->a:Ly2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lx2;->a:Ly2;

    .line 4
    .line 5
    iget-object v0, v0, Ly2;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lo0;

    .line 8
    .line 9
    iget-object v0, v0, Lo0;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lz2;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iget-object v3, v0, Lz2;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    const/4 v6, 0x0

    .line 24
    move v7, v6

    .line 25
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    if-ge v7, v8, :cond_e

    .line 30
    .line 31
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    check-cast v8, Lr00;

    .line 36
    .line 37
    if-nez v8, :cond_1

    .line 38
    .line 39
    :cond_0
    :goto_1
    move/from16 v30, v7

    .line 40
    .line 41
    goto/16 :goto_8

    .line 42
    .line 43
    :cond_1
    iget-object v10, v0, Lz2;->a:Lg00;

    .line 44
    .line 45
    const/4 v11, 0x0

    .line 46
    invoke-virtual {v10, v8, v11}, Lg00;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    check-cast v12, Ljava/lang/Long;

    .line 51
    .line 52
    if-nez v12, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v12

    .line 59
    cmp-long v12, v12, v4

    .line 60
    .line 61
    if-gez v12, :cond_0

    .line 62
    .line 63
    invoke-virtual {v10, v8}, Lg00;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :goto_2
    iget-wide v12, v8, Lr00;->g:J

    .line 67
    .line 68
    const-wide/16 v14, 0x0

    .line 69
    .line 70
    cmp-long v10, v12, v14

    .line 71
    .line 72
    if-nez v10, :cond_3

    .line 73
    .line 74
    iput-wide v1, v8, Lr00;->g:J

    .line 75
    .line 76
    iget v9, v8, Lr00;->b:F

    .line 77
    .line 78
    invoke-virtual {v8, v9}, Lr00;->a(F)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    sub-long v21, v1, v12

    .line 83
    .line 84
    iput-wide v1, v8, Lr00;->g:J

    .line 85
    .line 86
    iget-boolean v10, v8, Lr00;->m:Z

    .line 87
    .line 88
    iget v12, v8, Lr00;->l:F

    .line 89
    .line 90
    const v13, -0x800001

    .line 91
    .line 92
    .line 93
    const v14, 0x7f7fffff    # Float.MAX_VALUE

    .line 94
    .line 95
    .line 96
    const/4 v15, 0x0

    .line 97
    if-eqz v10, :cond_5

    .line 98
    .line 99
    cmpl-float v10, v12, v14

    .line 100
    .line 101
    if-eqz v10, :cond_4

    .line 102
    .line 103
    iget-object v10, v8, Lr00;->k:Ls00;

    .line 104
    .line 105
    float-to-double v11, v12

    .line 106
    iput-wide v11, v10, Ls00;->i:D

    .line 107
    .line 108
    iput v14, v8, Lr00;->l:F

    .line 109
    .line 110
    :cond_4
    iget-object v10, v8, Lr00;->k:Ls00;

    .line 111
    .line 112
    iget-wide v10, v10, Ls00;->i:D

    .line 113
    .line 114
    double-to-float v10, v10

    .line 115
    iput v10, v8, Lr00;->b:F

    .line 116
    .line 117
    iput v15, v8, Lr00;->a:F

    .line 118
    .line 119
    iput-boolean v6, v8, Lr00;->m:Z

    .line 120
    .line 121
    move/from16 v30, v7

    .line 122
    .line 123
    :goto_3
    const/4 v9, 0x1

    .line 124
    goto/16 :goto_5

    .line 125
    .line 126
    :cond_5
    cmpl-float v10, v12, v14

    .line 127
    .line 128
    iget-object v11, v8, Lr00;->k:Ls00;

    .line 129
    .line 130
    if-eqz v10, :cond_6

    .line 131
    .line 132
    iget-wide v9, v11, Ls00;->i:D

    .line 133
    .line 134
    iget v9, v8, Lr00;->b:F

    .line 135
    .line 136
    float-to-double v9, v9

    .line 137
    iget v12, v8, Lr00;->a:F

    .line 138
    .line 139
    move/from16 v30, v7

    .line 140
    .line 141
    float-to-double v6, v12

    .line 142
    const-wide/16 v16, 0x2

    .line 143
    .line 144
    div-long v28, v21, v16

    .line 145
    .line 146
    move-wide/from16 v26, v6

    .line 147
    .line 148
    move-wide/from16 v24, v9

    .line 149
    .line 150
    move-object/from16 v23, v11

    .line 151
    .line 152
    invoke-virtual/range {v23 .. v29}, Ls00;->a(DDJ)Lng;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    iget-object v7, v8, Lr00;->k:Ls00;

    .line 157
    .line 158
    iget v9, v8, Lr00;->l:F

    .line 159
    .line 160
    float-to-double v9, v9

    .line 161
    iput-wide v9, v7, Ls00;->i:D

    .line 162
    .line 163
    iput v14, v8, Lr00;->l:F

    .line 164
    .line 165
    iget v9, v6, Lng;->a:F

    .line 166
    .line 167
    float-to-double v9, v9

    .line 168
    iget v6, v6, Lng;->b:F

    .line 169
    .line 170
    float-to-double v11, v6

    .line 171
    move-object/from16 v23, v7

    .line 172
    .line 173
    move-wide/from16 v24, v9

    .line 174
    .line 175
    move-wide/from16 v26, v11

    .line 176
    .line 177
    invoke-virtual/range {v23 .. v29}, Ls00;->a(DDJ)Lng;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    iget v7, v6, Lng;->a:F

    .line 182
    .line 183
    iput v7, v8, Lr00;->b:F

    .line 184
    .line 185
    iget v6, v6, Lng;->b:F

    .line 186
    .line 187
    iput v6, v8, Lr00;->a:F

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_6
    move/from16 v30, v7

    .line 191
    .line 192
    move-object/from16 v16, v11

    .line 193
    .line 194
    iget v6, v8, Lr00;->b:F

    .line 195
    .line 196
    float-to-double v6, v6

    .line 197
    iget v9, v8, Lr00;->a:F

    .line 198
    .line 199
    float-to-double v9, v9

    .line 200
    move-wide/from16 v17, v6

    .line 201
    .line 202
    move-wide/from16 v19, v9

    .line 203
    .line 204
    invoke-virtual/range {v16 .. v22}, Ls00;->a(DDJ)Lng;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    iget v7, v6, Lng;->a:F

    .line 209
    .line 210
    iput v7, v8, Lr00;->b:F

    .line 211
    .line 212
    iget v6, v6, Lng;->b:F

    .line 213
    .line 214
    iput v6, v8, Lr00;->a:F

    .line 215
    .line 216
    :goto_4
    iget v6, v8, Lr00;->b:F

    .line 217
    .line 218
    invoke-static {v6, v13}, Ljava/lang/Math;->max(FF)F

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    iput v6, v8, Lr00;->b:F

    .line 223
    .line 224
    invoke-static {v6, v14}, Ljava/lang/Math;->min(FF)F

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    iput v6, v8, Lr00;->b:F

    .line 229
    .line 230
    iget v7, v8, Lr00;->a:F

    .line 231
    .line 232
    iget-object v9, v8, Lr00;->k:Ls00;

    .line 233
    .line 234
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    float-to-double v10, v7

    .line 242
    iget-wide v13, v9, Ls00;->e:D

    .line 243
    .line 244
    cmpg-double v10, v10, v13

    .line 245
    .line 246
    if-gez v10, :cond_7

    .line 247
    .line 248
    iget-wide v10, v9, Ls00;->i:D

    .line 249
    .line 250
    double-to-float v10, v10

    .line 251
    sub-float/2addr v6, v10

    .line 252
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    float-to-double v10, v6

    .line 257
    iget-wide v13, v9, Ls00;->d:D

    .line 258
    .line 259
    cmpg-double v6, v10, v13

    .line 260
    .line 261
    if-gez v6, :cond_7

    .line 262
    .line 263
    iget-object v6, v8, Lr00;->k:Ls00;

    .line 264
    .line 265
    iget-wide v9, v6, Ls00;->i:D

    .line 266
    .line 267
    double-to-float v6, v9

    .line 268
    iput v6, v8, Lr00;->b:F

    .line 269
    .line 270
    iput v15, v8, Lr00;->a:F

    .line 271
    .line 272
    goto/16 :goto_3

    .line 273
    .line 274
    :cond_7
    const/4 v9, 0x0

    .line 275
    :goto_5
    iget v6, v8, Lr00;->b:F

    .line 276
    .line 277
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    .line 278
    .line 279
    .line 280
    invoke-static {v6, v12}, Ljava/lang/Math;->min(FF)F

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    iput v6, v8, Lr00;->b:F

    .line 285
    .line 286
    const v7, -0x800001

    .line 287
    .line 288
    .line 289
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    iput v6, v8, Lr00;->b:F

    .line 294
    .line 295
    invoke-virtual {v8, v6}, Lr00;->a(F)V

    .line 296
    .line 297
    .line 298
    if-eqz v9, :cond_d

    .line 299
    .line 300
    iget-object v6, v8, Lr00;->i:Ljava/util/ArrayList;

    .line 301
    .line 302
    const/4 v7, 0x0

    .line 303
    iput-boolean v7, v8, Lr00;->f:Z

    .line 304
    .line 305
    sget-object v7, Lz2;->f:Ljava/lang/ThreadLocal;

    .line 306
    .line 307
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    if-nez v9, :cond_8

    .line 312
    .line 313
    new-instance v9, Lz2;

    .line 314
    .line 315
    invoke-direct {v9}, Lz2;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v7, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    :cond_8
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    check-cast v7, Lz2;

    .line 326
    .line 327
    iget-object v9, v7, Lz2;->a:Lg00;

    .line 328
    .line 329
    invoke-virtual {v9, v8}, Lg00;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    iget-object v9, v7, Lz2;->b:Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 335
    .line 336
    .line 337
    move-result v10

    .line 338
    if-ltz v10, :cond_9

    .line 339
    .line 340
    const/4 v11, 0x0

    .line 341
    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    const/4 v12, 0x1

    .line 345
    iput-boolean v12, v7, Lz2;->e:Z

    .line 346
    .line 347
    :cond_9
    const-wide/16 v9, 0x0

    .line 348
    .line 349
    iput-wide v9, v8, Lr00;->g:J

    .line 350
    .line 351
    const/4 v7, 0x0

    .line 352
    iput-boolean v7, v8, Lr00;->c:Z

    .line 353
    .line 354
    const/4 v7, 0x0

    .line 355
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 356
    .line 357
    .line 358
    move-result v8

    .line 359
    if-ge v7, v8, :cond_b

    .line 360
    .line 361
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v8

    .line 365
    if-nez v8, :cond_a

    .line 366
    .line 367
    add-int/lit8 v7, v7, 0x1

    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_a
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    invoke-static {}, Lg9;->a()V

    .line 378
    .line 379
    .line 380
    return-void

    .line 381
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 382
    .line 383
    .line 384
    move-result v7

    .line 385
    const/4 v12, 0x1

    .line 386
    sub-int/2addr v7, v12

    .line 387
    :goto_7
    if-ltz v7, :cond_d

    .line 388
    .line 389
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v8

    .line 393
    if-nez v8, :cond_c

    .line 394
    .line 395
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    :cond_c
    add-int/lit8 v7, v7, -0x1

    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_d
    :goto_8
    add-int/lit8 v7, v30, 0x1

    .line 402
    .line 403
    const/4 v6, 0x0

    .line 404
    goto/16 :goto_0

    .line 405
    .line 406
    :cond_e
    iget-boolean v1, v0, Lz2;->e:Z

    .line 407
    .line 408
    if-eqz v1, :cond_11

    .line 409
    .line 410
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    const/4 v12, 0x1

    .line 415
    sub-int/2addr v1, v12

    .line 416
    :goto_9
    if-ltz v1, :cond_10

    .line 417
    .line 418
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    if-nez v2, :cond_f

    .line 423
    .line 424
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    :cond_f
    add-int/lit8 v1, v1, -0x1

    .line 428
    .line 429
    goto :goto_9

    .line 430
    :cond_10
    const/4 v7, 0x0

    .line 431
    iput-boolean v7, v0, Lz2;->e:Z

    .line 432
    .line 433
    :cond_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-lez v1, :cond_13

    .line 438
    .line 439
    iget-object v1, v0, Lz2;->d:Ly2;

    .line 440
    .line 441
    if-nez v1, :cond_12

    .line 442
    .line 443
    new-instance v1, Ly2;

    .line 444
    .line 445
    iget-object v2, v0, Lz2;->c:Lo0;

    .line 446
    .line 447
    invoke-direct {v1, v2}, Ly2;-><init>(Lo0;)V

    .line 448
    .line 449
    .line 450
    iput-object v1, v0, Lz2;->d:Ly2;

    .line 451
    .line 452
    :cond_12
    iget-object v0, v0, Lz2;->d:Ly2;

    .line 453
    .line 454
    iget-object v1, v0, Ly2;->c:Ljava/lang/Object;

    .line 455
    .line 456
    check-cast v1, Landroid/view/Choreographer;

    .line 457
    .line 458
    iget-object v0, v0, Ly2;->d:Ljava/lang/Object;

    .line 459
    .line 460
    check-cast v0, Lx2;

    .line 461
    .line 462
    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 463
    .line 464
    .line 465
    :cond_13
    return-void
.end method
