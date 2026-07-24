.class public final Lw1;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lw1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget p0, p0, Lw1;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance p0, Lw00;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lw00;->a:I

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lw00;->b:I

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lw00;->c:I

    .line 31
    .line 32
    if-lez v0, :cond_0

    .line 33
    .line 34
    new-array v0, v0, [I

    .line 35
    .line 36
    iput-object v0, p0, Lw00;->d:[I

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, p0, Lw00;->e:I

    .line 46
    .line 47
    if-lez v0, :cond_1

    .line 48
    .line 49
    new-array v0, v0, [I

    .line 50
    .line 51
    iput-object v0, p0, Lw00;->f:[I

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ne v0, v1, :cond_2

    .line 61
    .line 62
    move v0, v1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v0, v2

    .line 65
    :goto_0
    iput-boolean v0, p0, Lw00;->h:Z

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-ne v0, v1, :cond_3

    .line 72
    .line 73
    move v0, v1

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move v0, v2

    .line 76
    :goto_1
    iput-boolean v0, p0, Lw00;->i:Z

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-ne v0, v1, :cond_4

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    move v1, v2

    .line 86
    :goto_2
    iput-boolean v1, p0, Lw00;->j:Z

    .line 87
    .line 88
    const-class v0, Lv00;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lw00;->g:Ljava/util/ArrayList;

    .line 99
    .line 100
    return-object p0

    .line 101
    :pswitch_0
    new-instance p0, Lv00;

    .line 102
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iput v0, p0, Lv00;->a:I

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iput v0, p0, Lv00;->b:I

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-ne v0, v1, :cond_5

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    move v1, v2

    .line 126
    :goto_3
    iput-boolean v1, p0, Lv00;->d:Z

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-lez v0, :cond_6

    .line 133
    .line 134
    new-array v0, v0, [I

    .line 135
    .line 136
    iput-object v0, p0, Lv00;->c:[I

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 139
    .line 140
    .line 141
    :cond_6
    return-object p0

    .line 142
    :pswitch_1
    new-instance p0, Landroidx/versionedparcelable/ParcelImpl;

    .line 143
    .line 144
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    .line 145
    .line 146
    .line 147
    return-object p0

    .line 148
    :pswitch_2
    new-instance p0, Lqs;

    .line 149
    .line 150
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    iput p1, p0, Lqs;->a:I

    .line 158
    .line 159
    return-object p0

    .line 160
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    invoke-static {p0, p1}, Lzr;->a(II)Lzr;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :pswitch_4
    new-instance p0, Lqq;

    .line 174
    .line 175
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 176
    .line 177
    .line 178
    const-class v0, Lqq;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Ljava/lang/Integer;

    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    iput p1, p0, Lqq;->a:I

    .line 195
    .line 196
    return-object p0

    .line 197
    :pswitch_5
    new-instance p0, Lho;

    .line 198
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    iput v0, p0, Lho;->a:I

    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    iput v0, p0, Lho;->b:I

    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-ne p1, v1, :cond_7

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_7
    move v1, v2

    .line 222
    :goto_4
    iput-boolean v1, p0, Lho;->c:Z

    .line 223
    .line 224
    return-object p0

    .line 225
    :pswitch_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    new-instance p0, Lkm;

    .line 229
    .line 230
    const-class v0, Landroid/content/IntentSender;

    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    check-cast v0, Landroid/content/IntentSender;

    .line 244
    .line 245
    const-class v1, Landroid/content/Intent;

    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Landroid/content/Intent;

    .line 256
    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    invoke-direct {p0, v0, v1, v2, p1}, Lkm;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 266
    .line 267
    .line 268
    return-object p0

    .line 269
    :pswitch_7
    new-instance p0, Lwj;

    .line 270
    .line 271
    invoke-direct {p0, p1}, Lwj;-><init>(Landroid/os/Parcel;)V

    .line 272
    .line 273
    .line 274
    return-object p0

    .line 275
    :pswitch_8
    new-instance p0, Lrj;

    .line 276
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    .line 279
    .line 280
    iput-object v0, p0, Lrj;->e:Ljava/lang/String;

    .line 281
    .line 282
    new-instance v0, Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .line 286
    .line 287
    iput-object v0, p0, Lrj;->f:Ljava/util/ArrayList;

    .line 288
    .line 289
    new-instance v0, Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .line 293
    .line 294
    iput-object v0, p0, Lrj;->g:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    iput-object v0, p0, Lrj;->a:Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    iput-object v0, p0, Lrj;->b:Ljava/util/ArrayList;

    .line 307
    .line 308
    sget-object v0, Lz6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 309
    .line 310
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    check-cast v0, [Lz6;

    .line 315
    .line 316
    iput-object v0, p0, Lrj;->c:[Lz6;

    .line 317
    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    iput v0, p0, Lrj;->d:I

    .line 323
    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iput-object v0, p0, Lrj;->e:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    iput-object v0, p0, Lrj;->f:Ljava/util/ArrayList;

    .line 335
    .line 336
    sget-object v0, La7;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 337
    .line 338
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    iput-object v0, p0, Lrj;->g:Ljava/util/ArrayList;

    .line 343
    .line 344
    sget-object v0, Lmj;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 345
    .line 346
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    iput-object p1, p0, Lrj;->h:Ljava/util/ArrayList;

    .line 351
    .line 352
    return-object p0

    .line 353
    :pswitch_9
    new-instance p0, Lmj;

    .line 354
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    iput-object v0, p0, Lmj;->a:Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 365
    .line 366
    .line 367
    move-result p1

    .line 368
    iput p1, p0, Lmj;->b:I

    .line 369
    .line 370
    return-object p0

    .line 371
    :pswitch_a
    new-instance p0, Lsd;

    .line 372
    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 374
    .line 375
    .line 376
    move-result-wide v0

    .line 377
    invoke-direct {p0, v0, v1}, Lsd;-><init>(J)V

    .line 378
    .line 379
    .line 380
    return-object p0

    .line 381
    :pswitch_b
    const-class p0, Lzr;

    .line 382
    .line 383
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    move-object v2, v0

    .line 392
    check-cast v2, Lzr;

    .line 393
    .line 394
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    move-object v3, v0

    .line 403
    check-cast v3, Lzr;

    .line 404
    .line 405
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 406
    .line 407
    .line 408
    move-result-object p0

    .line 409
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 410
    .line 411
    .line 412
    move-result-object p0

    .line 413
    move-object v5, p0

    .line 414
    check-cast v5, Lzr;

    .line 415
    .line 416
    const-class p0, Lsd;

    .line 417
    .line 418
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    move-object v4, p0

    .line 427
    check-cast v4, Lsd;

    .line 428
    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 430
    .line 431
    .line 432
    move-result v6

    .line 433
    new-instance v1, Ly7;

    .line 434
    .line 435
    invoke-direct/range {v1 .. v6}, Ly7;-><init>(Lzr;Lzr;Lsd;Lzr;I)V

    .line 436
    .line 437
    .line 438
    return-object v1

    .line 439
    :pswitch_c
    new-instance p0, La7;

    .line 440
    .line 441
    invoke-direct {p0, p1}, La7;-><init>(Landroid/os/Parcel;)V

    .line 442
    .line 443
    .line 444
    return-object p0

    .line 445
    :pswitch_d
    new-instance p0, Lz6;

    .line 446
    .line 447
    invoke-direct {p0, p1}, Lz6;-><init>(Landroid/os/Parcel;)V

    .line 448
    .line 449
    .line 450
    return-object p0

    .line 451
    :pswitch_e
    new-instance p0, Lg5;

    .line 452
    .line 453
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 457
    .line 458
    .line 459
    move-result p1

    .line 460
    if-eqz p1, :cond_8

    .line 461
    .line 462
    goto :goto_5

    .line 463
    :cond_8
    move v1, v2

    .line 464
    :goto_5
    iput-boolean v1, p0, Lg5;->a:Z

    .line 465
    .line 466
    return-object p0

    .line 467
    :pswitch_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    new-instance p0, Lx1;

    .line 471
    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 473
    .line 474
    .line 475
    move-result v1

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    if-nez v2, :cond_9

    .line 481
    .line 482
    goto :goto_6

    .line 483
    :cond_9
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 484
    .line 485
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object p1

    .line 489
    move-object v0, p1

    .line 490
    check-cast v0, Landroid/content/Intent;

    .line 491
    .line 492
    :goto_6
    invoke-direct {p0, v0, v1}, Lx1;-><init>(Landroid/content/Intent;I)V

    .line 493
    .line 494
    .line 495
    return-object p0

    .line 496
    nop

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lw1;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lw00;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lv00;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Landroidx/versionedparcelable/ParcelImpl;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lqs;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Lzr;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lqq;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Lho;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Lkm;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Lwj;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lrj;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Lmj;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Lsd;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Ly7;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    new-array p0, p1, [La7;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    new-array p0, p1, [Lz6;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_e
    new-array p0, p1, [Lg5;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_f
    new-array p0, p1, [Lx1;

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
