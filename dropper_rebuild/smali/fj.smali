.class public final Lfj;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Landroid/view/LayoutInflater$Factory2;

.field public final a:Lpj;

.method public constructor <init>(Lpj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfj;->a:Lpj;

    .line 5
    .line 6
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    const-class v4, Landroidx/fragment/app/FragmentContainerView;

    .line 10
    .line 11
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget-object v5, v0, Lfj;->a:Lpj;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    new-instance v0, Landroidx/fragment/app/FragmentContainerView;

    .line 24
    .line 25
    invoke-direct {v0, v2, v3, v5}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lpj;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    const-string v4, "fragment"

    .line 30
    .line 31
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v4, 0x0

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto/16 :goto_9

    .line 39
    .line 40
    :cond_1
    const-string v1, "class"

    .line 41
    .line 42
    invoke-interface {v3, v4, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sget-object v6, Lew;->Fragment:[I

    .line 47
    .line 48
    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    sget v1, Lew;->Fragment_android_name:I

    .line 55
    .line 56
    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :cond_2
    sget v7, Lew;->Fragment_android_id:I

    .line 61
    .line 62
    const/4 v8, -0x1

    .line 63
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    sget v9, Lew;->Fragment_android_tag:I

    .line 68
    .line 69
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    .line 75
    .line 76
    if-eqz v1, :cond_1a

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const/4 v10, 0x0

    .line 83
    :try_start_0
    invoke-static {v6, v1}, Lkj;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    const-class v11, Laj;

    .line 88
    .line 89
    invoke-virtual {v11, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 90
    .line 91
    .line 92
    move-result v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move v6, v10

    .line 95
    :goto_0
    if-nez v6, :cond_3

    .line 96
    .line 97
    goto/16 :goto_9

    .line 98
    .line 99
    :cond_3
    if-eqz p1, :cond_4

    .line 100
    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    :cond_4
    if-ne v10, v8, :cond_6

    .line 106
    .line 107
    if-ne v7, v8, :cond_6

    .line 108
    .line 109
    if-eqz v9, :cond_5

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    invoke-interface {v3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    .line 127
    .line 128
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :cond_6
    :goto_1
    if-eq v7, v8, :cond_7

    .line 143
    .line 144
    invoke-virtual {v5, v7}, Lpj;->A(I)Laj;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    goto :goto_2

    .line 149
    :cond_7
    move-object v6, v4

    .line 150
    :goto_2
    const/4 v11, 0x1

    .line 151
    if-nez v6, :cond_c

    .line 152
    .line 153
    if-eqz v9, :cond_c

    .line 154
    .line 155
    iget-object v6, v5, Lpj;->c:Lle;

    .line 156
    .line 157
    iget-object v12, v6, Lle;->a:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v12, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    sub-int/2addr v13, v11

    .line 166
    :goto_3
    if-ltz v13, :cond_9

    .line 167
    .line 168
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v14

    .line 172
    check-cast v14, Laj;

    .line 173
    .line 174
    if-eqz v14, :cond_8

    .line 175
    .line 176
    iget-object v15, v14, Laj;->x:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v15

    .line 182
    if-eqz v15, :cond_8

    .line 183
    .line 184
    move-object v6, v14

    .line 185
    goto :goto_4

    .line 186
    :cond_8
    add-int/lit8 v13, v13, -0x1

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_9
    iget-object v6, v6, Lle;->b:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v6, Ljava/util/HashMap;

    .line 192
    .line 193
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    if-eqz v12, :cond_b

    .line 206
    .line 207
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    check-cast v12, Lxj;

    .line 212
    .line 213
    if-eqz v12, :cond_a

    .line 214
    .line 215
    iget-object v12, v12, Lxj;->c:Laj;

    .line 216
    .line 217
    iget-object v13, v12, Laj;->x:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    if-eqz v13, :cond_a

    .line 224
    .line 225
    move-object v6, v12

    .line 226
    goto :goto_4

    .line 227
    :cond_b
    move-object v6, v4

    .line 228
    :cond_c
    :goto_4
    if-nez v6, :cond_d

    .line 229
    .line 230
    if-eq v10, v8, :cond_d

    .line 231
    .line 232
    invoke-virtual {v5, v10}, Lpj;->A(I)Laj;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    :cond_d
    const/4 v8, 0x2

    .line 237
    if-nez v6, :cond_11

    .line 238
    .line 239
    invoke-virtual {v5}, Lpj;->C()Lkj;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3, v1}, Lkj;->a(Ljava/lang/String;)Laj;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    iput-boolean v11, v6, Laj;->m:Z

    .line 251
    .line 252
    if-eqz v7, :cond_e

    .line 253
    .line 254
    move v2, v7

    .line 255
    goto :goto_5

    .line 256
    :cond_e
    move v2, v10

    .line 257
    :goto_5
    iput v2, v6, Laj;->v:I

    .line 258
    .line 259
    iput v10, v6, Laj;->w:I

    .line 260
    .line 261
    iput-object v9, v6, Laj;->x:Ljava/lang/String;

    .line 262
    .line 263
    iput-boolean v11, v6, Laj;->n:Z

    .line 264
    .line 265
    iput-object v5, v6, Laj;->r:Lpj;

    .line 266
    .line 267
    iget-object v2, v5, Lpj;->t:Lcj;

    .line 268
    .line 269
    iput-object v2, v6, Laj;->s:Lcj;

    .line 270
    .line 271
    iget-object v3, v2, Lcj;->F:Lf3;

    .line 272
    .line 273
    iput-boolean v11, v6, Laj;->C:Z

    .line 274
    .line 275
    if-nez v2, :cond_f

    .line 276
    .line 277
    move-object v2, v4

    .line 278
    goto :goto_6

    .line 279
    :cond_f
    iget-object v2, v2, Lcj;->E:Lf3;

    .line 280
    .line 281
    :goto_6
    if-eqz v2, :cond_10

    .line 282
    .line 283
    iput-boolean v11, v6, Laj;->C:Z

    .line 284
    .line 285
    :cond_10
    invoke-virtual {v5, v6}, Lpj;->a(Laj;)Lxj;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-static {v8}, Lpj;->E(I)Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-eqz v3, :cond_14

    .line 294
    .line 295
    invoke-virtual {v6}, Laj;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    goto :goto_8

    .line 302
    :cond_11
    iget-boolean v2, v6, Laj;->n:Z

    .line 303
    .line 304
    if-nez v2, :cond_19

    .line 305
    .line 306
    iput-boolean v11, v6, Laj;->n:Z

    .line 307
    .line 308
    iput-object v5, v6, Laj;->r:Lpj;

    .line 309
    .line 310
    iget-object v2, v5, Lpj;->t:Lcj;

    .line 311
    .line 312
    iput-object v2, v6, Laj;->s:Lcj;

    .line 313
    .line 314
    iget-object v3, v2, Lcj;->F:Lf3;

    .line 315
    .line 316
    iput-boolean v11, v6, Laj;->C:Z

    .line 317
    .line 318
    if-nez v2, :cond_12

    .line 319
    .line 320
    move-object v2, v4

    .line 321
    goto :goto_7

    .line 322
    :cond_12
    iget-object v2, v2, Lcj;->E:Lf3;

    .line 323
    .line 324
    :goto_7
    if-eqz v2, :cond_13

    .line 325
    .line 326
    iput-boolean v11, v6, Laj;->C:Z

    .line 327
    .line 328
    :cond_13
    invoke-virtual {v5, v6}, Lpj;->f(Laj;)Lxj;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-static {v8}, Lpj;->E(I)Z

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    if-eqz v3, :cond_14

    .line 337
    .line 338
    invoke-virtual {v6}, Laj;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    :cond_14
    :goto_8
    move-object/from16 v3, p1

    .line 345
    .line 346
    check-cast v3, Landroid/view/ViewGroup;

    .line 347
    .line 348
    sget-object v5, Lzj;->a:Lyj;

    .line 349
    .line 350
    new-instance v5, Lvj;

    .line 351
    .line 352
    new-instance v8, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    const-string v10, "Attempting to use <fragment> tag to add fragment "

    .line 355
    .line 356
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v10, " to container "

    .line 363
    .line 364
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v8

    .line 374
    invoke-direct {v5, v6, v8}, Lvj;-><init>(Laj;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    const/4 v8, 0x3

    .line 378
    invoke-static {v8}, Lpj;->E(I)Z

    .line 379
    .line 380
    .line 381
    move-result v8

    .line 382
    if-eqz v8, :cond_15

    .line 383
    .line 384
    iget-object v5, v5, Lvj;->a:Laj;

    .line 385
    .line 386
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    :cond_15
    invoke-static {v6}, Lzj;->a(Laj;)Lyj;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    iput-object v3, v6, Laj;->D:Landroid/view/ViewGroup;

    .line 397
    .line 398
    invoke-virtual {v2}, Lxj;->k()V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2}, Lxj;->j()V

    .line 402
    .line 403
    .line 404
    iget-object v3, v6, Laj;->E:Landroid/view/View;

    .line 405
    .line 406
    if-eqz v3, :cond_18

    .line 407
    .line 408
    if-eqz v7, :cond_16

    .line 409
    .line 410
    invoke-virtual {v3, v7}, Landroid/view/View;->setId(I)V

    .line 411
    .line 412
    .line 413
    :cond_16
    iget-object v1, v6, Laj;->E:Landroid/view/View;

    .line 414
    .line 415
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    if-nez v1, :cond_17

    .line 420
    .line 421
    iget-object v1, v6, Laj;->E:Landroid/view/View;

    .line 422
    .line 423
    invoke-virtual {v1, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    :cond_17
    iget-object v1, v6, Laj;->E:Landroid/view/View;

    .line 427
    .line 428
    new-instance v3, Lej;

    .line 429
    .line 430
    invoke-direct {v3, v0, v2}, Lej;-><init>(Lfj;Lxj;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 434
    .line 435
    .line 436
    iget-object v0, v6, Laj;->E:Landroid/view/View;

    .line 437
    .line 438
    return-object v0

    .line 439
    :cond_18
    const-string v0, "Fragment "

    .line 440
    .line 441
    const-string v2, " did not create a view."

    .line 442
    .line 443
    invoke-static {v0, v1, v2}, Lk00;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-static {v0}, Lg9;->k(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    return-object v4

    .line 451
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 452
    .line 453
    invoke-interface {v3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    const-string v2, ": Duplicate id 0x"

    .line 474
    .line 475
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    const-string v2, ", tag "

    .line 482
    .line 483
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string v2, ", or parent id 0x"

    .line 490
    .line 491
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    const-string v2, " with another fragment for "

    .line 498
    .line 499
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    throw v0

    .line 513
    :cond_1a
    :goto_9
    return-object v4
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 514
    invoke-virtual {p0, v0, p1, p2, p3}, Lfj;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
