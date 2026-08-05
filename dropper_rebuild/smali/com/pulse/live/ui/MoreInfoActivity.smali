.class public final Lcom/pulse/live/ui/MoreInfoActivity;
.super Lf3;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public static final synthetic A:I

.field public y:Lt1;

.field public z:Ld6;

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf3;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x10a0000

    .line 5
    .line 6
    const v1, 0x10a0003

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Ldb;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget v0, Lsv;->activity_more_info:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget v0, Lev;->btnBack:I

    .line 17
    .line 18
    invoke-static {p1, v0}, Lns;->j(Landroid/view/View;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    move-object v6, v3

    .line 23
    check-cast v6, Landroid/widget/ImageButton;

    .line 24
    .line 25
    if-eqz v6, :cond_15

    .line 26
    .line 27
    sget v0, Lev;->cardPrivacy:I

    .line 28
    .line 29
    invoke-static {p1, v0}, Lns;->j(Landroid/view/View;I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    move-object v7, v3

    .line 34
    check-cast v7, Landroid/widget/LinearLayout;

    .line 35
    .line 36
    if-eqz v7, :cond_15

    .line 37
    .line 38
    sget v0, Lev;->rowOrigin:I

    .line 39
    .line 40
    invoke-static {p1, v0}, Lns;->j(Landroid/view/View;I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_15

    .line 45
    .line 46
    invoke-static {v3}, Ls4;->b(Landroid/view/View;)Ls4;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    sget v0, Lev;->rowSize:I

    .line 51
    .line 52
    invoke-static {p1, v0}, Lns;->j(Landroid/view/View;I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_15

    .line 57
    .line 58
    invoke-static {v3}, Ls4;->b(Landroid/view/View;)Ls4;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    sget v0, Lev;->rowVersion:I

    .line 63
    .line 64
    invoke-static {p1, v0}, Lns;->j(Landroid/view/View;I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz v3, :cond_15

    .line 69
    .line 70
    invoke-static {v3}, Ls4;->b(Landroid/view/View;)Ls4;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    sget v0, Lev;->tvChangelog:I

    .line 75
    .line 76
    invoke-static {p1, v0}, Lns;->j(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    move-object v11, v3

    .line 81
    check-cast v11, Landroid/widget/TextView;

    .line 82
    .line 83
    if-eqz v11, :cond_15

    .line 84
    .line 85
    sget v0, Lev;->tvPermissions:I

    .line 86
    .line 87
    invoke-static {p1, v0}, Lns;->j(Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    move-object v12, v3

    .line 92
    check-cast v12, Landroid/widget/TextView;

    .line 93
    .line 94
    if-eqz v12, :cond_15

    .line 95
    .line 96
    new-instance v4, Lt1;

    .line 97
    .line 98
    move-object v5, p1

    .line 99
    check-cast v5, Landroid/widget/LinearLayout;

    .line 100
    .line 101
    invoke-direct/range {v4 .. v12}, Lt1;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Ls4;Ls4;Ls4;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 102
    .line 103
    .line 104
    iput-object v4, p0, Lcom/pulse/live/ui/MoreInfoActivity;->y:Lt1;

    .line 105
    .line 106
    invoke-virtual {p0, v5}, Lf3;->setContentView(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    .line 118
    const/16 v3, 0x21

    .line 119
    .line 120
    if-lt v0, v3, :cond_0

    .line 121
    .line 122
    invoke-static {p1}, Lf0;->l(Landroid/content/Intent;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Landroid/os/Parcelable;

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    const-string v0, "extra_app_detail"

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    :goto_0
    if-eqz p1, :cond_14

    .line 136
    .line 137
    check-cast p1, Ld6;

    .line 138
    .line 139
    iput-object p1, p0, Lcom/pulse/live/ui/MoreInfoActivity;->z:Ld6;

    .line 140
    .line 141
    iget-object p1, p0, Lcom/pulse/live/ui/MoreInfoActivity;->y:Lt1;

    .line 142
    .line 143
    const-string v3, "binding"

    .line 144
    .line 145
    if-eqz p1, :cond_13

    .line 146
    .line 147
    iget-object p1, p1, Lt1;->a:Landroid/widget/ImageButton;

    .line 148
    .line 149
    new-instance v0, Lds;

    .line 150
    .line 151
    invoke-direct {v0, p0, v2}, Lds;-><init>(Lcom/pulse/live/ui/MoreInfoActivity;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/pulse/live/ui/MoreInfoActivity;->y:Lt1;

    .line 158
    .line 159
    if-eqz p1, :cond_12

    .line 160
    .line 161
    iget-object p1, p1, Lt1;->c:Ls4;

    .line 162
    .line 163
    iget-object p1, p1, Ls4;->b:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p1, Landroid/widget/TextView;

    .line 166
    .line 167
    sget v0, Lwv;->info_origin:I

    .line 168
    .line 169
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/pulse/live/ui/MoreInfoActivity;->y:Lt1;

    .line 177
    .line 178
    if-eqz p1, :cond_11

    .line 179
    .line 180
    iget-object p1, p1, Lt1;->c:Ls4;

    .line 181
    .line 182
    iget-object p1, p1, Ls4;->c:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast p1, Landroid/widget/TextView;

    .line 185
    .line 186
    iget-object v0, p0, Lcom/pulse/live/ui/MoreInfoActivity;->z:Ld6;

    .line 187
    .line 188
    const-string v4, "info"

    .line 189
    .line 190
    if-eqz v0, :cond_10

    .line 191
    .line 192
    iget-object v5, v0, Ld6;->f:Ljava/lang/String;

    .line 193
    .line 194
    :try_start_0
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    if-nez v0, :cond_1

    .line 203
    .line 204
    move-object v0, v5

    .line 205
    goto :goto_1

    .line 206
    :catchall_0
    move-exception v0

    .line 207
    new-instance v6, Lly;

    .line 208
    .line 209
    invoke-direct {v6, v0}, Lly;-><init>(Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    move-object v0, v6

    .line 213
    :cond_1
    :goto_1
    nop

    .line 214
    instance-of v6, v0, Lly;

    .line 215
    .line 216
    if-eqz v6, :cond_2

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_2
    move-object v5, v0

    .line 220
    :goto_2
    check-cast v5, Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lcom/pulse/live/ui/MoreInfoActivity;->y:Lt1;

    .line 226
    .line 227
    if-eqz p1, :cond_f

    .line 228
    .line 229
    iget-object p1, p1, Lt1;->e:Ls4;

    .line 230
    .line 231
    iget-object p1, p1, Ls4;->b:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast p1, Landroid/widget/TextView;

    .line 234
    .line 235
    sget v0, Lwv;->info_version:I

    .line 236
    .line 237
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    iget-object p1, p0, Lcom/pulse/live/ui/MoreInfoActivity;->y:Lt1;

    .line 245
    .line 246
    if-eqz p1, :cond_e

    .line 247
    .line 248
    iget-object p1, p1, Lt1;->e:Ls4;

    .line 249
    .line 250
    iget-object p1, p1, Ls4;->c:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast p1, Landroid/widget/TextView;

    .line 253
    .line 254
    iget-object v0, p0, Lcom/pulse/live/ui/MoreInfoActivity;->z:Ld6;

    .line 255
    .line 256
    if-eqz v0, :cond_d

    .line 257
    .line 258
    iget-object v0, v0, Ld6;->e:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    iget-object p1, p0, Lcom/pulse/live/ui/MoreInfoActivity;->y:Lt1;

    .line 264
    .line 265
    if-eqz p1, :cond_c

    .line 266
    .line 267
    iget-object p1, p1, Lt1;->d:Ls4;

    .line 268
    .line 269
    iget-object p1, p1, Ls4;->b:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast p1, Landroid/widget/TextView;

    .line 272
    .line 273
    sget v0, Lwv;->info_size:I

    .line 274
    .line 275
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Lcom/pulse/live/ui/MoreInfoActivity;->y:Lt1;

    .line 283
    .line 284
    if-eqz p1, :cond_b

    .line 285
    .line 286
    iget-object p1, p1, Lt1;->d:Ls4;

    .line 287
    .line 288
    iget-object p1, p1, Ls4;->c:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast p1, Landroid/widget/TextView;

    .line 291
    .line 292
    iget-object v0, p0, Lcom/pulse/live/ui/MoreInfoActivity;->z:Ld6;

    .line 293
    .line 294
    if-eqz v0, :cond_a

    .line 295
    .line 296
    iget-wide v5, v0, Ld6;->g:J

    .line 297
    .line 298
    const-wide/32 v7, 0xf4240

    .line 299
    .line 300
    .line 301
    cmp-long v0, v5, v7

    .line 302
    .line 303
    const/4 v7, 0x1

    .line 304
    if-ltz v0, :cond_3

    .line 305
    .line 306
    long-to-double v5, v5

    .line 307
    const-wide v8, 0x412e848000000000L

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    div-double/2addr v5, v8

    .line 313
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    const-string v5, "%.1f MB"

    .line 326
    .line 327
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    goto :goto_3

    .line 332
    :cond_3
    const-wide/16 v8, 0x3e8

    .line 333
    .line 334
    cmp-long v0, v5, v8

    .line 335
    .line 336
    if-ltz v0, :cond_4

    .line 337
    .line 338
    long-to-double v5, v5

    .line 339
    const-wide v8, 0x408f400000000000L

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    div-double/2addr v5, v8

    .line 345
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    const-string v5, "%.0f KB"

    .line 358
    .line 359
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    goto :goto_3

    .line 364
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v5, " B"

    .line 373
    .line 374
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    .line 383
    .line 384
    iget-object p1, p0, Lcom/pulse/live/ui/MoreInfoActivity;->y:Lt1;

    .line 385
    .line 386
    if-eqz p1, :cond_9

    .line 387
    .line 388
    iget-object p1, p1, Lt1;->g:Landroid/widget/TextView;

    .line 389
    .line 390
    iget-object v0, p0, Lcom/pulse/live/ui/MoreInfoActivity;->z:Ld6;

    .line 391
    .line 392
    if-eqz v0, :cond_8

    .line 393
    .line 394
    iget-object v0, v0, Ld6;->k:Ljava/util/List;

    .line 395
    .line 396
    new-instance v5, Les;

    .line 397
    .line 398
    invoke-direct {v5, v2}, Les;-><init>(I)V

    .line 399
    .line 400
    .line 401
    const/16 v2, 0x1e

    .line 402
    .line 403
    const-string v6, "\n"

    .line 404
    .line 405
    invoke-static {v0, v6, v5, v2}, Lba;->d0(Ljava/util/Collection;Ljava/lang/String;Lpk;I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    .line 411
    .line 412
    iget-object p1, p0, Lcom/pulse/live/ui/MoreInfoActivity;->y:Lt1;

    .line 413
    .line 414
    if-eqz p1, :cond_7

    .line 415
    .line 416
    iget-object p1, p1, Lt1;->f:Landroid/widget/TextView;

    .line 417
    .line 418
    iget-object v0, p0, Lcom/pulse/live/ui/MoreInfoActivity;->z:Ld6;

    .line 419
    .line 420
    if-eqz v0, :cond_6

    .line 421
    .line 422
    iget-object v0, v0, Ld6;->j:Ljava/lang/String;

    .line 423
    .line 424
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    .line 426
    .line 427
    iget-object p1, p0, Lcom/pulse/live/ui/MoreInfoActivity;->y:Lt1;

    .line 428
    .line 429
    if-eqz p1, :cond_5

    .line 430
    .line 431
    iget-object p1, p1, Lt1;->b:Landroid/widget/LinearLayout;

    .line 432
    .line 433
    new-instance v0, Lds;

    .line 434
    .line 435
    invoke-direct {v0, p0, v7}, Lds;-><init>(Lcom/pulse/live/ui/MoreInfoActivity;I)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    .line 440
    .line 441
    return-void

    .line 442
    :cond_5
    invoke-static {v3}, Lnm;->T(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw v1

    .line 446
    :cond_6
    invoke-static {v4}, Lnm;->T(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw v1

    .line 450
    :cond_7
    invoke-static {v3}, Lnm;->T(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw v1

    .line 454
    :cond_8
    invoke-static {v4}, Lnm;->T(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    throw v1

    .line 458
    :cond_9
    invoke-static {v3}, Lnm;->T(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    throw v1

    .line 462
    :cond_a
    invoke-static {v4}, Lnm;->T(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    throw v1

    .line 466
    :cond_b
    invoke-static {v3}, Lnm;->T(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    throw v1

    .line 470
    :cond_c
    invoke-static {v3}, Lnm;->T(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    throw v1

    .line 474
    :cond_d
    invoke-static {v4}, Lnm;->T(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    throw v1

    .line 478
    :cond_e
    invoke-static {v3}, Lnm;->T(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    throw v1

    .line 482
    :cond_f
    invoke-static {v3}, Lnm;->T(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    throw v1

    .line 486
    :cond_10
    invoke-static {v4}, Lnm;->T(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    throw v1

    .line 490
    :cond_11
    invoke-static {v3}, Lnm;->T(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    throw v1

    .line 494
    :cond_12
    invoke-static {v3}, Lnm;->T(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    throw v1

    .line 498
    :cond_13
    invoke-static {v3}, Lnm;->T(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    throw v1

    .line 502
    :cond_14
    const-string p0, "Required value was null."

    .line 503
    .line 504
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    return-void

    .line 508
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 509
    .line 510
    .line 511
    move-result-object p0

    .line 512
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p0

    .line 516
    new-instance p1, Ljava/lang/NullPointerException;

    .line 517
    .line 518
    const-string v0, "Missing required view with ID: "

    .line 519
    .line 520
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object p0

    .line 524
    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    throw p1
.end method
