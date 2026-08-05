.class public final Lq10;
.super Landroid/view/MenuInflater;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public static final e:[Ljava/lang/Class;

.field public static final f:[Ljava/lang/Class;

.field public final a:[Ljava/lang/Object;

.field public final b:[Ljava/lang/Object;

.field public final c:Landroid/content/Context;

.field public d:Ljava/lang/Object;

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lq10;->e:[Ljava/lang/Class;

    .line 8
    .line 9
    sput-object v0, Lq10;->f:[Ljava/lang/Class;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq10;->c:Landroid/content/Context;

    .line 5
    .line 6
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lq10;->a:[Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p1, p0, Lq10;->b:[Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p0, Landroid/content/ContextWrapper;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lq10;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_1
    return-object p0
.end method

.method public final b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lp10;

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-direct {v2, v0, v3}, Lp10;-><init>(Lq10;Landroid/view/Menu;)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    :goto_0
    const/4 v4, 0x2

    .line 17
    const-string v5, "menu"

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    if-ne v3, v4, :cond_1

    .line 21
    .line 22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-eqz v7, :cond_0

    .line 31
    .line 32
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    const-string v1, "Expecting menu, got "

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ne v3, v6, :cond_16

    .line 54
    .line 55
    :goto_1
    const/4 v7, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    move v9, v7

    .line 58
    move v10, v9

    .line 59
    move-object v11, v8

    .line 60
    :goto_2
    if-nez v9, :cond_15

    .line 61
    .line 62
    if-eq v3, v6, :cond_14

    .line 63
    .line 64
    const-string v12, "item"

    .line 65
    .line 66
    const-string v13, "group"

    .line 67
    .line 68
    iget-object v14, v2, Lp10;->a:Landroid/view/Menu;

    .line 69
    .line 70
    if-eq v3, v4, :cond_8

    .line 71
    .line 72
    const/4 v15, 0x3

    .line 73
    if-eq v3, v15, :cond_3

    .line 74
    .line 75
    :cond_2
    :goto_3
    move-object/from16 v4, p1

    .line 76
    .line 77
    goto/16 :goto_b

    .line 78
    .line 79
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v10, :cond_4

    .line 84
    .line 85
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v15

    .line 89
    if-eqz v15, :cond_4

    .line 90
    .line 91
    move-object/from16 v4, p1

    .line 92
    .line 93
    move v10, v7

    .line 94
    move-object v11, v8

    .line 95
    goto/16 :goto_b

    .line 96
    .line 97
    :cond_4
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-eqz v13, :cond_5

    .line 102
    .line 103
    iput v7, v2, Lp10;->b:I

    .line 104
    .line 105
    iput v7, v2, Lp10;->c:I

    .line 106
    .line 107
    iput v7, v2, Lp10;->d:I

    .line 108
    .line 109
    iput v7, v2, Lp10;->e:I

    .line 110
    .line 111
    iput-boolean v6, v2, Lp10;->f:Z

    .line 112
    .line 113
    iput-boolean v6, v2, Lp10;->g:Z

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    if-eqz v12, :cond_7

    .line 121
    .line 122
    iget-boolean v3, v2, Lp10;->h:Z

    .line 123
    .line 124
    if-nez v3, :cond_2

    .line 125
    .line 126
    iget-object v3, v2, Lp10;->z:Ljr;

    .line 127
    .line 128
    if-eqz v3, :cond_6

    .line 129
    .line 130
    iget-object v3, v3, Ljr;->b:Landroid/view/ActionProvider;

    .line 131
    .line 132
    invoke-virtual {v3}, Landroid/view/ActionProvider;->hasSubMenu()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_6

    .line 137
    .line 138
    iput-boolean v6, v2, Lp10;->h:Z

    .line 139
    .line 140
    iget v3, v2, Lp10;->b:I

    .line 141
    .line 142
    iget v12, v2, Lp10;->i:I

    .line 143
    .line 144
    iget v13, v2, Lp10;->j:I

    .line 145
    .line 146
    iget-object v15, v2, Lp10;->k:Ljava/lang/CharSequence;

    .line 147
    .line 148
    invoke-interface {v14, v3, v12, v13, v15}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v2, v3}, Lp10;->b(Landroid/view/MenuItem;)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_6
    iput-boolean v6, v2, Lp10;->h:Z

    .line 161
    .line 162
    iget v3, v2, Lp10;->b:I

    .line 163
    .line 164
    iget v12, v2, Lp10;->i:I

    .line 165
    .line 166
    iget v13, v2, Lp10;->j:I

    .line 167
    .line 168
    iget-object v15, v2, Lp10;->k:Ljava/lang/CharSequence;

    .line 169
    .line 170
    invoke-interface {v14, v3, v12, v13, v15}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v2, v3}, Lp10;->b(Landroid/view/MenuItem;)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-eqz v3, :cond_2

    .line 183
    .line 184
    move-object/from16 v4, p1

    .line 185
    .line 186
    move v9, v6

    .line 187
    goto/16 :goto_b

    .line 188
    .line 189
    :cond_8
    if-eqz v10, :cond_9

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v13

    .line 200
    iget-object v15, v0, Lq10;->c:Landroid/content/Context;

    .line 201
    .line 202
    if-eqz v13, :cond_a

    .line 203
    .line 204
    sget-object v3, Liw;->MenuGroup:[I

    .line 205
    .line 206
    invoke-virtual {v15, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    sget v12, Liw;->MenuGroup_android_id:I

    .line 211
    .line 212
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 213
    .line 214
    .line 215
    move-result v12

    .line 216
    iput v12, v2, Lp10;->b:I

    .line 217
    .line 218
    sget v12, Liw;->MenuGroup_android_menuCategory:I

    .line 219
    .line 220
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    iput v12, v2, Lp10;->c:I

    .line 225
    .line 226
    sget v12, Liw;->MenuGroup_android_orderInCategory:I

    .line 227
    .line 228
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    iput v12, v2, Lp10;->d:I

    .line 233
    .line 234
    sget v12, Liw;->MenuGroup_android_checkableBehavior:I

    .line 235
    .line 236
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 237
    .line 238
    .line 239
    move-result v12

    .line 240
    iput v12, v2, Lp10;->e:I

    .line 241
    .line 242
    sget v12, Liw;->MenuGroup_android_visible:I

    .line 243
    .line 244
    invoke-virtual {v3, v12, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 245
    .line 246
    .line 247
    move-result v12

    .line 248
    iput-boolean v12, v2, Lp10;->f:Z

    .line 249
    .line 250
    sget v12, Liw;->MenuGroup_android_enabled:I

    .line 251
    .line 252
    invoke-virtual {v3, v12, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 253
    .line 254
    .line 255
    move-result v12

    .line 256
    iput-boolean v12, v2, Lp10;->g:Z

    .line 257
    .line 258
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_3

    .line 262
    .line 263
    :cond_a
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v12

    .line 267
    if-eqz v12, :cond_12

    .line 268
    .line 269
    sget-object v3, Liw;->MenuItem:[I

    .line 270
    .line 271
    invoke-virtual {v15, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    sget v12, Liw;->MenuItem_android_id:I

    .line 276
    .line 277
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 278
    .line 279
    .line 280
    move-result v12

    .line 281
    iput v12, v2, Lp10;->i:I

    .line 282
    .line 283
    sget v12, Liw;->MenuItem_android_menuCategory:I

    .line 284
    .line 285
    iget v13, v2, Lp10;->c:I

    .line 286
    .line 287
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 288
    .line 289
    .line 290
    move-result v12

    .line 291
    sget v13, Liw;->MenuItem_android_orderInCategory:I

    .line 292
    .line 293
    iget v14, v2, Lp10;->d:I

    .line 294
    .line 295
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 296
    .line 297
    .line 298
    move-result v13

    .line 299
    const/high16 v14, -0x10000

    .line 300
    .line 301
    and-int/2addr v12, v14

    .line 302
    const v14, 0xffff

    .line 303
    .line 304
    .line 305
    and-int/2addr v13, v14

    .line 306
    or-int/2addr v12, v13

    .line 307
    iput v12, v2, Lp10;->j:I

    .line 308
    .line 309
    sget v12, Liw;->MenuItem_android_title:I

    .line 310
    .line 311
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    iput-object v12, v2, Lp10;->k:Ljava/lang/CharSequence;

    .line 316
    .line 317
    sget v12, Liw;->MenuItem_android_titleCondensed:I

    .line 318
    .line 319
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 320
    .line 321
    .line 322
    move-result-object v12

    .line 323
    iput-object v12, v2, Lp10;->l:Ljava/lang/CharSequence;

    .line 324
    .line 325
    sget v12, Liw;->MenuItem_android_icon:I

    .line 326
    .line 327
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 328
    .line 329
    .line 330
    move-result v12

    .line 331
    iput v12, v2, Lp10;->m:I

    .line 332
    .line 333
    sget v12, Liw;->MenuItem_android_alphabeticShortcut:I

    .line 334
    .line 335
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v12

    .line 339
    if-nez v12, :cond_b

    .line 340
    .line 341
    move v12, v7

    .line 342
    goto :goto_4

    .line 343
    :cond_b
    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    .line 344
    .line 345
    .line 346
    move-result v12

    .line 347
    :goto_4
    iput-char v12, v2, Lp10;->n:C

    .line 348
    .line 349
    sget v12, Liw;->MenuItem_alphabeticModifiers:I

    .line 350
    .line 351
    const/16 v13, 0x1000

    .line 352
    .line 353
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 354
    .line 355
    .line 356
    move-result v12

    .line 357
    iput v12, v2, Lp10;->o:I

    .line 358
    .line 359
    sget v12, Liw;->MenuItem_android_numericShortcut:I

    .line 360
    .line 361
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v12

    .line 365
    if-nez v12, :cond_c

    .line 366
    .line 367
    move v12, v7

    .line 368
    goto :goto_5

    .line 369
    :cond_c
    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    .line 370
    .line 371
    .line 372
    move-result v12

    .line 373
    :goto_5
    iput-char v12, v2, Lp10;->p:C

    .line 374
    .line 375
    sget v12, Liw;->MenuItem_numericModifiers:I

    .line 376
    .line 377
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 378
    .line 379
    .line 380
    move-result v12

    .line 381
    iput v12, v2, Lp10;->q:I

    .line 382
    .line 383
    sget v12, Liw;->MenuItem_android_checkable:I

    .line 384
    .line 385
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 386
    .line 387
    .line 388
    move-result v12

    .line 389
    if-eqz v12, :cond_d

    .line 390
    .line 391
    sget v12, Liw;->MenuItem_android_checkable:I

    .line 392
    .line 393
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 394
    .line 395
    .line 396
    move-result v12

    .line 397
    iput v12, v2, Lp10;->r:I

    .line 398
    .line 399
    goto :goto_6

    .line 400
    :cond_d
    iget v12, v2, Lp10;->e:I

    .line 401
    .line 402
    iput v12, v2, Lp10;->r:I

    .line 403
    .line 404
    :goto_6
    sget v12, Liw;->MenuItem_android_checked:I

    .line 405
    .line 406
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 407
    .line 408
    .line 409
    move-result v12

    .line 410
    iput-boolean v12, v2, Lp10;->s:Z

    .line 411
    .line 412
    sget v12, Liw;->MenuItem_android_visible:I

    .line 413
    .line 414
    iget-boolean v13, v2, Lp10;->f:Z

    .line 415
    .line 416
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 417
    .line 418
    .line 419
    move-result v12

    .line 420
    iput-boolean v12, v2, Lp10;->t:Z

    .line 421
    .line 422
    sget v12, Liw;->MenuItem_android_enabled:I

    .line 423
    .line 424
    iget-boolean v13, v2, Lp10;->g:Z

    .line 425
    .line 426
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 427
    .line 428
    .line 429
    move-result v12

    .line 430
    iput-boolean v12, v2, Lp10;->u:Z

    .line 431
    .line 432
    sget v12, Liw;->MenuItem_showAsAction:I

    .line 433
    .line 434
    const/4 v13, -0x1

    .line 435
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 436
    .line 437
    .line 438
    move-result v12

    .line 439
    iput v12, v2, Lp10;->v:I

    .line 440
    .line 441
    sget v12, Liw;->MenuItem_android_onClick:I

    .line 442
    .line 443
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v12

    .line 447
    iput-object v12, v2, Lp10;->y:Ljava/lang/String;

    .line 448
    .line 449
    sget v12, Liw;->MenuItem_actionLayout:I

    .line 450
    .line 451
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 452
    .line 453
    .line 454
    move-result v12

    .line 455
    iput v12, v2, Lp10;->w:I

    .line 456
    .line 457
    sget v12, Liw;->MenuItem_actionViewClass:I

    .line 458
    .line 459
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v12

    .line 463
    iput-object v12, v2, Lp10;->x:Ljava/lang/String;

    .line 464
    .line 465
    sget v12, Liw;->MenuItem_actionProviderClass:I

    .line 466
    .line 467
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v12

    .line 471
    if-eqz v12, :cond_e

    .line 472
    .line 473
    iget v14, v2, Lp10;->w:I

    .line 474
    .line 475
    if-nez v14, :cond_e

    .line 476
    .line 477
    iget-object v14, v2, Lp10;->x:Ljava/lang/String;

    .line 478
    .line 479
    if-nez v14, :cond_e

    .line 480
    .line 481
    sget-object v14, Lq10;->f:[Ljava/lang/Class;

    .line 482
    .line 483
    iget-object v4, v0, Lq10;->b:[Ljava/lang/Object;

    .line 484
    .line 485
    invoke-virtual {v2, v12, v14, v4}, Lp10;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    check-cast v4, Ljr;

    .line 490
    .line 491
    iput-object v4, v2, Lp10;->z:Ljr;

    .line 492
    .line 493
    goto :goto_7

    .line 494
    :cond_e
    iput-object v8, v2, Lp10;->z:Ljr;

    .line 495
    .line 496
    :goto_7
    sget v4, Liw;->MenuItem_contentDescription:I

    .line 497
    .line 498
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    iput-object v4, v2, Lp10;->A:Ljava/lang/CharSequence;

    .line 503
    .line 504
    sget v4, Liw;->MenuItem_tooltipText:I

    .line 505
    .line 506
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 507
    .line 508
    .line 509
    move-result-object v4

    .line 510
    iput-object v4, v2, Lp10;->B:Ljava/lang/CharSequence;

    .line 511
    .line 512
    sget v4, Liw;->MenuItem_iconTintMode:I

    .line 513
    .line 514
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    if-eqz v4, :cond_f

    .line 519
    .line 520
    sget v4, Liw;->MenuItem_iconTintMode:I

    .line 521
    .line 522
    invoke-virtual {v3, v4, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 523
    .line 524
    .line 525
    move-result v4

    .line 526
    iget-object v12, v2, Lp10;->D:Landroid/graphics/PorterDuff$Mode;

    .line 527
    .line 528
    invoke-static {v4, v12}, Lwf;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 529
    .line 530
    .line 531
    move-result-object v4

    .line 532
    iput-object v4, v2, Lp10;->D:Landroid/graphics/PorterDuff$Mode;

    .line 533
    .line 534
    goto :goto_8

    .line 535
    :cond_f
    iput-object v8, v2, Lp10;->D:Landroid/graphics/PorterDuff$Mode;

    .line 536
    .line 537
    :goto_8
    sget v4, Liw;->MenuItem_iconTint:I

    .line 538
    .line 539
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 540
    .line 541
    .line 542
    move-result v4

    .line 543
    if-eqz v4, :cond_11

    .line 544
    .line 545
    sget v4, Liw;->MenuItem_iconTint:I

    .line 546
    .line 547
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 548
    .line 549
    .line 550
    move-result v12

    .line 551
    if-eqz v12, :cond_10

    .line 552
    .line 553
    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 554
    .line 555
    .line 556
    move-result v12

    .line 557
    if-eqz v12, :cond_10

    .line 558
    .line 559
    invoke-static {v15, v12}, Lvd;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 560
    .line 561
    .line 562
    move-result-object v12

    .line 563
    if-eqz v12, :cond_10

    .line 564
    .line 565
    goto :goto_9

    .line 566
    :cond_10
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 567
    .line 568
    .line 569
    move-result-object v12

    .line 570
    :goto_9
    iput-object v12, v2, Lp10;->C:Landroid/content/res/ColorStateList;

    .line 571
    .line 572
    goto :goto_a

    .line 573
    :cond_11
    iput-object v8, v2, Lp10;->C:Landroid/content/res/ColorStateList;

    .line 574
    .line 575
    :goto_a
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 576
    .line 577
    .line 578
    iput-boolean v7, v2, Lp10;->h:Z

    .line 579
    .line 580
    goto/16 :goto_3

    .line 581
    .line 582
    :cond_12
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v4

    .line 586
    if-eqz v4, :cond_13

    .line 587
    .line 588
    iput-boolean v6, v2, Lp10;->h:Z

    .line 589
    .line 590
    iget v3, v2, Lp10;->b:I

    .line 591
    .line 592
    iget v4, v2, Lp10;->i:I

    .line 593
    .line 594
    iget v12, v2, Lp10;->j:I

    .line 595
    .line 596
    iget-object v13, v2, Lp10;->k:Ljava/lang/CharSequence;

    .line 597
    .line 598
    invoke-interface {v14, v3, v4, v12, v13}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 603
    .line 604
    .line 605
    move-result-object v4

    .line 606
    invoke-virtual {v2, v4}, Lp10;->b(Landroid/view/MenuItem;)V

    .line 607
    .line 608
    .line 609
    move-object/from16 v4, p1

    .line 610
    .line 611
    invoke-virtual {v0, v4, v1, v3}, Lq10;->b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    .line 612
    .line 613
    .line 614
    goto :goto_b

    .line 615
    :cond_13
    move-object/from16 v4, p1

    .line 616
    .line 617
    move-object v11, v3

    .line 618
    move v10, v6

    .line 619
    :goto_b
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 620
    .line 621
    .line 622
    move-result v3

    .line 623
    const/4 v4, 0x2

    .line 624
    goto/16 :goto_2

    .line 625
    .line 626
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    .line 627
    .line 628
    const-string v1, "Unexpected end of document"

    .line 629
    .line 630
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    throw v0

    .line 634
    :cond_15
    return-void

    .line 635
    :cond_16
    move-object/from16 v4, p1

    .line 636
    .line 637
    goto/16 :goto_0
.end method

.method public final inflate(ILandroid/view/Menu;)V
    .locals 5

    .line 1
    const-string v0, "Error inflating menu XML"

    .line 2
    .line 3
    instance-of v1, p2, Ler;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    iget-object v3, p0, Lq10;->c:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    instance-of v3, p2, Ler;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    move-object v3, p2

    .line 32
    check-cast v3, Ler;

    .line 33
    .line 34
    iget-boolean v4, v3, Ler;->p:Z

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Ler;->w()V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_3

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :catch_1
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Lq10;->b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    check-cast p2, Ler;

    .line 55
    .line 56
    invoke-virtual {p2}, Ler;->v()V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    :try_start_1
    new-instance p1, Landroid/view/InflateException;

    .line 64
    .line 65
    invoke-direct {p1, v0, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :goto_2
    new-instance p1, Landroid/view/InflateException;

    .line 70
    .line 71
    invoke-direct {p1, v0, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_3
    if-eqz v2, :cond_3

    .line 76
    .line 77
    check-cast p2, Ler;

    .line 78
    .line 79
    invoke-virtual {p2}, Ler;->v()V

    .line 80
    .line 81
    .line 82
    :cond_3
    if-eqz v1, :cond_4

    .line 83
    .line 84
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 85
    .line 86
    .line 87
    :cond_4
    throw p0
.end method
