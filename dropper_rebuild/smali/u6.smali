.class public final Lu6;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Ljava/lang/Runnable;

.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lu6;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lu6;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lu6;->a:I

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lu6;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, La60;

    .line 12
    .line 13
    invoke-virtual {v0, v7}, La60;->m(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, v0, Lu6;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Ll1;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Ll1;->l()Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :pswitch_1
    iget-object v0, v0, Lu6;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 38
    .line 39
    iget-object v0, v0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2
    iget-object v0, v0, Lu6;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A0()Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_3
    iget-object v0, v0, Lu6;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 59
    .line 60
    iget-boolean v1, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->f:Z

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "input_method"

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 75
    .line 76
    invoke-virtual {v1, v0, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 77
    .line 78
    .line 79
    iput-boolean v7, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->f:Z

    .line 80
    .line 81
    :cond_1
    return-void

    .line 82
    :pswitch_4
    iget-object v0, v0, Lu6;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 87
    .line 88
    if-eqz v1, :cond_e

    .line 89
    .line 90
    check-cast v1, Lhe;

    .line 91
    .line 92
    iget-wide v8, v1, Lsw;->d:J

    .line 93
    .line 94
    iget-object v10, v1, Lhe;->h:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    iget-object v12, v1, Lhe;->j:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    iget-object v14, v1, Lhe;->k:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    const-wide/16 v16, 0x0

    .line 113
    .line 114
    iget-object v3, v1, Lhe;->i:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v11, :cond_2

    .line 121
    .line 122
    if-eqz v13, :cond_2

    .line 123
    .line 124
    if-eqz v4, :cond_2

    .line 125
    .line 126
    if-eqz v15, :cond_2

    .line 127
    .line 128
    goto/16 :goto_8

    .line 129
    .line 130
    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    move v6, v7

    .line 135
    :goto_0
    if-ge v6, v5, :cond_3

    .line 136
    .line 137
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v19

    .line 141
    add-int/lit8 v6, v6, 0x1

    .line 142
    .line 143
    move-object/from16 v7, v19

    .line 144
    .line 145
    check-cast v7, Lkx;

    .line 146
    .line 147
    iget-object v2, v7, Lkx;->a:Landroid/view/View;

    .line 148
    .line 149
    move/from16 p0, v4

    .line 150
    .line 151
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    move/from16 v21, v5

    .line 156
    .line 157
    iget-object v5, v1, Lhe;->q:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    move/from16 v22, v6

    .line 167
    .line 168
    const/4 v6, 0x0

    .line 169
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    new-instance v6, Lce;

    .line 174
    .line 175
    invoke-direct {v6, v1, v7, v4, v2}, Lce;-><init>(Lhe;Lkx;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 183
    .line 184
    .line 185
    move/from16 v4, p0

    .line 186
    .line 187
    move/from16 v5, v21

    .line 188
    .line 189
    move/from16 v6, v22

    .line 190
    .line 191
    const/4 v7, 0x0

    .line 192
    goto :goto_0

    .line 193
    :cond_3
    move/from16 p0, v4

    .line 194
    .line 195
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 196
    .line 197
    .line 198
    if-nez v13, :cond_5

    .line 199
    .line 200
    new-instance v2, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 206
    .line 207
    .line 208
    iget-object v4, v1, Lhe;->m:Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 214
    .line 215
    .line 216
    new-instance v4, Lbe;

    .line 217
    .line 218
    const/4 v5, 0x0

    .line 219
    invoke-direct {v4, v1, v2, v5}, Lbe;-><init>(Lhe;Ljava/util/ArrayList;I)V

    .line 220
    .line 221
    .line 222
    if-nez v11, :cond_4

    .line 223
    .line 224
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    check-cast v2, Lge;

    .line 229
    .line 230
    iget-object v2, v2, Lge;->a:Lkx;

    .line 231
    .line 232
    iget-object v2, v2, Lkx;->a:Landroid/view/View;

    .line 233
    .line 234
    sget-object v5, Lw50;->a:Ljava/util/WeakHashMap;

    .line 235
    .line 236
    invoke-virtual {v2, v4, v8, v9}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_4
    invoke-virtual {v4}, Lbe;->run()V

    .line 241
    .line 242
    .line 243
    :cond_5
    :goto_1
    if-nez v15, :cond_7

    .line 244
    .line 245
    new-instance v2, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    .line 252
    .line 253
    iget-object v4, v1, Lhe;->n:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 259
    .line 260
    .line 261
    new-instance v4, Lbe;

    .line 262
    .line 263
    const/4 v5, 0x1

    .line 264
    invoke-direct {v4, v1, v2, v5}, Lbe;-><init>(Lhe;Ljava/util/ArrayList;I)V

    .line 265
    .line 266
    .line 267
    if-nez v11, :cond_6

    .line 268
    .line 269
    const/4 v5, 0x0

    .line 270
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    check-cast v2, Lfe;

    .line 275
    .line 276
    iget-object v2, v2, Lfe;->a:Lkx;

    .line 277
    .line 278
    iget-object v2, v2, Lkx;->a:Landroid/view/View;

    .line 279
    .line 280
    sget-object v5, Lw50;->a:Ljava/util/WeakHashMap;

    .line 281
    .line 282
    invoke-virtual {v2, v4, v8, v9}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_6
    invoke-virtual {v4}, Lbe;->run()V

    .line 287
    .line 288
    .line 289
    :cond_7
    :goto_2
    if-nez p0, :cond_d

    .line 290
    .line 291
    new-instance v2, Ljava/util/ArrayList;

    .line 292
    .line 293
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 297
    .line 298
    .line 299
    iget-object v4, v1, Lhe;->l:Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 305
    .line 306
    .line 307
    new-instance v3, Lbe;

    .line 308
    .line 309
    const/4 v4, 0x2

    .line 310
    invoke-direct {v3, v1, v2, v4}, Lbe;-><init>(Lhe;Ljava/util/ArrayList;I)V

    .line 311
    .line 312
    .line 313
    if-eqz v11, :cond_9

    .line 314
    .line 315
    if-eqz v13, :cond_9

    .line 316
    .line 317
    if-nez v15, :cond_8

    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_8
    invoke-virtual {v3}, Lbe;->run()V

    .line 321
    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_9
    :goto_3
    if-nez v11, :cond_a

    .line 325
    .line 326
    goto :goto_4

    .line 327
    :cond_a
    move-wide/from16 v8, v16

    .line 328
    .line 329
    :goto_4
    if-nez v13, :cond_b

    .line 330
    .line 331
    iget-wide v4, v1, Lsw;->e:J

    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_b
    move-wide/from16 v4, v16

    .line 335
    .line 336
    :goto_5
    if-nez v15, :cond_c

    .line 337
    .line 338
    iget-wide v6, v1, Lsw;->f:J

    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_c
    move-wide/from16 v6, v16

    .line 342
    .line 343
    :goto_6
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 344
    .line 345
    .line 346
    move-result-wide v4

    .line 347
    add-long/2addr v4, v8

    .line 348
    const/4 v1, 0x0

    .line 349
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    check-cast v2, Lkx;

    .line 354
    .line 355
    iget-object v2, v2, Lkx;->a:Landroid/view/View;

    .line 356
    .line 357
    sget-object v6, Lw50;->a:Ljava/util/WeakHashMap;

    .line 358
    .line 359
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 360
    .line 361
    .line 362
    goto :goto_9

    .line 363
    :cond_d
    :goto_7
    const/4 v1, 0x0

    .line 364
    goto :goto_9

    .line 365
    :cond_e
    :goto_8
    move v1, v7

    .line 366
    :goto_9
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    .line 367
    .line 368
    return-void

    .line 369
    :pswitch_5
    iget-object v1, v0, Lu6;->b:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v1, Lms;

    .line 372
    .line 373
    iget-object v1, v1, Lms;->a:Ljava/lang/Object;

    .line 374
    .line 375
    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v2, v0, Lu6;->b:Ljava/lang/Object;

    .line 377
    .line 378
    check-cast v2, Lms;

    .line 379
    .line 380
    iget-object v2, v2, Lms;->f:Ljava/lang/Object;

    .line 381
    .line 382
    iget-object v3, v0, Lu6;->b:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast v3, Lms;

    .line 385
    .line 386
    sget-object v4, Lms;->j:Ljava/lang/Object;

    .line 387
    .line 388
    iput-object v4, v3, Lms;->f:Ljava/lang/Object;

    .line 389
    .line 390
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    iget-object v0, v0, Lu6;->b:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v0, Lms;

    .line 394
    .line 395
    invoke-virtual {v0, v2}, Lms;->d(Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    return-void

    .line 399
    :catchall_0
    move-exception v0

    .line 400
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    throw v0

    .line 402
    :pswitch_6
    iget-object v0, v0, Lu6;->b:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v0, Lpj;

    .line 405
    .line 406
    const/4 v5, 0x1

    .line 407
    invoke-virtual {v0, v5}, Lpj;->y(Z)Z

    .line 408
    .line 409
    .line 410
    return-void

    .line 411
    :pswitch_7
    const/4 v5, 0x1

    .line 412
    iget-object v0, v0, Lu6;->b:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v0, Lbi;

    .line 415
    .line 416
    iget-object v1, v0, Lbi;->z:Landroid/animation/ValueAnimator;

    .line 417
    .line 418
    iget v2, v0, Lbi;->A:I

    .line 419
    .line 420
    if-eq v2, v5, :cond_f

    .line 421
    .line 422
    const/4 v4, 0x2

    .line 423
    if-eq v2, v4, :cond_10

    .line 424
    .line 425
    goto :goto_a

    .line 426
    :cond_f
    const/4 v4, 0x2

    .line 427
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 428
    .line 429
    .line 430
    :cond_10
    const/4 v2, 0x3

    .line 431
    iput v2, v0, Lbi;->A:I

    .line 432
    .line 433
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    check-cast v0, Ljava/lang/Float;

    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    new-array v2, v4, [F

    .line 444
    .line 445
    const/16 v20, 0x0

    .line 446
    .line 447
    aput v0, v2, v20

    .line 448
    .line 449
    const/16 v18, 0x1

    .line 450
    .line 451
    const/16 v19, 0x0

    .line 452
    .line 453
    aput v19, v2, v18

    .line 454
    .line 455
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 456
    .line 457
    .line 458
    const-wide/16 v2, 0x1f4

    .line 459
    .line 460
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 464
    .line 465
    .line 466
    :goto_a
    return-void

    .line 467
    :pswitch_8
    iget-object v0, v0, Lu6;->b:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast v0, Lgg;

    .line 470
    .line 471
    const/4 v1, 0x0

    .line 472
    iput-object v1, v0, Lgg;->l:Lu6;

    .line 473
    .line 474
    invoke-virtual {v0}, Lgg;->drawableStateChanged()V

    .line 475
    .line 476
    .line 477
    return-void

    .line 478
    :pswitch_9
    iget-object v0, v0, Lu6;->b:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v0, Lef;

    .line 481
    .line 482
    iget-object v1, v0, Lef;->U:Lcf;

    .line 483
    .line 484
    iget-object v0, v0, Lef;->c0:Landroid/app/Dialog;

    .line 485
    .line 486
    invoke-virtual {v1, v0}, Lcf;->onDismiss(Landroid/content/DialogInterface;)V

    .line 487
    .line 488
    .line 489
    return-void

    .line 490
    :pswitch_a
    iget-object v0, v0, Lu6;->b:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast v0, Lke;

    .line 493
    .line 494
    iget-object v1, v0, Lke;->b:Landroid/view/ViewGroup;

    .line 495
    .line 496
    iget-object v2, v0, Lke;->c:Landroid/view/View;

    .line 497
    .line 498
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 499
    .line 500
    .line 501
    iget-object v0, v0, Lke;->d:Lme;

    .line 502
    .line 503
    invoke-virtual {v0}, Ld4;->e()V

    .line 504
    .line 505
    .line 506
    return-void

    .line 507
    :pswitch_b
    iget-object v0, v0, Lu6;->b:Ljava/lang/Object;

    .line 508
    .line 509
    check-cast v0, Lv7;

    .line 510
    .line 511
    const/4 v5, 0x0

    .line 512
    iput-boolean v5, v0, Lv7;->c:Z

    .line 513
    .line 514
    iget-object v1, v0, Lv7;->e:Loc;

    .line 515
    .line 516
    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 517
    .line 518
    iget-object v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:La60;

    .line 519
    .line 520
    if-eqz v2, :cond_11

    .line 521
    .line 522
    invoke-virtual {v2}, La60;->f()Z

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    if-eqz v2, :cond_11

    .line 527
    .line 528
    iget v1, v0, Lv7;->b:I

    .line 529
    .line 530
    invoke-virtual {v0, v1}, Lv7;->a(I)V

    .line 531
    .line 532
    .line 533
    goto :goto_b

    .line 534
    :cond_11
    iget v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    .line 535
    .line 536
    const/4 v4, 0x2

    .line 537
    if-ne v2, v4, :cond_12

    .line 538
    .line 539
    iget v0, v0, Lv7;->b:I

    .line 540
    .line 541
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(I)V

    .line 542
    .line 543
    .line 544
    :cond_12
    :goto_b
    return-void

    .line 545
    :pswitch_c
    const-wide/16 v16, 0x0

    .line 546
    .line 547
    iget-object v1, v0, Lu6;->b:Ljava/lang/Object;

    .line 548
    .line 549
    check-cast v1, Lvo;

    .line 550
    .line 551
    iget-object v2, v1, Lvo;->c:Lgg;

    .line 552
    .line 553
    iget-object v3, v1, Lvo;->a:Lt6;

    .line 554
    .line 555
    iget-boolean v4, v1, Lvo;->o:Z

    .line 556
    .line 557
    if-nez v4, :cond_13

    .line 558
    .line 559
    goto/16 :goto_e

    .line 560
    .line 561
    :cond_13
    iget-boolean v4, v1, Lvo;->m:Z

    .line 562
    .line 563
    if-eqz v4, :cond_14

    .line 564
    .line 565
    const/4 v5, 0x0

    .line 566
    iput-boolean v5, v1, Lvo;->m:Z

    .line 567
    .line 568
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 569
    .line 570
    .line 571
    move-result-wide v4

    .line 572
    iput-wide v4, v3, Lt6;->e:J

    .line 573
    .line 574
    const-wide/16 v6, -0x1

    .line 575
    .line 576
    iput-wide v6, v3, Lt6;->g:J

    .line 577
    .line 578
    iput-wide v4, v3, Lt6;->f:J

    .line 579
    .line 580
    const/high16 v4, 0x3f000000

    .line 581
    .line 582
    iput v4, v3, Lt6;->h:F

    .line 583
    .line 584
    :cond_14
    iget-wide v4, v3, Lt6;->g:J

    .line 585
    .line 586
    cmp-long v4, v4, v16

    .line 587
    .line 588
    if-lez v4, :cond_15

    .line 589
    .line 590
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 591
    .line 592
    .line 593
    move-result-wide v4

    .line 594
    iget-wide v6, v3, Lt6;->g:J

    .line 595
    .line 596
    iget v8, v3, Lt6;->i:I

    .line 597
    .line 598
    int-to-long v8, v8

    .line 599
    add-long/2addr v6, v8

    .line 600
    cmp-long v4, v4, v6

    .line 601
    .line 602
    if-lez v4, :cond_15

    .line 603
    .line 604
    :goto_c
    const/4 v5, 0x0

    .line 605
    goto :goto_d

    .line 606
    :cond_15
    invoke-virtual {v1}, Lvo;->e()Z

    .line 607
    .line 608
    .line 609
    move-result v4

    .line 610
    if-nez v4, :cond_16

    .line 611
    .line 612
    goto :goto_c

    .line 613
    :goto_d
    iput-boolean v5, v1, Lvo;->o:Z

    .line 614
    .line 615
    goto :goto_e

    .line 616
    :cond_16
    const/4 v5, 0x0

    .line 617
    iget-boolean v4, v1, Lvo;->n:Z

    .line 618
    .line 619
    if-eqz v4, :cond_17

    .line 620
    .line 621
    iput-boolean v5, v1, Lvo;->n:Z

    .line 622
    .line 623
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 624
    .line 625
    .line 626
    move-result-wide v6

    .line 627
    const/4 v12, 0x0

    .line 628
    const/4 v13, 0x0

    .line 629
    const/4 v10, 0x3

    .line 630
    const/4 v11, 0x0

    .line 631
    move-wide v8, v6

    .line 632
    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 633
    .line 634
    .line 635
    move-result-object v4

    .line 636
    invoke-virtual {v2, v4}, Lgg;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 637
    .line 638
    .line 639
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 640
    .line 641
    .line 642
    :cond_17
    iget-wide v4, v3, Lt6;->f:J

    .line 643
    .line 644
    cmp-long v4, v4, v16

    .line 645
    .line 646
    if-eqz v4, :cond_18

    .line 647
    .line 648
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 649
    .line 650
    .line 651
    move-result-wide v4

    .line 652
    invoke-virtual {v3, v4, v5}, Lt6;->a(J)F

    .line 653
    .line 654
    .line 655
    move-result v6

    .line 656
    const/high16 v7, -0x3f800000

    .line 657
    .line 658
    mul-float/2addr v7, v6

    .line 659
    mul-float/2addr v7, v6

    .line 660
    const/high16 v8, 0x40800000

    .line 661
    .line 662
    mul-float/2addr v6, v8

    .line 663
    add-float/2addr v6, v7

    .line 664
    iget-wide v7, v3, Lt6;->f:J

    .line 665
    .line 666
    sub-long v7, v4, v7

    .line 667
    .line 668
    iput-wide v4, v3, Lt6;->f:J

    .line 669
    .line 670
    long-to-float v4, v7

    .line 671
    mul-float/2addr v4, v6

    .line 672
    iget v3, v3, Lt6;->d:F

    .line 673
    .line 674
    mul-float/2addr v4, v3

    .line 675
    float-to-int v3, v4

    .line 676
    iget-object v1, v1, Lvo;->q:Lgg;

    .line 677
    .line 678
    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 679
    .line 680
    .line 681
    sget-object v1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 682
    .line 683
    invoke-virtual {v2, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 684
    .line 685
    .line 686
    :goto_e
    return-void

    .line 687
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    .line 688
    .line 689
    const-string v1, "Cannot compute scroll delta before calling start()"

    .line 690
    .line 691
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    throw v0

    .line 695
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
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
