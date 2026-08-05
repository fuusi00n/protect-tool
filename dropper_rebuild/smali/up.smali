.class public final Lup;
.super Ls10;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Ltk;


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/io/File;

.field public h:I

.field public i:I

.field public final synthetic j:Lcom/pulse/live/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/pulse/live/ui/MainActivity;Lmc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lup;->j:Lcom/pulse/live/ui/MainActivity;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Ls10;-><init>(ILmc;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lhd;

    .line 2
    .line 3
    check-cast p2, Lmc;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lup;->h(Lmc;Ljava/lang/Object;)Lmc;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lup;

    .line 10
    .line 11
    sget-object p1, Lqg;->j:Lqg;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lup;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final h(Lmc;Ljava/lang/Object;)Lmc;
    .locals 0

    .line 1
    new-instance p2, Lup;

    .line 2
    .line 3
    iget-object p0, p0, Lup;->j:Lcom/pulse/live/ui/MainActivity;

    .line 4
    .line 5
    invoke-direct {p2, p0, p1}, Lup;-><init>(Lcom/pulse/live/ui/MainActivity;Lmc;)V

    .line 6
    .line 7
    .line 8
    return-object p2
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lqg;->j:Lqg;

    .line 4
    .line 5
    iget v2, v0, Lup;->i:I

    .line 6
    .line 7
    iget-object v4, v0, Lup;->j:Lcom/pulse/live/ui/MainActivity;

    .line 8
    .line 9
    const/16 v8, 0x4b

    .line 10
    .line 11
    const/16 v9, 0x50

    .line 12
    .line 13
    const/4 v12, 0x4

    .line 14
    const-string v13, ""

    .line 15
    .line 16
    const/4 v14, 0x0

    .line 17
    const-string v15, "statusText"

    .line 18
    .line 19
    const-wide/32 v16, 0xc350

    .line 20
    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    const/4 v7, 0x0

    .line 24
    sget-object v10, Lid;->a:Lid;

    .line 25
    .line 26
    packed-switch v2, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-static {v0}, Lg9;->k(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v7

    .line 35
    :pswitch_0
    iget v2, v0, Lup;->h:I

    .line 36
    .line 37
    iget-object v3, v0, Lup;->f:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v8, v0, Lup;->e:Ljava/lang/String;

    .line 40
    .line 41
    :try_start_0
    invoke-static/range {p1 .. p1}, Lzt;->w(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    .line 43
    .line 44
    move v14, v2

    .line 45
    const/16 v2, 0x12c

    .line 46
    .line 47
    const-wide/16 v11, 0x3e8

    .line 48
    .line 49
    goto/16 :goto_e

    .line 50
    .line 51
    :pswitch_1
    iget-object v2, v0, Lup;->f:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v3, v0, Lup;->e:Ljava/lang/String;

    .line 54
    .line 55
    :try_start_1
    invoke-static/range {p1 .. p1}, Lzt;->w(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    .line 58
    move v11, v14

    .line 59
    goto/16 :goto_b

    .line 60
    .line 61
    :pswitch_2
    iget-object v2, v0, Lup;->f:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v3, v0, Lup;->e:Ljava/lang/String;

    .line 64
    .line 65
    :try_start_2
    invoke-static/range {p1 .. p1}, Lzt;->w(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    move-object/from16 v8, p1

    .line 69
    .line 70
    move-object v5, v3

    .line 71
    move/from16 v18, v14

    .line 72
    .line 73
    move-object v3, v2

    .line 74
    goto/16 :goto_9

    .line 75
    .line 76
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lzt;->w(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 77
    .line 78
    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :pswitch_4
    iget v2, v0, Lup;->h:I

    .line 82
    .line 83
    iget-object v3, v0, Lup;->f:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v11, v0, Lup;->e:Ljava/lang/String;

    .line 86
    .line 87
    :try_start_3
    invoke-static/range {p1 .. p1}, Lzt;->w(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 88
    .line 89
    .line 90
    move-object v5, v3

    .line 91
    move/from16 v18, v14

    .line 92
    .line 93
    move v3, v2

    .line 94
    goto/16 :goto_6

    .line 95
    .line 96
    :pswitch_5
    iget-object v2, v0, Lup;->g:Ljava/io/File;

    .line 97
    .line 98
    iget-object v11, v0, Lup;->f:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v5, v0, Lup;->e:Ljava/lang/String;

    .line 101
    .line 102
    :try_start_4
    invoke-static/range {p1 .. p1}, Lzt;->w(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 103
    .line 104
    .line 105
    move-object v3, v11

    .line 106
    move/from16 v18, v14

    .line 107
    .line 108
    const/4 v14, 0x3

    .line 109
    goto/16 :goto_4

    .line 110
    .line 111
    :pswitch_6
    iget-object v2, v0, Lup;->g:Ljava/io/File;

    .line 112
    .line 113
    iget-object v5, v0, Lup;->f:Ljava/lang/String;

    .line 114
    .line 115
    iget-object v11, v0, Lup;->e:Ljava/lang/String;

    .line 116
    .line 117
    :try_start_5
    invoke-static/range {p1 .. p1}, Lzt;->w(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 118
    .line 119
    .line 120
    move-object v3, v5

    .line 121
    move-object v5, v11

    .line 122
    move/from16 v18, v14

    .line 123
    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :pswitch_7
    iget-object v2, v0, Lup;->f:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v5, v0, Lup;->e:Ljava/lang/String;

    .line 129
    .line 130
    :try_start_6
    invoke-static/range {p1 .. p1}, Lzt;->w(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 131
    .line 132
    .line 133
    move-object/from16 v3, p1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lzt;->w(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :try_start_7
    sget v2, Lcom/pulse/live/ui/MainActivity;->L:I

    .line 140
    .line 141
    invoke-virtual {v4}, Lcom/pulse/live/ui/MainActivity;->A()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v4}, Lcom/pulse/live/ui/MainActivity;->B()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    const/16 v11, 0x2d

    .line 150
    .line 151
    invoke-virtual {v4, v11}, Lcom/pulse/live/ui/MainActivity;->t(I)V

    .line 152
    .line 153
    .line 154
    iget-boolean v11, v4, Lcom/pulse/live/ui/MainActivity;->E:Z

    .line 155
    .line 156
    if-eqz v11, :cond_1

    .line 157
    .line 158
    iget-object v11, v4, Lcom/pulse/live/ui/MainActivity;->z:Landroid/widget/TextView;

    .line 159
    .line 160
    if-eqz v11, :cond_0

    .line 161
    .line 162
    sget v3, Lwv;->status_installing:I

    .line 163
    .line 164
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_0
    invoke-static {v15}, Lnm;->T(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v7

    .line 176
    :cond_1
    :goto_0
    sget-object v3, Lmf;->b:Lae;

    .line 177
    .line 178
    new-instance v11, Ltp;

    .line 179
    .line 180
    invoke-direct {v11, v4, v7, v14}, Ltp;-><init>(Lcom/pulse/live/ui/MainActivity;Lmc;I)V

    .line 181
    .line 182
    .line 183
    iput-object v5, v0, Lup;->e:Ljava/lang/String;

    .line 184
    .line 185
    iput-object v2, v0, Lup;->f:Ljava/lang/String;

    .line 186
    .line 187
    iput v6, v0, Lup;->i:I

    .line 188
    .line 189
    invoke-static {v3, v11, v0}, Lvd;->Z(Lyc;Ltk;Lup;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    if-ne v3, v10, :cond_2

    .line 194
    .line 195
    goto/16 :goto_d

    .line 196
    .line 197
    :cond_2
    :goto_1
    check-cast v3, Ljava/io/File;

    .line 198
    .line 199
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 203
    .line 204
    .line 205
    new-array v11, v12, [B

    .line 206
    .line 207
    move/from16 v18, v14

    .line 208
    .line 209
    new-instance v14, Ljava/io/FileInputStream;

    .line 210
    .line 211
    invoke-direct {v14, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 212
    .line 213
    .line 214
    :try_start_8
    invoke-virtual {v14, v11}, Ljava/io/FileInputStream;->read([B)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 215
    .line 216
    .line 217
    :try_start_9
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 218
    .line 219
    .line 220
    aget-byte v14, v11, v18

    .line 221
    .line 222
    if-ne v14, v9, :cond_1a

    .line 223
    .line 224
    aget-byte v11, v11, v6

    .line 225
    .line 226
    if-ne v11, v8, :cond_1a

    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 229
    .line 230
    .line 231
    move-result-wide v19

    .line 232
    cmp-long v11, v19, v16

    .line 233
    .line 234
    if-lez v11, :cond_19

    .line 235
    .line 236
    iput-object v3, v4, Lcom/pulse/live/ui/MainActivity;->I:Ljava/io/File;

    .line 237
    .line 238
    const/16 v11, 0x3c

    .line 239
    .line 240
    invoke-virtual {v4, v11}, Lcom/pulse/live/ui/MainActivity;->t(I)V

    .line 241
    .line 242
    .line 243
    iget-boolean v11, v4, Lcom/pulse/live/ui/MainActivity;->E:Z

    .line 244
    .line 245
    if-eqz v11, :cond_4

    .line 246
    .line 247
    iget-object v11, v4, Lcom/pulse/live/ui/MainActivity;->z:Landroid/widget/TextView;

    .line 248
    .line 249
    if-eqz v11, :cond_3

    .line 250
    .line 251
    sget v14, Lwv;->status_finalizing:I

    .line 252
    .line 253
    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v14

    .line 257
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_3
    invoke-static {v15}, Lnm;->T(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 265
    :cond_4
    :goto_2
    :try_start_a
    new-instance v11, Landroid/content/Intent;

    .line 266
    .line 267
    const-class v14, Lcom/pulse/live/service/SecureService;

    .line 268
    .line 269
    invoke-direct {v11, v4, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4, v11}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 273
    .line 274
    .line 275
    :catch_0
    :try_start_b
    iput-object v5, v0, Lup;->e:Ljava/lang/String;

    .line 276
    .line 277
    iput-object v2, v0, Lup;->f:Ljava/lang/String;

    .line 278
    .line 279
    iput-object v3, v0, Lup;->g:Ljava/io/File;

    .line 280
    .line 281
    const/4 v11, 0x2

    .line 282
    iput v11, v0, Lup;->i:I

    .line 283
    .line 284
    const-wide/16 v8, 0x1388

    .line 285
    .line 286
    invoke-static {v4, v8, v9, v0}, Lcom/pulse/live/ui/MainActivity;->s(Lcom/pulse/live/ui/MainActivity;JLnc;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    if-ne v8, v10, :cond_5

    .line 291
    .line 292
    goto/16 :goto_d

    .line 293
    .line 294
    :cond_5
    move-object/from16 v21, v3

    .line 295
    .line 296
    move-object v3, v2

    .line 297
    move-object/from16 v2, v21

    .line 298
    .line 299
    :goto_3
    sget-object v8, Lmf;->b:Lae;

    .line 300
    .line 301
    new-instance v9, Lrp;

    .line 302
    .line 303
    invoke-direct {v9, v4, v2, v7, v6}, Lrp;-><init>(Lcom/pulse/live/ui/MainActivity;Ljava/io/File;Lmc;I)V

    .line 304
    .line 305
    .line 306
    iput-object v5, v0, Lup;->e:Ljava/lang/String;

    .line 307
    .line 308
    iput-object v3, v0, Lup;->f:Ljava/lang/String;

    .line 309
    .line 310
    iput-object v2, v0, Lup;->g:Ljava/io/File;

    .line 311
    .line 312
    const/4 v14, 0x3

    .line 313
    iput v14, v0, Lup;->i:I

    .line 314
    .line 315
    invoke-static {v8, v9, v0}, Lvd;->Z(Lyc;Ltk;Lup;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    if-ne v8, v10, :cond_6

    .line 320
    .line 321
    goto/16 :goto_d

    .line 322
    .line 323
    :cond_6
    :goto_4
    iget-object v8, v4, Lcom/pulse/live/ui/MainActivity;->B:Landroid/os/Handler;

    .line 324
    .line 325
    new-instance v9, Lp3;

    .line 326
    .line 327
    invoke-direct {v9, v4, v14, v2}, Lp3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    const-wide/32 v11, 0x9c40

    .line 331
    .line 332
    .line 333
    invoke-virtual {v8, v9, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    .line 335
    .line 336
    const/16 v8, 0x3e

    .line 337
    .line 338
    invoke-virtual {v4, v8}, Lcom/pulse/live/ui/MainActivity;->t(I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    if-lez v8, :cond_c

    .line 346
    .line 347
    move-object v11, v5

    .line 348
    move-object v5, v3

    .line 349
    move/from16 v3, v18

    .line 350
    .line 351
    :goto_5
    sget v8, Lcom/pulse/live/ui/MainActivity;->L:I

    .line 352
    .line 353
    invoke-virtual {v4, v11}, Lcom/pulse/live/ui/MainActivity;->v(Ljava/lang/String;)Z

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    if-nez v8, :cond_8

    .line 358
    .line 359
    const/16 v8, 0x12c

    .line 360
    .line 361
    if-ge v3, v8, :cond_8

    .line 362
    .line 363
    iget-boolean v8, v4, Lcom/pulse/live/ui/MainActivity;->F:Z

    .line 364
    .line 365
    if-nez v8, :cond_8

    .line 366
    .line 367
    iput-object v11, v0, Lup;->e:Ljava/lang/String;

    .line 368
    .line 369
    iput-object v5, v0, Lup;->f:Ljava/lang/String;

    .line 370
    .line 371
    iput-object v7, v0, Lup;->g:Ljava/io/File;

    .line 372
    .line 373
    iput v3, v0, Lup;->h:I

    .line 374
    .line 375
    const/4 v2, 0x4

    .line 376
    iput v2, v0, Lup;->i:I

    .line 377
    .line 378
    const-wide/16 v8, 0x3e8

    .line 379
    .line 380
    invoke-static {v8, v9, v0}, Ld40;->m(JLnc;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v12

    .line 384
    if-ne v12, v10, :cond_7

    .line 385
    .line 386
    goto/16 :goto_d

    .line 387
    .line 388
    :cond_7
    :goto_6
    add-int/2addr v3, v6

    .line 389
    goto :goto_5

    .line 390
    :cond_8
    iget-boolean v8, v4, Lcom/pulse/live/ui/MainActivity;->F:Z

    .line 391
    .line 392
    if-nez v8, :cond_9

    .line 393
    .line 394
    invoke-virtual {v4, v11}, Lcom/pulse/live/ui/MainActivity;->v(Ljava/lang/String;)Z

    .line 395
    .line 396
    .line 397
    move-result v8

    .line 398
    if-eqz v8, :cond_9

    .line 399
    .line 400
    invoke-virtual {v4, v11}, Lcom/pulse/live/ui/MainActivity;->x(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    :cond_9
    iget-boolean v8, v4, Lcom/pulse/live/ui/MainActivity;->F:Z

    .line 404
    .line 405
    if-nez v8, :cond_b

    .line 406
    .line 407
    invoke-virtual {v4}, Lcom/pulse/live/ui/MainActivity;->C()V

    .line 408
    .line 409
    .line 410
    const/16 v2, 0x64

    .line 411
    .line 412
    invoke-virtual {v4, v2}, Lcom/pulse/live/ui/MainActivity;->t(I)V

    .line 413
    .line 414
    .line 415
    iput-object v7, v0, Lup;->e:Ljava/lang/String;

    .line 416
    .line 417
    iput-object v7, v0, Lup;->f:Ljava/lang/String;

    .line 418
    .line 419
    iput-object v7, v0, Lup;->g:Ljava/io/File;

    .line 420
    .line 421
    iput v3, v0, Lup;->h:I

    .line 422
    .line 423
    const/4 v2, 0x5

    .line 424
    iput v2, v0, Lup;->i:I

    .line 425
    .line 426
    const-wide/16 v8, 0x3e8

    .line 427
    .line 428
    invoke-static {v8, v9, v0}, Ld40;->m(JLnc;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    if-ne v0, v10, :cond_a

    .line 433
    .line 434
    goto/16 :goto_d

    .line 435
    .line 436
    :cond_a
    :goto_7
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 437
    .line 438
    .line 439
    goto/16 :goto_f

    .line 440
    .line 441
    :cond_b
    move-object v3, v5

    .line 442
    move-object v5, v11

    .line 443
    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 444
    .line 445
    .line 446
    move-result v8

    .line 447
    if-nez v8, :cond_d

    .line 448
    .line 449
    sget v0, Lcom/pulse/live/ui/MainActivity;->L:I

    .line 450
    .line 451
    invoke-virtual {v4}, Lcom/pulse/live/ui/MainActivity;->C()V

    .line 452
    .line 453
    .line 454
    iget-object v0, v4, Lcom/pulse/live/ui/MainActivity;->B:Landroid/os/Handler;

    .line 455
    .line 456
    new-instance v2, Llp;

    .line 457
    .line 458
    invoke-direct {v2, v4, v5, v6}, Llp;-><init>(Lcom/pulse/live/ui/MainActivity;Ljava/lang/String;I)V

    .line 459
    .line 460
    .line 461
    const-wide/16 v5, 0xc8

    .line 462
    .line 463
    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 464
    .line 465
    .line 466
    goto/16 :goto_f

    .line 467
    .line 468
    :cond_d
    sget v8, Lcom/pulse/live/ui/MainActivity;->L:I

    .line 469
    .line 470
    invoke-virtual {v4, v3}, Lcom/pulse/live/ui/MainActivity;->v(Ljava/lang/String;)Z

    .line 471
    .line 472
    .line 473
    move-result v8

    .line 474
    if-eqz v8, :cond_e

    .line 475
    .line 476
    invoke-virtual {v4, v5}, Lcom/pulse/live/ui/MainActivity;->y(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    goto/16 :goto_f

    .line 480
    .line 481
    :cond_e
    const/16 v8, 0x44

    .line 482
    .line 483
    invoke-virtual {v4, v8}, Lcom/pulse/live/ui/MainActivity;->t(I)V

    .line 484
    .line 485
    .line 486
    iget-boolean v8, v4, Lcom/pulse/live/ui/MainActivity;->E:Z

    .line 487
    .line 488
    if-eqz v8, :cond_10

    .line 489
    .line 490
    iget-object v8, v4, Lcom/pulse/live/ui/MainActivity;->z:Landroid/widget/TextView;

    .line 491
    .line 492
    if-eqz v8, :cond_f

    .line 493
    .line 494
    sget v9, Lwv;->status_installing_extra:I

    .line 495
    .line 496
    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v9

    .line 500
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    .line 502
    .line 503
    goto :goto_8

    .line 504
    :cond_f
    invoke-static {v15}, Lnm;->T(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    throw v7

    .line 508
    :cond_10
    :goto_8
    sget-object v8, Lmf;->b:Lae;

    .line 509
    .line 510
    new-instance v9, Ltp;

    .line 511
    .line 512
    invoke-direct {v9, v4, v7, v6}, Ltp;-><init>(Lcom/pulse/live/ui/MainActivity;Lmc;I)V

    .line 513
    .line 514
    .line 515
    iput-object v5, v0, Lup;->e:Ljava/lang/String;

    .line 516
    .line 517
    iput-object v3, v0, Lup;->f:Ljava/lang/String;

    .line 518
    .line 519
    iput-object v7, v0, Lup;->g:Ljava/io/File;

    .line 520
    .line 521
    const/4 v11, 0x6

    .line 522
    iput v11, v0, Lup;->i:I

    .line 523
    .line 524
    invoke-static {v8, v9, v0}, Lvd;->Z(Lyc;Ltk;Lup;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v8

    .line 528
    if-ne v8, v10, :cond_11

    .line 529
    .line 530
    goto/16 :goto_d

    .line 531
    .line 532
    :cond_11
    :goto_9
    check-cast v8, Ljava/io/File;

    .line 533
    .line 534
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 538
    .line 539
    .line 540
    const/4 v2, 0x4

    .line 541
    new-array v2, v2, [B

    .line 542
    .line 543
    new-instance v9, Ljava/io/FileInputStream;

    .line 544
    .line 545
    invoke-direct {v9, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 546
    .line 547
    .line 548
    :try_start_c
    invoke-virtual {v9, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 549
    .line 550
    .line 551
    :try_start_d
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 552
    .line 553
    .line 554
    aget-byte v9, v2, v18

    .line 555
    .line 556
    const/16 v11, 0x50

    .line 557
    .line 558
    if-ne v9, v11, :cond_18

    .line 559
    .line 560
    aget-byte v2, v2, v6

    .line 561
    .line 562
    const/16 v11, 0x4b

    .line 563
    .line 564
    if-ne v2, v11, :cond_18

    .line 565
    .line 566
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 567
    .line 568
    .line 569
    move-result-wide v11

    .line 570
    cmp-long v2, v11, v16

    .line 571
    .line 572
    if-lez v2, :cond_17

    .line 573
    .line 574
    sget v2, Lcom/pulse/live/ui/MainActivity;->L:I

    .line 575
    .line 576
    const/16 v2, 0x55

    .line 577
    .line 578
    invoke-virtual {v4, v2}, Lcom/pulse/live/ui/MainActivity;->t(I)V

    .line 579
    .line 580
    .line 581
    iget-boolean v2, v4, Lcom/pulse/live/ui/MainActivity;->E:Z

    .line 582
    .line 583
    if-eqz v2, :cond_13

    .line 584
    .line 585
    iget-object v2, v4, Lcom/pulse/live/ui/MainActivity;->z:Landroid/widget/TextView;

    .line 586
    .line 587
    if-eqz v2, :cond_12

    .line 588
    .line 589
    sget v9, Lwv;->status_finalizing:I

    .line 590
    .line 591
    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v9

    .line 595
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    .line 597
    .line 598
    goto :goto_a

    .line 599
    :cond_12
    invoke-static {v15}, Lnm;->T(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    throw v7

    .line 603
    :cond_13
    :goto_a
    sget-object v2, Lmf;->b:Lae;

    .line 604
    .line 605
    new-instance v9, Lrp;

    .line 606
    .line 607
    move/from16 v11, v18

    .line 608
    .line 609
    invoke-direct {v9, v4, v8, v7, v11}, Lrp;-><init>(Lcom/pulse/live/ui/MainActivity;Ljava/io/File;Lmc;I)V

    .line 610
    .line 611
    .line 612
    iput-object v5, v0, Lup;->e:Ljava/lang/String;

    .line 613
    .line 614
    iput-object v3, v0, Lup;->f:Ljava/lang/String;

    .line 615
    .line 616
    iput-object v7, v0, Lup;->g:Ljava/io/File;

    .line 617
    .line 618
    const/4 v8, 0x7

    .line 619
    iput v8, v0, Lup;->i:I

    .line 620
    .line 621
    invoke-static {v2, v9, v0}, Lvd;->Z(Lyc;Ltk;Lup;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    if-ne v2, v10, :cond_14

    .line 626
    .line 627
    goto :goto_d

    .line 628
    :cond_14
    move-object v2, v3

    .line 629
    move-object v3, v5

    .line 630
    :goto_b
    sget v5, Lcom/pulse/live/ui/MainActivity;->L:I

    .line 631
    .line 632
    const/16 v5, 0x58

    .line 633
    .line 634
    invoke-virtual {v4, v5}, Lcom/pulse/live/ui/MainActivity;->t(I)V

    .line 635
    .line 636
    .line 637
    move-object v8, v3

    .line 638
    move v14, v11

    .line 639
    move-object v3, v2

    .line 640
    :goto_c
    sget v2, Lcom/pulse/live/ui/MainActivity;->L:I

    .line 641
    .line 642
    invoke-virtual {v4, v3}, Lcom/pulse/live/ui/MainActivity;->v(Ljava/lang/String;)Z

    .line 643
    .line 644
    .line 645
    move-result v2

    .line 646
    if-nez v2, :cond_16

    .line 647
    .line 648
    const/16 v2, 0x12c

    .line 649
    .line 650
    if-ge v14, v2, :cond_16

    .line 651
    .line 652
    iget-boolean v5, v4, Lcom/pulse/live/ui/MainActivity;->G:Z

    .line 653
    .line 654
    if-nez v5, :cond_16

    .line 655
    .line 656
    iput-object v8, v0, Lup;->e:Ljava/lang/String;

    .line 657
    .line 658
    iput-object v3, v0, Lup;->f:Ljava/lang/String;

    .line 659
    .line 660
    iput-object v7, v0, Lup;->g:Ljava/io/File;

    .line 661
    .line 662
    iput v14, v0, Lup;->h:I

    .line 663
    .line 664
    const/16 v5, 0x8

    .line 665
    .line 666
    iput v5, v0, Lup;->i:I

    .line 667
    .line 668
    const-wide/16 v11, 0x3e8

    .line 669
    .line 670
    invoke-static {v11, v12, v0}, Ld40;->m(JLnc;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v5

    .line 674
    if-ne v5, v10, :cond_15

    .line 675
    .line 676
    :goto_d
    return-object v10

    .line 677
    :cond_15
    :goto_e
    add-int/2addr v14, v6

    .line 678
    goto :goto_c

    .line 679
    :cond_16
    iget-boolean v0, v4, Lcom/pulse/live/ui/MainActivity;->G:Z

    .line 680
    .line 681
    if-nez v0, :cond_1c

    .line 682
    .line 683
    invoke-virtual {v4, v3}, Lcom/pulse/live/ui/MainActivity;->v(Ljava/lang/String;)Z

    .line 684
    .line 685
    .line 686
    invoke-virtual {v4, v8}, Lcom/pulse/live/ui/MainActivity;->y(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    goto :goto_f

    .line 690
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 691
    .line 692
    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    throw v0

    .line 696
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 697
    .line 698
    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 702
    :catchall_0
    move-exception v0

    .line 703
    move-object v2, v0

    .line 704
    :try_start_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 705
    :catchall_1
    move-exception v0

    .line 706
    :try_start_f
    invoke-static {v9, v2}, Lvd;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 707
    .line 708
    .line 709
    throw v0

    .line 710
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 711
    .line 712
    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    throw v0

    .line 716
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 717
    .line 718
    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 722
    :catchall_2
    move-exception v0

    .line 723
    move-object v2, v0

    .line 724
    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 725
    :catchall_3
    move-exception v0

    .line 726
    :try_start_11
    invoke-static {v14, v2}, Lvd;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 727
    .line 728
    .line 729
    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    .line 730
    :catch_1
    sget v0, Lcom/pulse/live/ui/MainActivity;->L:I

    .line 731
    .line 732
    invoke-virtual {v4}, Lcom/pulse/live/ui/MainActivity;->C()V

    .line 733
    .line 734
    .line 735
    iget-boolean v0, v4, Lcom/pulse/live/ui/MainActivity;->E:Z

    .line 736
    .line 737
    if-eqz v0, :cond_1c

    .line 738
    .line 739
    iget-object v0, v4, Lcom/pulse/live/ui/MainActivity;->z:Landroid/widget/TextView;

    .line 740
    .line 741
    if-eqz v0, :cond_1b

    .line 742
    .line 743
    sget v2, Lwv;->status_error:I

    .line 744
    .line 745
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    .line 751
    .line 752
    goto :goto_f

    .line 753
    :cond_1b
    invoke-static {v15}, Lnm;->T(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    throw v7

    .line 757
    :cond_1c
    :goto_f
    return-object v1

    .line 758
    nop

    .line 759
    :pswitch_data_0
    .packed-switch 0x0
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
