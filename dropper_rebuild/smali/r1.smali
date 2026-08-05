.class public final synthetic Lr1;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lr1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lr1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lr1;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    iget-object v0, v0, Lr1;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v0, Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    .line 21
    .line 22
    invoke-static {v1, v2}, Ljc;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 27
    .line 28
    invoke-virtual {v1, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    check-cast v0, Lv7;

    .line 41
    .line 42
    iput-boolean v4, v0, Lv7;->c:Z

    .line 43
    .line 44
    iget-object v1, v0, Lv7;->e:Loc;

    .line 45
    .line 46
    check-cast v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 47
    .line 48
    iget-object v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:La60;

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {v2}, La60;->f()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    iget v1, v0, Lv7;->b:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lv7;->a(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 65
    .line 66
    if-ne v2, v3, :cond_1

    .line 67
    .line 68
    iget v0, v0, Lv7;->b:I

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r(I)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    return-void

    .line 74
    :pswitch_2
    check-cast v0, Lcom/pulse/live/service/SecureService;

    .line 75
    .line 76
    sget v1, Lcom/pulse/live/service/SecureService;->h:I

    .line 77
    .line 78
    new-instance v1, Ljava/io/FileInputStream;

    .line 79
    .line 80
    iget-object v2, v0, Lcom/pulse/live/service/SecureService;->a:Landroid/os/ParcelFileDescriptor;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 90
    .line 91
    .line 92
    const/16 v2, 0x7fff

    .line 93
    .line 94
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    :goto_1
    :try_start_0
    iget-boolean v3, v0, Lcom/pulse/live/service/SecureService;->c:Z

    .line 99
    .line 100
    if-eqz v3, :cond_3

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-lez v3, :cond_2

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    const-wide/16 v3, 0x64

    .line 117
    .line 118
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catch_0
    :cond_3
    return-void

    .line 123
    :pswitch_3
    check-cast v0, Lcom/google/android/material/timepicker/ClockFaceView;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->n()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_4
    check-cast v0, Llg;

    .line 130
    .line 131
    iget-object v1, v0, Llg;->h:Landroid/widget/AutoCompleteTextView;

    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-virtual {v0, v1}, Llg;->s(Z)V

    .line 138
    .line 139
    .line 140
    iput-boolean v1, v0, Llg;->m:Z

    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_5
    check-cast v0, Leb;

    .line 144
    .line 145
    invoke-static {v0}, Leb;->a(Leb;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_6
    check-cast v0, Lza;

    .line 150
    .line 151
    iget-object v1, v0, Lza;->b:Ljava/lang/Runnable;

    .line 152
    .line 153
    if-eqz v1, :cond_4

    .line 154
    .line 155
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 156
    .line 157
    .line 158
    iput-object v2, v0, Lza;->b:Ljava/lang/Runnable;

    .line 159
    .line 160
    :cond_4
    return-void

    .line 161
    :pswitch_7
    check-cast v0, Lx9;

    .line 162
    .line 163
    invoke-virtual {v0, v5}, Lx9;->s(Z)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :pswitch_8
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 168
    .line 169
    invoke-virtual {v0}, Lww;->l0()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :pswitch_9
    check-cast v0, Landroid/content/Context;

    .line 174
    .line 175
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 176
    .line 177
    const/16 v3, 0x21

    .line 178
    .line 179
    if-lt v1, v3, :cond_a

    .line 180
    .line 181
    new-instance v4, Landroid/content/ComponentName;

    .line 182
    .line 183
    const-string v6, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    .line 184
    .line 185
    invoke-direct {v4, v0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-eq v6, v5, :cond_a

    .line 197
    .line 198
    const-string v6, "locale"

    .line 199
    .line 200
    if-lt v1, v3, :cond_7

    .line 201
    .line 202
    sget-object v1, Ls3;->g:Lq6;

    .line 203
    .line 204
    invoke-virtual {v1}, Lq6;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    :cond_5
    move-object v3, v1

    .line 209
    check-cast v3, Lyp;

    .line 210
    .line 211
    invoke-virtual {v3}, Lyp;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    if-eqz v7, :cond_6

    .line 216
    .line 217
    invoke-virtual {v3}, Lyp;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    check-cast v3, Ls3;

    .line 228
    .line 229
    if-eqz v3, :cond_5

    .line 230
    .line 231
    check-cast v3, Lg4;

    .line 232
    .line 233
    iget-object v3, v3, Lg4;->k:Landroid/content/Context;

    .line 234
    .line 235
    if-eqz v3, :cond_5

    .line 236
    .line 237
    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    :cond_6
    if-eqz v2, :cond_8

    .line 242
    .line 243
    invoke-static {v2}, Lo3;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    new-instance v2, Lbp;

    .line 248
    .line 249
    new-instance v3, Lcp;

    .line 250
    .line 251
    invoke-direct {v3, v1}, Lcp;-><init>(Landroid/os/LocaleList;)V

    .line 252
    .line 253
    .line 254
    invoke-direct {v2, v3}, Lbp;-><init>(Lcp;)V

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_7
    sget-object v2, Ls3;->c:Lbp;

    .line 259
    .line 260
    if-eqz v2, :cond_8

    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_8
    sget-object v2, Lbp;->b:Lbp;

    .line 264
    .line 265
    :goto_2
    iget-object v1, v2, Lbp;->a:Lcp;

    .line 266
    .line 267
    iget-object v1, v1, Lcp;->a:Landroid/os/LocaleList;

    .line 268
    .line 269
    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_9

    .line 274
    .line 275
    invoke-static {v0}, Lnm;->K(Landroid/content/Context;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    if-eqz v2, :cond_9

    .line 284
    .line 285
    invoke-static {v1}, Ln3;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-static {v2, v1}, Lo3;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    .line 290
    .line 291
    .line 292
    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v0, v4, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 297
    .line 298
    .line 299
    :cond_a
    sput-boolean v5, Ls3;->f:Z

    .line 300
    .line 301
    return-void

    .line 302
    :pswitch_a
    move-object v1, v0

    .line 303
    check-cast v1, Landroid/app/Activity;

    .line 304
    .line 305
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-nez v0, :cond_14

    .line 310
    .line 311
    sget-object v2, Lv1;->g:Landroid/os/Handler;

    .line 312
    .line 313
    sget-object v0, Lv1;->f:Ljava/lang/reflect/Method;

    .line 314
    .line 315
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 316
    .line 317
    const/16 v7, 0x1c

    .line 318
    .line 319
    if-lt v6, v7, :cond_b

    .line 320
    .line 321
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_7

    .line 325
    .line 326
    :cond_b
    const/16 v7, 0x1b

    .line 327
    .line 328
    const/16 v8, 0x1a

    .line 329
    .line 330
    if-eq v6, v8, :cond_c

    .line 331
    .line 332
    if-ne v6, v7, :cond_d

    .line 333
    .line 334
    :cond_c
    if-nez v0, :cond_d

    .line 335
    .line 336
    goto/16 :goto_6

    .line 337
    .line 338
    :cond_d
    sget-object v9, Lv1;->e:Ljava/lang/reflect/Method;

    .line 339
    .line 340
    if-nez v9, :cond_e

    .line 341
    .line 342
    sget-object v9, Lv1;->d:Ljava/lang/reflect/Method;

    .line 343
    .line 344
    if-nez v9, :cond_e

    .line 345
    .line 346
    goto/16 :goto_6

    .line 347
    .line 348
    :cond_e
    :try_start_1
    sget-object v9, Lv1;->c:Ljava/lang/reflect/Field;

    .line 349
    .line 350
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v10

    .line 354
    if-nez v10, :cond_f

    .line 355
    .line 356
    goto :goto_6

    .line 357
    :cond_f
    sget-object v9, Lv1;->b:Ljava/lang/reflect/Field;

    .line 358
    .line 359
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v9

    .line 363
    if-nez v9, :cond_10

    .line 364
    .line 365
    goto :goto_6

    .line 366
    :cond_10
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 367
    .line 368
    .line 369
    move-result-object v11

    .line 370
    new-instance v12, Lu1;

    .line 371
    .line 372
    invoke-direct {v12, v1}, Lu1;-><init>(Landroid/app/Activity;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v11, v12}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 376
    .line 377
    .line 378
    new-instance v13, Lj1;

    .line 379
    .line 380
    invoke-direct {v13, v12, v10, v5, v4}, Lj1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 384
    .line 385
    .line 386
    if-eq v6, v8, :cond_12

    .line 387
    .line 388
    if-ne v6, v7, :cond_11

    .line 389
    .line 390
    goto :goto_3

    .line 391
    :cond_11
    move v5, v4

    .line 392
    :cond_12
    :goto_3
    if-eqz v5, :cond_13

    .line 393
    .line 394
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v13

    .line 398
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 399
    .line 400
    const/4 v15, 0x0

    .line 401
    const/16 v16, 0x0

    .line 402
    .line 403
    move-object v5, v11

    .line 404
    const/4 v11, 0x0

    .line 405
    move-object v6, v12

    .line 406
    const/4 v12, 0x0

    .line 407
    move-object/from16 v17, v14

    .line 408
    .line 409
    move-object/from16 v18, v14

    .line 410
    .line 411
    :try_start_3
    filled-new-array/range {v10 .. v18}, [Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v7

    .line 415
    invoke-virtual {v0, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    goto :goto_4

    .line 419
    :catchall_0
    move-exception v0

    .line 420
    goto :goto_5

    .line 421
    :catchall_1
    move-exception v0

    .line 422
    move-object v5, v11

    .line 423
    move-object v6, v12

    .line 424
    goto :goto_5

    .line 425
    :cond_13
    move-object v5, v11

    .line 426
    move-object v6, v12

    .line 427
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 428
    .line 429
    .line 430
    :goto_4
    :try_start_4
    new-instance v0, Lj1;

    .line 431
    .line 432
    invoke-direct {v0, v5, v6, v3, v4}, Lj1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 436
    .line 437
    .line 438
    goto :goto_7

    .line 439
    :goto_5
    new-instance v7, Lj1;

    .line 440
    .line 441
    invoke-direct {v7, v5, v6, v3, v4}, Lj1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 445
    .line 446
    .line 447
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 448
    :catchall_2
    :goto_6
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    .line 449
    .line 450
    .line 451
    :cond_14
    :goto_7
    return-void

    .line 452
    nop

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
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
