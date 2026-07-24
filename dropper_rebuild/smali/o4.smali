.class public final Lo4;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo4;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lo4;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lo4;->a:I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lo4;->a:I

    .line 13
    iput-object p1, p0, Lo4;->b:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lo4;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x1

    .line 18
    const/4 v6, 0x2

    .line 19
    if-eq v4, v6, :cond_0

    .line 20
    .line 21
    if-eq v4, v5, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-ne v4, v6, :cond_22

    .line 25
    .line 26
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string v7, "gradient"

    .line 34
    .line 35
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    const/4 v9, 0x0

    .line 40
    if-nez v8, :cond_2

    .line 41
    .line 42
    const-string v5, "selector"

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-static {v0, v2, v3, v1}, Lia;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lo4;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-direct {v1, v9, v0, v2}, Lo4;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 65
    .line 66
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ": unsupported complex color tag "

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_21

    .line 103
    .line 104
    sget-object v4, Ldw;->GradientColor:[I

    .line 105
    .line 106
    invoke-static {v0, v1, v3, v4}, Lyt;->n(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    sget v7, Ldw;->GradientColor_android_startX:I

    .line 111
    .line 112
    const-string v8, "http://schemas.android.com/apk/res/android"

    .line 113
    .line 114
    const-string v10, "startX"

    .line 115
    .line 116
    invoke-interface {v2, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    const/4 v11, 0x0

    .line 121
    if-eqz v10, :cond_3

    .line 122
    .line 123
    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    move v13, v7

    .line 128
    goto :goto_1

    .line 129
    :cond_3
    move v13, v11

    .line 130
    :goto_1
    sget v7, Ldw;->GradientColor_android_startY:I

    .line 131
    .line 132
    const-string v10, "startY"

    .line 133
    .line 134
    invoke-interface {v2, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    if-eqz v10, :cond_4

    .line 139
    .line 140
    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    move v14, v7

    .line 145
    goto :goto_2

    .line 146
    :cond_4
    move v14, v11

    .line 147
    :goto_2
    sget v7, Ldw;->GradientColor_android_endX:I

    .line 148
    .line 149
    const-string v10, "endX"

    .line 150
    .line 151
    invoke-interface {v2, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    if-eqz v10, :cond_5

    .line 156
    .line 157
    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    move v15, v7

    .line 162
    goto :goto_3

    .line 163
    :cond_5
    move v15, v11

    .line 164
    :goto_3
    sget v7, Ldw;->GradientColor_android_endY:I

    .line 165
    .line 166
    const-string v10, "endY"

    .line 167
    .line 168
    invoke-interface {v2, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    if-eqz v10, :cond_6

    .line 173
    .line 174
    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    move/from16 v16, v7

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_6
    move/from16 v16, v11

    .line 182
    .line 183
    :goto_4
    sget v7, Ldw;->GradientColor_android_centerX:I

    .line 184
    .line 185
    const-string v10, "centerX"

    .line 186
    .line 187
    invoke-interface {v2, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    if-eqz v10, :cond_7

    .line 192
    .line 193
    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    goto :goto_5

    .line 198
    :cond_7
    move v7, v11

    .line 199
    :goto_5
    sget v10, Ldw;->GradientColor_android_centerY:I

    .line 200
    .line 201
    const-string v12, "centerY"

    .line 202
    .line 203
    invoke-interface {v2, v8, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v12

    .line 207
    if-eqz v12, :cond_8

    .line 208
    .line 209
    invoke-virtual {v4, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    goto :goto_6

    .line 214
    :cond_8
    move v10, v11

    .line 215
    :goto_6
    sget v12, Ldw;->GradientColor_android_type:I

    .line 216
    .line 217
    const-string v9, "type"

    .line 218
    .line 219
    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    const/4 v6, 0x0

    .line 224
    if-eqz v9, :cond_9

    .line 225
    .line 226
    invoke-virtual {v4, v12, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    goto :goto_7

    .line 231
    :cond_9
    move v9, v6

    .line 232
    :goto_7
    sget v12, Ldw;->GradientColor_android_startColor:I

    .line 233
    .line 234
    move/from16 v18, v5

    .line 235
    .line 236
    const-string v5, "startColor"

    .line 237
    .line 238
    invoke-interface {v2, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    if-eqz v5, :cond_a

    .line 243
    .line 244
    invoke-virtual {v4, v12, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    goto :goto_8

    .line 249
    :cond_a
    move v5, v6

    .line 250
    :goto_8
    const-string v12, "centerColor"

    .line 251
    .line 252
    invoke-interface {v2, v8, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v19

    .line 256
    if-eqz v19, :cond_b

    .line 257
    .line 258
    move/from16 v19, v18

    .line 259
    .line 260
    goto :goto_9

    .line 261
    :cond_b
    move/from16 v19, v6

    .line 262
    .line 263
    :goto_9
    sget v11, Ldw;->GradientColor_android_centerColor:I

    .line 264
    .line 265
    invoke-interface {v2, v8, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v12

    .line 269
    if-eqz v12, :cond_c

    .line 270
    .line 271
    invoke-virtual {v4, v11, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 272
    .line 273
    .line 274
    move-result v11

    .line 275
    goto :goto_a

    .line 276
    :cond_c
    move v11, v6

    .line 277
    :goto_a
    sget v12, Ldw;->GradientColor_android_endColor:I

    .line 278
    .line 279
    const-string v6, "endColor"

    .line 280
    .line 281
    invoke-interface {v2, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    if-eqz v6, :cond_d

    .line 286
    .line 287
    const/4 v6, 0x0

    .line 288
    invoke-virtual {v4, v12, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 289
    .line 290
    .line 291
    move-result v24

    .line 292
    move/from16 v12, v24

    .line 293
    .line 294
    goto :goto_b

    .line 295
    :cond_d
    const/4 v6, 0x0

    .line 296
    move v12, v6

    .line 297
    :goto_b
    sget v6, Ldw;->GradientColor_android_tileMode:I

    .line 298
    .line 299
    move/from16 v21, v13

    .line 300
    .line 301
    const-string v13, "tileMode"

    .line 302
    .line 303
    invoke-interface {v2, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v13

    .line 307
    if-eqz v13, :cond_e

    .line 308
    .line 309
    const/4 v13, 0x0

    .line 310
    invoke-virtual {v4, v6, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    goto :goto_c

    .line 315
    :cond_e
    const/4 v6, 0x0

    .line 316
    :goto_c
    sget v13, Ldw;->GradientColor_android_gradientRadius:I

    .line 317
    .line 318
    move/from16 v22, v14

    .line 319
    .line 320
    const-string v14, "gradientRadius"

    .line 321
    .line 322
    invoke-interface {v2, v8, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    if-eqz v8, :cond_f

    .line 327
    .line 328
    const/4 v8, 0x0

    .line 329
    invoke-virtual {v4, v13, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 330
    .line 331
    .line 332
    move-result v13

    .line 333
    move v8, v13

    .line 334
    goto :goto_d

    .line 335
    :cond_f
    const/4 v8, 0x0

    .line 336
    :goto_d
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 337
    .line 338
    .line 339
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    add-int/lit8 v4, v4, 0x1

    .line 344
    .line 345
    new-instance v13, Ljava/util/ArrayList;

    .line 346
    .line 347
    const/16 v14, 0x14

    .line 348
    .line 349
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 350
    .line 351
    .line 352
    move-object/from16 v23, v2

    .line 353
    .line 354
    new-instance v2, Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    .line 358
    .line 359
    :goto_e
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 360
    .line 361
    .line 362
    move-result v14

    .line 363
    move/from16 v25, v8

    .line 364
    .line 365
    move/from16 v8, v18

    .line 366
    .line 367
    if-eq v14, v8, :cond_15

    .line 368
    .line 369
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 370
    .line 371
    .line 372
    move-result v8

    .line 373
    move/from16 v26, v15

    .line 374
    .line 375
    if-ge v8, v4, :cond_10

    .line 376
    .line 377
    const/4 v15, 0x3

    .line 378
    if-eq v14, v15, :cond_16

    .line 379
    .line 380
    :cond_10
    const/4 v15, 0x2

    .line 381
    if-eq v14, v15, :cond_11

    .line 382
    .line 383
    :goto_f
    move/from16 v8, v25

    .line 384
    .line 385
    move/from16 v15, v26

    .line 386
    .line 387
    const/16 v18, 0x1

    .line 388
    .line 389
    goto :goto_e

    .line 390
    :cond_11
    if-gt v8, v4, :cond_13

    .line 391
    .line 392
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v8

    .line 396
    const-string v14, "item"

    .line 397
    .line 398
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v8

    .line 402
    if-nez v8, :cond_12

    .line 403
    .line 404
    goto :goto_f

    .line 405
    :cond_12
    sget-object v8, Ldw;->GradientColorItem:[I

    .line 406
    .line 407
    invoke-static {v0, v1, v3, v8}, Lyt;->n(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    sget v14, Ldw;->GradientColorItem_android_color:I

    .line 412
    .line 413
    invoke-virtual {v8, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 414
    .line 415
    .line 416
    move-result v14

    .line 417
    sget v15, Ldw;->GradientColorItem_android_offset:I

    .line 418
    .line 419
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 420
    .line 421
    .line 422
    move-result v15

    .line 423
    if-eqz v14, :cond_14

    .line 424
    .line 425
    if-eqz v15, :cond_14

    .line 426
    .line 427
    sget v14, Ldw;->GradientColorItem_android_color:I

    .line 428
    .line 429
    const/4 v15, 0x0

    .line 430
    invoke-virtual {v8, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 431
    .line 432
    .line 433
    move-result v14

    .line 434
    sget v15, Ldw;->GradientColorItem_android_offset:I

    .line 435
    .line 436
    const/4 v0, 0x0

    .line 437
    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 438
    .line 439
    .line 440
    move-result v15

    .line 441
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 442
    .line 443
    .line 444
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    :cond_13
    move-object/from16 v0, p0

    .line 459
    .line 460
    goto :goto_f

    .line 461
    :cond_14
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 462
    .line 463
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    const-string v1, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    .line 476
    .line 477
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    throw v0

    .line 488
    :cond_15
    move/from16 v26, v15

    .line 489
    .line 490
    :cond_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-lez v0, :cond_17

    .line 495
    .line 496
    new-instance v0, Ls4;

    .line 497
    .line 498
    invoke-direct {v0, v2, v13}, Ls4;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 499
    .line 500
    .line 501
    goto :goto_10

    .line 502
    :cond_17
    const/4 v0, 0x0

    .line 503
    :goto_10
    if-eqz v0, :cond_18

    .line 504
    .line 505
    :goto_11
    const/4 v8, 0x1

    .line 506
    goto :goto_12

    .line 507
    :cond_18
    if-eqz v19, :cond_19

    .line 508
    .line 509
    new-instance v0, Ls4;

    .line 510
    .line 511
    invoke-direct {v0, v5, v11, v12}, Ls4;-><init>(III)V

    .line 512
    .line 513
    .line 514
    goto :goto_11

    .line 515
    :cond_19
    new-instance v0, Ls4;

    .line 516
    .line 517
    invoke-direct {v0, v5, v12}, Ls4;-><init>(II)V

    .line 518
    .line 519
    .line 520
    goto :goto_11

    .line 521
    :goto_12
    if-eq v9, v8, :cond_1d

    .line 522
    .line 523
    const/4 v15, 0x2

    .line 524
    if-eq v9, v15, :cond_1c

    .line 525
    .line 526
    new-instance v12, Landroid/graphics/LinearGradient;

    .line 527
    .line 528
    iget-object v1, v0, Ls4;->b:Ljava/lang/Object;

    .line 529
    .line 530
    move-object/from16 v17, v1

    .line 531
    .line 532
    check-cast v17, [I

    .line 533
    .line 534
    iget-object v0, v0, Ls4;->c:Ljava/lang/Object;

    .line 535
    .line 536
    move-object/from16 v18, v0

    .line 537
    .line 538
    check-cast v18, [F

    .line 539
    .line 540
    if-eq v6, v8, :cond_1b

    .line 541
    .line 542
    if-eq v6, v15, :cond_1a

    .line 543
    .line 544
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 545
    .line 546
    :goto_13
    move-object/from16 v19, v0

    .line 547
    .line 548
    move/from16 v13, v21

    .line 549
    .line 550
    move/from16 v14, v22

    .line 551
    .line 552
    move/from16 v15, v26

    .line 553
    .line 554
    goto :goto_14

    .line 555
    :cond_1a
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 556
    .line 557
    goto :goto_13

    .line 558
    :cond_1b
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 559
    .line 560
    goto :goto_13

    .line 561
    :goto_14
    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 562
    .line 563
    .line 564
    goto :goto_17

    .line 565
    :cond_1c
    new-instance v12, Landroid/graphics/SweepGradient;

    .line 566
    .line 567
    iget-object v1, v0, Ls4;->b:Ljava/lang/Object;

    .line 568
    .line 569
    check-cast v1, [I

    .line 570
    .line 571
    iget-object v0, v0, Ls4;->c:Ljava/lang/Object;

    .line 572
    .line 573
    check-cast v0, [F

    .line 574
    .line 575
    invoke-direct {v12, v7, v10, v1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 576
    .line 577
    .line 578
    goto :goto_17

    .line 579
    :cond_1d
    const/16 v20, 0x0

    .line 580
    .line 581
    cmpg-float v1, v25, v20

    .line 582
    .line 583
    if-lez v1, :cond_20

    .line 584
    .line 585
    const/4 v15, 0x2

    .line 586
    new-instance v17, Landroid/graphics/RadialGradient;

    .line 587
    .line 588
    iget-object v1, v0, Ls4;->b:Ljava/lang/Object;

    .line 589
    .line 590
    move-object/from16 v21, v1

    .line 591
    .line 592
    check-cast v21, [I

    .line 593
    .line 594
    iget-object v0, v0, Ls4;->c:Ljava/lang/Object;

    .line 595
    .line 596
    move-object/from16 v22, v0

    .line 597
    .line 598
    check-cast v22, [F

    .line 599
    .line 600
    const/4 v8, 0x1

    .line 601
    if-eq v6, v8, :cond_1f

    .line 602
    .line 603
    if-eq v6, v15, :cond_1e

    .line 604
    .line 605
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 606
    .line 607
    :goto_15
    move-object/from16 v23, v0

    .line 608
    .line 609
    move/from16 v18, v7

    .line 610
    .line 611
    move/from16 v19, v10

    .line 612
    .line 613
    move/from16 v20, v25

    .line 614
    .line 615
    goto :goto_16

    .line 616
    :cond_1e
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 617
    .line 618
    goto :goto_15

    .line 619
    :cond_1f
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 620
    .line 621
    goto :goto_15

    .line 622
    :goto_16
    invoke-direct/range {v17 .. v23}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 623
    .line 624
    .line 625
    move-object/from16 v12, v17

    .line 626
    .line 627
    :goto_17
    new-instance v0, Lo4;

    .line 628
    .line 629
    const/4 v1, 0x0

    .line 630
    const/4 v13, 0x0

    .line 631
    invoke-direct {v0, v12, v1, v13}, Lo4;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    .line 632
    .line 633
    .line 634
    return-object v0

    .line 635
    :cond_20
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 636
    .line 637
    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    .line 638
    .line 639
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    throw v0

    .line 643
    :cond_21
    move-object/from16 v23, v2

    .line 644
    .line 645
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 646
    .line 647
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    new-instance v2, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    const-string v1, ": invalid gradient color tag "

    .line 660
    .line 661
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    throw v0

    .line 675
    :cond_22
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 676
    .line 677
    const-string v1, "No start tag found"

    .line 678
    .line 679
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Lwf;->a(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lo4;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lb30;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, p0, v0}, Lj4;->e(Landroid/graphics/drawable/Drawable;Lb30;[I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Shader;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lo4;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public d(Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    iget-object p0, p0, Lo4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Landroid/widget/ImageView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v1, Liw;->AppCompatImageView:[I

    .line 11
    .line 12
    invoke-static {p0, p1, v1, p2}, Ly2;->p(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ly2;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v7, v1

    .line 19
    check-cast v7, Landroid/content/res/TypedArray;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Liw;->AppCompatImageView:[I

    .line 26
    .line 27
    iget-object v3, p0, Ly2;->c:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v4, v3

    .line 30
    check-cast v4, Landroid/content/res/TypedArray;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    move-object v3, p1

    .line 34
    move v5, p2

    .line 35
    invoke-static/range {v0 .. v6}, Lw50;->k(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 p2, -0x1

    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    sget v1, Liw;->AppCompatImageView_srcCompat:I

    .line 46
    .line 47
    invoke-virtual {v7, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eq v1, p2, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1, v1}, Lvd;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    move-object p1, v0

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 71
    .line 72
    invoke-static {p1}, Lwf;->a(Landroid/graphics/drawable/Drawable;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    sget p1, Liw;->AppCompatImageView_tint:I

    .line 76
    .line 77
    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    sget p1, Liw;->AppCompatImageView_tint:I

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ly2;->f(I)Landroid/content/res/ColorStateList;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {v0, p1}, Lwl;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    sget p1, Liw;->AppCompatImageView_tintMode:I

    .line 93
    .line 94
    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    sget p1, Liw;->AppCompatImageView_tintMode:I

    .line 101
    .line 102
    invoke-virtual {v7, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    const/4 p2, 0x0

    .line 107
    invoke-static {p1, p2}, Lwf;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v0, p1}, Lwl;->d(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-virtual {p0}, Ly2;->r()V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :goto_1
    invoke-virtual {p0}, Ly2;->r()V

    .line 119
    .line 120
    .line 121
    throw p1
.end method
