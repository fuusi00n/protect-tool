.class public Landroidx/constraintlayout/helper/widget/Flow;
.super Lc70;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public j:Lgi;

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lkb;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lkb;->a:[I

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lkb;->g:Ljava/util/HashMap;

    .line 16
    .line 17
    iput-object p1, p0, Lkb;->c:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/helper/widget/Flow;->g(Landroid/util/AttributeSet;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x20

    .line 25
    new-array p3, p3, [I

    iput-object p3, p0, Lkb;->a:[I

    .line 26
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lkb;->g:Ljava/util/HashMap;

    .line 27
    iput-object p1, p0, Lkb;->c:Landroid/content/Context;

    .line 28
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/helper/widget/Flow;->g(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public final g(Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lc70;->g(Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lgi;

    .line 5
    .line 6
    invoke-direct {v0}, Lrl;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lgi;->s0:I

    .line 11
    .line 12
    iput v1, v0, Lgi;->t0:I

    .line 13
    .line 14
    iput v1, v0, Lgi;->u0:I

    .line 15
    .line 16
    iput v1, v0, Lgi;->v0:I

    .line 17
    .line 18
    iput v1, v0, Lgi;->w0:I

    .line 19
    .line 20
    iput v1, v0, Lgi;->x0:I

    .line 21
    .line 22
    iput-boolean v1, v0, Lgi;->y0:Z

    .line 23
    .line 24
    iput v1, v0, Lgi;->z0:I

    .line 25
    .line 26
    iput v1, v0, Lgi;->A0:I

    .line 27
    .line 28
    new-instance v2, Ll7;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, v0, Lgi;->B0:Ll7;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    iput-object v2, v0, Lgi;->C0:Lnb;

    .line 37
    .line 38
    const/4 v3, -0x1

    .line 39
    iput v3, v0, Lgi;->D0:I

    .line 40
    .line 41
    iput v3, v0, Lgi;->E0:I

    .line 42
    .line 43
    iput v3, v0, Lgi;->F0:I

    .line 44
    .line 45
    iput v3, v0, Lgi;->G0:I

    .line 46
    .line 47
    iput v3, v0, Lgi;->H0:I

    .line 48
    .line 49
    iput v3, v0, Lgi;->I0:I

    .line 50
    .line 51
    const/high16 v4, 0x3f000000

    .line 52
    .line 53
    iput v4, v0, Lgi;->J0:F

    .line 54
    .line 55
    iput v4, v0, Lgi;->K0:F

    .line 56
    .line 57
    iput v4, v0, Lgi;->L0:F

    .line 58
    .line 59
    iput v4, v0, Lgi;->M0:F

    .line 60
    .line 61
    iput v4, v0, Lgi;->N0:F

    .line 62
    .line 63
    iput v4, v0, Lgi;->O0:F

    .line 64
    .line 65
    iput v1, v0, Lgi;->P0:I

    .line 66
    .line 67
    iput v1, v0, Lgi;->Q0:I

    .line 68
    .line 69
    const/4 v5, 0x2

    .line 70
    iput v5, v0, Lgi;->R0:I

    .line 71
    .line 72
    iput v5, v0, Lgi;->S0:I

    .line 73
    .line 74
    iput v1, v0, Lgi;->T0:I

    .line 75
    .line 76
    iput v3, v0, Lgi;->U0:I

    .line 77
    .line 78
    iput v1, v0, Lgi;->V0:I

    .line 79
    .line 80
    new-instance v6, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v6, v0, Lgi;->W0:Ljava/util/ArrayList;

    .line 86
    .line 87
    iput-object v2, v0, Lgi;->X0:[Lxb;

    .line 88
    .line 89
    iput-object v2, v0, Lgi;->Y0:[Lxb;

    .line 90
    .line 91
    iput-object v2, v0, Lgi;->Z0:[I

    .line 92
    .line 93
    iput v1, v0, Lgi;->b1:I

    .line 94
    .line 95
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 96
    .line 97
    if-eqz p1, :cond_1b

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sget-object v2, Lbw;->ConstraintLayout_Layout:[I

    .line 104
    .line 105
    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    move v2, v1

    .line 114
    :goto_0
    if-ge v2, v0, :cond_1a

    .line 115
    .line 116
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    sget v7, Lbw;->ConstraintLayout_Layout_android_orientation:I

    .line 121
    .line 122
    if-ne v6, v7, :cond_0

    .line 123
    .line 124
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 125
    .line 126
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    iput v6, v7, Lgi;->V0:I

    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :cond_0
    sget v7, Lbw;->ConstraintLayout_Layout_android_padding:I

    .line 135
    .line 136
    if-ne v6, v7, :cond_1

    .line 137
    .line 138
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 139
    .line 140
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    iput v6, v7, Lgi;->s0:I

    .line 145
    .line 146
    iput v6, v7, Lgi;->t0:I

    .line 147
    .line 148
    iput v6, v7, Lgi;->u0:I

    .line 149
    .line 150
    iput v6, v7, Lgi;->v0:I

    .line 151
    .line 152
    goto/16 :goto_1

    .line 153
    .line 154
    :cond_1
    sget v7, Lbw;->ConstraintLayout_Layout_android_paddingStart:I

    .line 155
    .line 156
    if-ne v6, v7, :cond_2

    .line 157
    .line 158
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 159
    .line 160
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    iput v6, v7, Lgi;->u0:I

    .line 165
    .line 166
    iput v6, v7, Lgi;->w0:I

    .line 167
    .line 168
    iput v6, v7, Lgi;->x0:I

    .line 169
    .line 170
    goto/16 :goto_1

    .line 171
    .line 172
    :cond_2
    sget v7, Lbw;->ConstraintLayout_Layout_android_paddingEnd:I

    .line 173
    .line 174
    if-ne v6, v7, :cond_3

    .line 175
    .line 176
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 177
    .line 178
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    iput v6, v7, Lgi;->v0:I

    .line 183
    .line 184
    goto/16 :goto_1

    .line 185
    .line 186
    :cond_3
    sget v7, Lbw;->ConstraintLayout_Layout_android_paddingLeft:I

    .line 187
    .line 188
    if-ne v6, v7, :cond_4

    .line 189
    .line 190
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 191
    .line 192
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    iput v6, v7, Lgi;->w0:I

    .line 197
    .line 198
    goto/16 :goto_1

    .line 199
    .line 200
    :cond_4
    sget v7, Lbw;->ConstraintLayout_Layout_android_paddingTop:I

    .line 201
    .line 202
    if-ne v6, v7, :cond_5

    .line 203
    .line 204
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 205
    .line 206
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    iput v6, v7, Lgi;->s0:I

    .line 211
    .line 212
    goto/16 :goto_1

    .line 213
    .line 214
    :cond_5
    sget v7, Lbw;->ConstraintLayout_Layout_android_paddingRight:I

    .line 215
    .line 216
    if-ne v6, v7, :cond_6

    .line 217
    .line 218
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 219
    .line 220
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    iput v6, v7, Lgi;->x0:I

    .line 225
    .line 226
    goto/16 :goto_1

    .line 227
    .line 228
    :cond_6
    sget v7, Lbw;->ConstraintLayout_Layout_android_paddingBottom:I

    .line 229
    .line 230
    if-ne v6, v7, :cond_7

    .line 231
    .line 232
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 233
    .line 234
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    iput v6, v7, Lgi;->t0:I

    .line 239
    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :cond_7
    sget v7, Lbw;->ConstraintLayout_Layout_flow_wrapMode:I

    .line 243
    .line 244
    if-ne v6, v7, :cond_8

    .line 245
    .line 246
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 247
    .line 248
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    iput v6, v7, Lgi;->T0:I

    .line 253
    .line 254
    goto/16 :goto_1

    .line 255
    .line 256
    :cond_8
    sget v7, Lbw;->ConstraintLayout_Layout_flow_horizontalStyle:I

    .line 257
    .line 258
    if-ne v6, v7, :cond_9

    .line 259
    .line 260
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 261
    .line 262
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    iput v6, v7, Lgi;->D0:I

    .line 267
    .line 268
    goto/16 :goto_1

    .line 269
    .line 270
    :cond_9
    sget v7, Lbw;->ConstraintLayout_Layout_flow_verticalStyle:I

    .line 271
    .line 272
    if-ne v6, v7, :cond_a

    .line 273
    .line 274
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 275
    .line 276
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    iput v6, v7, Lgi;->E0:I

    .line 281
    .line 282
    goto/16 :goto_1

    .line 283
    .line 284
    :cond_a
    sget v7, Lbw;->ConstraintLayout_Layout_flow_firstHorizontalStyle:I

    .line 285
    .line 286
    if-ne v6, v7, :cond_b

    .line 287
    .line 288
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 289
    .line 290
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    iput v6, v7, Lgi;->F0:I

    .line 295
    .line 296
    goto/16 :goto_1

    .line 297
    .line 298
    :cond_b
    sget v7, Lbw;->ConstraintLayout_Layout_flow_lastHorizontalStyle:I

    .line 299
    .line 300
    if-ne v6, v7, :cond_c

    .line 301
    .line 302
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 303
    .line 304
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    iput v6, v7, Lgi;->H0:I

    .line 309
    .line 310
    goto/16 :goto_1

    .line 311
    .line 312
    :cond_c
    sget v7, Lbw;->ConstraintLayout_Layout_flow_firstVerticalStyle:I

    .line 313
    .line 314
    if-ne v6, v7, :cond_d

    .line 315
    .line 316
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 317
    .line 318
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 319
    .line 320
    .line 321
    move-result v6

    .line 322
    iput v6, v7, Lgi;->G0:I

    .line 323
    .line 324
    goto/16 :goto_1

    .line 325
    .line 326
    :cond_d
    sget v7, Lbw;->ConstraintLayout_Layout_flow_lastVerticalStyle:I

    .line 327
    .line 328
    if-ne v6, v7, :cond_e

    .line 329
    .line 330
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 331
    .line 332
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    iput v6, v7, Lgi;->I0:I

    .line 337
    .line 338
    goto/16 :goto_1

    .line 339
    .line 340
    :cond_e
    sget v7, Lbw;->ConstraintLayout_Layout_flow_horizontalBias:I

    .line 341
    .line 342
    if-ne v6, v7, :cond_f

    .line 343
    .line 344
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 345
    .line 346
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    iput v6, v7, Lgi;->J0:F

    .line 351
    .line 352
    goto/16 :goto_1

    .line 353
    .line 354
    :cond_f
    sget v7, Lbw;->ConstraintLayout_Layout_flow_firstHorizontalBias:I

    .line 355
    .line 356
    if-ne v6, v7, :cond_10

    .line 357
    .line 358
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 359
    .line 360
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    iput v6, v7, Lgi;->L0:F

    .line 365
    .line 366
    goto/16 :goto_1

    .line 367
    .line 368
    :cond_10
    sget v7, Lbw;->ConstraintLayout_Layout_flow_lastHorizontalBias:I

    .line 369
    .line 370
    if-ne v6, v7, :cond_11

    .line 371
    .line 372
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 373
    .line 374
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 375
    .line 376
    .line 377
    move-result v6

    .line 378
    iput v6, v7, Lgi;->N0:F

    .line 379
    .line 380
    goto/16 :goto_1

    .line 381
    .line 382
    :cond_11
    sget v7, Lbw;->ConstraintLayout_Layout_flow_firstVerticalBias:I

    .line 383
    .line 384
    if-ne v6, v7, :cond_12

    .line 385
    .line 386
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 387
    .line 388
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 389
    .line 390
    .line 391
    move-result v6

    .line 392
    iput v6, v7, Lgi;->M0:F

    .line 393
    .line 394
    goto :goto_1

    .line 395
    :cond_12
    sget v7, Lbw;->ConstraintLayout_Layout_flow_lastVerticalBias:I

    .line 396
    .line 397
    if-ne v6, v7, :cond_13

    .line 398
    .line 399
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 400
    .line 401
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    iput v6, v7, Lgi;->O0:F

    .line 406
    .line 407
    goto :goto_1

    .line 408
    :cond_13
    sget v7, Lbw;->ConstraintLayout_Layout_flow_verticalBias:I

    .line 409
    .line 410
    if-ne v6, v7, :cond_14

    .line 411
    .line 412
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 413
    .line 414
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 415
    .line 416
    .line 417
    move-result v6

    .line 418
    iput v6, v7, Lgi;->K0:F

    .line 419
    .line 420
    goto :goto_1

    .line 421
    :cond_14
    sget v7, Lbw;->ConstraintLayout_Layout_flow_horizontalAlign:I

    .line 422
    .line 423
    if-ne v6, v7, :cond_15

    .line 424
    .line 425
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 426
    .line 427
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 428
    .line 429
    .line 430
    move-result v6

    .line 431
    iput v6, v7, Lgi;->R0:I

    .line 432
    .line 433
    goto :goto_1

    .line 434
    :cond_15
    sget v7, Lbw;->ConstraintLayout_Layout_flow_verticalAlign:I

    .line 435
    .line 436
    if-ne v6, v7, :cond_16

    .line 437
    .line 438
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 439
    .line 440
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 441
    .line 442
    .line 443
    move-result v6

    .line 444
    iput v6, v7, Lgi;->S0:I

    .line 445
    .line 446
    goto :goto_1

    .line 447
    :cond_16
    sget v7, Lbw;->ConstraintLayout_Layout_flow_horizontalGap:I

    .line 448
    .line 449
    if-ne v6, v7, :cond_17

    .line 450
    .line 451
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 452
    .line 453
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 454
    .line 455
    .line 456
    move-result v6

    .line 457
    iput v6, v7, Lgi;->P0:I

    .line 458
    .line 459
    goto :goto_1

    .line 460
    :cond_17
    sget v7, Lbw;->ConstraintLayout_Layout_flow_verticalGap:I

    .line 461
    .line 462
    if-ne v6, v7, :cond_18

    .line 463
    .line 464
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 465
    .line 466
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 467
    .line 468
    .line 469
    move-result v6

    .line 470
    iput v6, v7, Lgi;->Q0:I

    .line 471
    .line 472
    goto :goto_1

    .line 473
    :cond_18
    sget v7, Lbw;->ConstraintLayout_Layout_flow_maxElementsWrap:I

    .line 474
    .line 475
    if-ne v6, v7, :cond_19

    .line 476
    .line 477
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 478
    .line 479
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 480
    .line 481
    .line 482
    move-result v6

    .line 483
    iput v6, v7, Lgi;->U0:I

    .line 484
    .line 485
    :cond_19
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 486
    .line 487
    goto/16 :goto_0

    .line 488
    .line 489
    :cond_1a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 490
    .line 491
    .line 492
    :cond_1b
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 493
    .line 494
    iput-object p1, p0, Lkb;->d:Lrl;

    .line 495
    .line 496
    invoke-virtual {p0}, Lkb;->i()V

    .line 497
    .line 498
    .line 499
    return-void
.end method

.method public final h(Lxb;Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iget p1, p0, Lgi;->u0:I

    .line 4
    .line 5
    if-gtz p1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lgi;->v0:I

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 14
    .line 15
    iget p2, p0, Lgi;->v0:I

    .line 16
    .line 17
    iput p2, p0, Lgi;->w0:I

    .line 18
    .line 19
    iput p1, p0, Lgi;->x0:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    iput p1, p0, Lgi;->w0:I

    .line 23
    .line 24
    iget p1, p0, Lgi;->v0:I

    .line 25
    .line 26
    iput p1, p0, Lgi;->x0:I

    .line 27
    .line 28
    return-void
.end method

.method public final j(Lgi;II)V
    .locals 38

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    .line 5
    .line 6
    move-result v9

    .line 7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    .line 9
    .line 10
    move-result v10

    .line 11
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    .line 13
    .line 14
    move-result v11

    .line 15
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v12

    .line 19
    const/4 v13, 0x0

    .line 20
    if-eqz v2, :cond_7a

    .line 21
    .line 22
    iget-object v14, v2, Lxb;->p0:[I

    .line 23
    .line 24
    iget-object v15, v2, Lxb;->J:Lib;

    .line 25
    .line 26
    iget-object v1, v2, Lxb;->I:Lib;

    .line 27
    .line 28
    iget-object v3, v2, Lxb;->K:Lib;

    .line 29
    .line 30
    iget-object v4, v2, Lxb;->L:Lib;

    .line 31
    .line 32
    iget-object v5, v2, Lgi;->W0:Ljava/util/ArrayList;

    .line 33
    .line 34
    iget v6, v2, Lrl;->r0:I

    .line 35
    .line 36
    if-lez v6, :cond_8

    .line 37
    .line 38
    iget-object v6, v2, Lgi;->B0:Ll7;

    .line 39
    .line 40
    iget-object v7, v2, Lxb;->T:Lxb;

    .line 41
    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    check-cast v7, Lyb;

    .line 45
    .line 46
    iget-object v7, v7, Lyb;->u0:Lnb;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v7, 0x0

    .line 50
    :goto_0
    if-nez v7, :cond_1

    .line 51
    .line 52
    iput v13, v2, Lgi;->z0:I

    .line 53
    .line 54
    iput v13, v2, Lgi;->A0:I

    .line 55
    .line 56
    iput-boolean v13, v2, Lgi;->y0:Z

    .line 57
    .line 58
    goto/16 :goto_41

    .line 59
    .line 60
    :cond_1
    move v8, v13

    .line 61
    :goto_1
    iget v13, v2, Lrl;->r0:I

    .line 62
    .line 63
    if-ge v8, v13, :cond_8

    .line 64
    .line 65
    iget-object v13, v2, Lrl;->q0:[Lxb;

    .line 66
    .line 67
    aget-object v13, v13, v8

    .line 68
    .line 69
    if-nez v13, :cond_2

    .line 70
    .line 71
    move-object/from16 v19, v1

    .line 72
    .line 73
    :goto_2
    move-object/from16 v20, v3

    .line 74
    .line 75
    move-object/from16 v21, v4

    .line 76
    .line 77
    move-object/from16 v22, v5

    .line 78
    .line 79
    move/from16 v23, v8

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_2
    move-object/from16 v19, v1

    .line 83
    .line 84
    instance-of v1, v13, Lkl;

    .line 85
    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move-object/from16 v20, v3

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-virtual {v13, v1}, Lxb;->j(I)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    move-object/from16 v21, v4

    .line 97
    .line 98
    const/4 v1, 0x1

    .line 99
    invoke-virtual {v13, v1}, Lxb;->j(I)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    const/4 v1, 0x3

    .line 104
    move-object/from16 v22, v5

    .line 105
    .line 106
    if-ne v3, v1, :cond_4

    .line 107
    .line 108
    iget v5, v13, Lxb;->r:I

    .line 109
    .line 110
    move/from16 v23, v8

    .line 111
    .line 112
    const/4 v8, 0x1

    .line 113
    if-eq v5, v8, :cond_5

    .line 114
    .line 115
    if-ne v4, v1, :cond_5

    .line 116
    .line 117
    iget v5, v13, Lxb;->s:I

    .line 118
    .line 119
    if-eq v5, v8, :cond_5

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    move/from16 v23, v8

    .line 123
    .line 124
    :cond_5
    if-ne v3, v1, :cond_6

    .line 125
    .line 126
    const/4 v3, 0x2

    .line 127
    :cond_6
    if-ne v4, v1, :cond_7

    .line 128
    .line 129
    const/4 v4, 0x2

    .line 130
    :cond_7
    iput v3, v6, Ll7;->a:I

    .line 131
    .line 132
    iput v4, v6, Ll7;->b:I

    .line 133
    .line 134
    invoke-virtual {v13}, Lxb;->q()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    iput v1, v6, Ll7;->c:I

    .line 139
    .line 140
    invoke-virtual {v13}, Lxb;->k()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    iput v1, v6, Ll7;->d:I

    .line 145
    .line 146
    invoke-virtual {v7, v13, v6}, Lnb;->b(Lxb;Ll7;)V

    .line 147
    .line 148
    .line 149
    iget v1, v6, Ll7;->e:I

    .line 150
    .line 151
    invoke-virtual {v13, v1}, Lxb;->O(I)V

    .line 152
    .line 153
    .line 154
    iget v1, v6, Ll7;->f:I

    .line 155
    .line 156
    invoke-virtual {v13, v1}, Lxb;->L(I)V

    .line 157
    .line 158
    .line 159
    iget v1, v6, Ll7;->g:I

    .line 160
    .line 161
    invoke-virtual {v13, v1}, Lxb;->I(I)V

    .line 162
    .line 163
    .line 164
    :goto_3
    add-int/lit8 v8, v23, 0x1

    .line 165
    .line 166
    move-object/from16 v1, v19

    .line 167
    .line 168
    move-object/from16 v3, v20

    .line 169
    .line 170
    move-object/from16 v4, v21

    .line 171
    .line 172
    move-object/from16 v5, v22

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_8
    move-object/from16 v19, v1

    .line 176
    .line 177
    move-object/from16 v20, v3

    .line 178
    .line 179
    move-object/from16 v21, v4

    .line 180
    .line 181
    move-object/from16 v22, v5

    .line 182
    .line 183
    iget v13, v2, Lgi;->w0:I

    .line 184
    .line 185
    iget v1, v2, Lgi;->x0:I

    .line 186
    .line 187
    iget v3, v2, Lgi;->s0:I

    .line 188
    .line 189
    iget v4, v2, Lgi;->t0:I

    .line 190
    .line 191
    const/4 v5, 0x2

    .line 192
    new-array v6, v5, [I

    .line 193
    .line 194
    sub-int v5, v10, v13

    .line 195
    .line 196
    sub-int/2addr v5, v1

    .line 197
    iget v7, v2, Lgi;->V0:I

    .line 198
    .line 199
    const/4 v8, 0x1

    .line 200
    if-ne v7, v8, :cond_9

    .line 201
    .line 202
    sub-int v5, v12, v3

    .line 203
    .line 204
    sub-int/2addr v5, v4

    .line 205
    :cond_9
    move v8, v5

    .line 206
    iget v5, v2, Lgi;->D0:I

    .line 207
    .line 208
    move/from16 v23, v1

    .line 209
    .line 210
    const/4 v1, -0x1

    .line 211
    if-nez v7, :cond_b

    .line 212
    .line 213
    const/4 v7, 0x0

    .line 214
    if-ne v5, v1, :cond_a

    .line 215
    .line 216
    iput v7, v2, Lgi;->D0:I

    .line 217
    .line 218
    :cond_a
    iget v5, v2, Lgi;->E0:I

    .line 219
    .line 220
    if-ne v5, v1, :cond_d

    .line 221
    .line 222
    iput v7, v2, Lgi;->E0:I

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_b
    const/4 v7, 0x0

    .line 226
    if-ne v5, v1, :cond_c

    .line 227
    .line 228
    iput v7, v2, Lgi;->D0:I

    .line 229
    .line 230
    :cond_c
    iget v5, v2, Lgi;->E0:I

    .line 231
    .line 232
    if-ne v5, v1, :cond_d

    .line 233
    .line 234
    iput v7, v2, Lgi;->E0:I

    .line 235
    .line 236
    :cond_d
    :goto_4
    iget-object v1, v2, Lrl;->q0:[Lxb;

    .line 237
    .line 238
    move-object/from16 v24, v1

    .line 239
    .line 240
    const/4 v5, 0x0

    .line 241
    const/4 v7, 0x0

    .line 242
    :goto_5
    iget v1, v2, Lrl;->r0:I

    .line 243
    .line 244
    move/from16 v25, v3

    .line 245
    .line 246
    const/16 v3, 0x8

    .line 247
    .line 248
    if-ge v5, v1, :cond_f

    .line 249
    .line 250
    iget-object v1, v2, Lrl;->q0:[Lxb;

    .line 251
    .line 252
    aget-object v1, v1, v5

    .line 253
    .line 254
    iget v1, v1, Lxb;->g0:I

    .line 255
    .line 256
    if-ne v1, v3, :cond_e

    .line 257
    .line 258
    add-int/lit8 v7, v7, 0x1

    .line 259
    .line 260
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 261
    .line 262
    move/from16 v3, v25

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_f
    if-lez v7, :cond_12

    .line 266
    .line 267
    sub-int/2addr v1, v7

    .line 268
    new-array v1, v1, [Lxb;

    .line 269
    .line 270
    const/4 v5, 0x0

    .line 271
    const/4 v7, 0x0

    .line 272
    :goto_6
    iget v3, v2, Lrl;->r0:I

    .line 273
    .line 274
    if-ge v5, v3, :cond_11

    .line 275
    .line 276
    iget-object v3, v2, Lrl;->q0:[Lxb;

    .line 277
    .line 278
    aget-object v3, v3, v5

    .line 279
    .line 280
    move-object/from16 v24, v1

    .line 281
    .line 282
    iget v1, v3, Lxb;->g0:I

    .line 283
    .line 284
    move-object/from16 v27, v3

    .line 285
    .line 286
    const/16 v3, 0x8

    .line 287
    .line 288
    if-eq v1, v3, :cond_10

    .line 289
    .line 290
    aput-object v27, v24, v7

    .line 291
    .line 292
    add-int/lit8 v7, v7, 0x1

    .line 293
    .line 294
    :cond_10
    add-int/lit8 v5, v5, 0x1

    .line 295
    .line 296
    move-object/from16 v1, v24

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_11
    move-object/from16 v24, v1

    .line 300
    .line 301
    move v3, v7

    .line 302
    goto :goto_7

    .line 303
    :cond_12
    move v3, v1

    .line 304
    move-object/from16 v1, v24

    .line 305
    .line 306
    :goto_7
    iput-object v1, v2, Lgi;->a1:[Lxb;

    .line 307
    .line 308
    iput v3, v2, Lgi;->b1:I

    .line 309
    .line 310
    iget v5, v2, Lgi;->T0:I

    .line 311
    .line 312
    if-eqz v5, :cond_6f

    .line 313
    .line 314
    const/4 v7, 0x1

    .line 315
    if-eq v5, v7, :cond_55

    .line 316
    .line 317
    const/4 v7, 0x2

    .line 318
    if-eq v5, v7, :cond_2e

    .line 319
    .line 320
    const/4 v7, 0x3

    .line 321
    if-eq v5, v7, :cond_13

    .line 322
    .line 323
    move/from16 v35, v4

    .line 324
    .line 325
    move-object/from16 v36, v6

    .line 326
    .line 327
    move/from16 v37, v12

    .line 328
    .line 329
    move/from16 v17, v13

    .line 330
    .line 331
    move/from16 v22, v23

    .line 332
    .line 333
    move/from16 v34, v25

    .line 334
    .line 335
    :goto_8
    const/4 v12, 0x1

    .line 336
    :goto_9
    const/16 v18, 0x0

    .line 337
    .line 338
    goto/16 :goto_3d

    .line 339
    .line 340
    :cond_13
    move v5, v3

    .line 341
    iget v3, v2, Lgi;->V0:I

    .line 342
    .line 343
    if-nez v5, :cond_14

    .line 344
    .line 345
    move/from16 v35, v4

    .line 346
    .line 347
    move-object/from16 v36, v6

    .line 348
    .line 349
    move/from16 v37, v12

    .line 350
    .line 351
    move/from16 v17, v13

    .line 352
    .line 353
    move/from16 v22, v23

    .line 354
    .line 355
    move/from16 v34, v25

    .line 356
    .line 357
    const/16 p2, 0x1

    .line 358
    .line 359
    goto/16 :goto_1a

    .line 360
    .line 361
    :cond_14
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 362
    .line 363
    .line 364
    move-object/from16 v24, v1

    .line 365
    .line 366
    new-instance v1, Lfi;

    .line 367
    .line 368
    move/from16 v16, v4

    .line 369
    .line 370
    iget-object v4, v2, Lxb;->I:Lib;

    .line 371
    .line 372
    move/from16 v26, v5

    .line 373
    .line 374
    iget-object v5, v2, Lxb;->J:Lib;

    .line 375
    .line 376
    move-object/from16 v27, v6

    .line 377
    .line 378
    iget-object v6, v2, Lxb;->K:Lib;

    .line 379
    .line 380
    move/from16 v28, v7

    .line 381
    .line 382
    iget-object v7, v2, Lxb;->L:Lib;

    .line 383
    .line 384
    move/from16 v17, v13

    .line 385
    .line 386
    move/from16 v35, v16

    .line 387
    .line 388
    move-object/from16 v13, v22

    .line 389
    .line 390
    move/from16 v22, v23

    .line 391
    .line 392
    move/from16 v34, v25

    .line 393
    .line 394
    move-object/from16 v36, v27

    .line 395
    .line 396
    move/from16 v0, v28

    .line 397
    .line 398
    const/16 p2, 0x1

    .line 399
    .line 400
    move-object/from16 v23, v14

    .line 401
    .line 402
    move-object/from16 v14, v24

    .line 403
    .line 404
    move-object/from16 v24, v15

    .line 405
    .line 406
    move/from16 v15, v26

    .line 407
    .line 408
    invoke-direct/range {v1 .. v8}, Lfi;-><init>(Lgi;ILib;Lib;Lib;Lib;I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    if-nez v3, :cond_1c

    .line 415
    .line 416
    const/4 v4, 0x0

    .line 417
    const/4 v5, 0x0

    .line 418
    const/4 v6, 0x0

    .line 419
    const/4 v7, 0x0

    .line 420
    :goto_a
    if-ge v4, v15, :cond_1b

    .line 421
    .line 422
    add-int/lit8 v5, v5, 0x1

    .line 423
    .line 424
    aget-object v0, v14, v4

    .line 425
    .line 426
    invoke-virtual {v2, v0, v8}, Lgi;->U(Lxb;I)I

    .line 427
    .line 428
    .line 429
    move-result v16

    .line 430
    move/from16 v26, v3

    .line 431
    .line 432
    iget-object v3, v0, Lxb;->p0:[I

    .line 433
    .line 434
    const/16 v18, 0x0

    .line 435
    .line 436
    aget v3, v3, v18

    .line 437
    .line 438
    move/from16 v27, v4

    .line 439
    .line 440
    const/4 v4, 0x3

    .line 441
    if-ne v3, v4, :cond_15

    .line 442
    .line 443
    add-int/lit8 v6, v6, 0x1

    .line 444
    .line 445
    :cond_15
    move/from16 v28, v6

    .line 446
    .line 447
    if-eq v7, v8, :cond_16

    .line 448
    .line 449
    iget v3, v2, Lgi;->P0:I

    .line 450
    .line 451
    add-int/2addr v3, v7

    .line 452
    add-int v3, v3, v16

    .line 453
    .line 454
    if-le v3, v8, :cond_17

    .line 455
    .line 456
    :cond_16
    iget-object v3, v1, Lfi;->b:Lxb;

    .line 457
    .line 458
    if-eqz v3, :cond_17

    .line 459
    .line 460
    move/from16 v3, p2

    .line 461
    .line 462
    goto :goto_b

    .line 463
    :cond_17
    const/4 v3, 0x0

    .line 464
    :goto_b
    if-nez v3, :cond_18

    .line 465
    .line 466
    if-lez v27, :cond_18

    .line 467
    .line 468
    iget v4, v2, Lgi;->U0:I

    .line 469
    .line 470
    if-lez v4, :cond_18

    .line 471
    .line 472
    if-le v5, v4, :cond_18

    .line 473
    .line 474
    move/from16 v3, p2

    .line 475
    .line 476
    :cond_18
    if-eqz v3, :cond_19

    .line 477
    .line 478
    new-instance v1, Lfi;

    .line 479
    .line 480
    iget-object v4, v2, Lxb;->I:Lib;

    .line 481
    .line 482
    move v3, v5

    .line 483
    iget-object v5, v2, Lxb;->J:Lib;

    .line 484
    .line 485
    iget-object v6, v2, Lxb;->K:Lib;

    .line 486
    .line 487
    iget-object v7, v2, Lxb;->L:Lib;

    .line 488
    .line 489
    move/from16 v37, v26

    .line 490
    .line 491
    move/from16 v26, v3

    .line 492
    .line 493
    move/from16 v3, v37

    .line 494
    .line 495
    move/from16 v37, v12

    .line 496
    .line 497
    move/from16 v12, v27

    .line 498
    .line 499
    invoke-direct/range {v1 .. v8}, Lfi;-><init>(Lgi;ILib;Lib;Lib;Lib;I)V

    .line 500
    .line 501
    .line 502
    iput v12, v1, Lfi;->n:I

    .line 503
    .line 504
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move/from16 v7, v16

    .line 508
    .line 509
    move/from16 v5, v26

    .line 510
    .line 511
    goto :goto_d

    .line 512
    :cond_19
    move/from16 v37, v12

    .line 513
    .line 514
    move/from16 v3, v26

    .line 515
    .line 516
    move/from16 v12, v27

    .line 517
    .line 518
    if-lez v12, :cond_1a

    .line 519
    .line 520
    iget v4, v2, Lgi;->P0:I

    .line 521
    .line 522
    add-int v4, v4, v16

    .line 523
    .line 524
    add-int/2addr v4, v7

    .line 525
    move v7, v4

    .line 526
    :goto_c
    const/4 v5, 0x0

    .line 527
    goto :goto_d

    .line 528
    :cond_1a
    move/from16 v7, v16

    .line 529
    .line 530
    goto :goto_c

    .line 531
    :goto_d
    invoke-virtual {v1, v0}, Lfi;->a(Lxb;)V

    .line 532
    .line 533
    .line 534
    add-int/lit8 v4, v12, 0x1

    .line 535
    .line 536
    move/from16 v6, v28

    .line 537
    .line 538
    move/from16 v12, v37

    .line 539
    .line 540
    const/4 v0, 0x3

    .line 541
    goto :goto_a

    .line 542
    :cond_1b
    move/from16 v37, v12

    .line 543
    .line 544
    goto :goto_11

    .line 545
    :cond_1c
    move/from16 v37, v12

    .line 546
    .line 547
    const/4 v0, 0x0

    .line 548
    const/4 v4, 0x0

    .line 549
    const/4 v5, 0x0

    .line 550
    :goto_e
    if-ge v0, v15, :cond_23

    .line 551
    .line 552
    aget-object v12, v14, v0

    .line 553
    .line 554
    invoke-virtual {v2, v12, v8}, Lgi;->T(Lxb;I)I

    .line 555
    .line 556
    .line 557
    move-result v16

    .line 558
    iget-object v6, v12, Lxb;->p0:[I

    .line 559
    .line 560
    aget v6, v6, p2

    .line 561
    .line 562
    const/4 v7, 0x3

    .line 563
    if-ne v6, v7, :cond_1d

    .line 564
    .line 565
    add-int/lit8 v4, v4, 0x1

    .line 566
    .line 567
    :cond_1d
    move/from16 v26, v4

    .line 568
    .line 569
    if-eq v5, v8, :cond_1e

    .line 570
    .line 571
    iget v4, v2, Lgi;->Q0:I

    .line 572
    .line 573
    add-int/2addr v4, v5

    .line 574
    add-int v4, v4, v16

    .line 575
    .line 576
    if-le v4, v8, :cond_1f

    .line 577
    .line 578
    :cond_1e
    iget-object v4, v1, Lfi;->b:Lxb;

    .line 579
    .line 580
    if-eqz v4, :cond_1f

    .line 581
    .line 582
    move/from16 v4, p2

    .line 583
    .line 584
    goto :goto_f

    .line 585
    :cond_1f
    const/4 v4, 0x0

    .line 586
    :goto_f
    if-nez v4, :cond_20

    .line 587
    .line 588
    if-lez v0, :cond_20

    .line 589
    .line 590
    iget v6, v2, Lgi;->U0:I

    .line 591
    .line 592
    if-lez v6, :cond_20

    .line 593
    .line 594
    if-gez v6, :cond_20

    .line 595
    .line 596
    move/from16 v4, p2

    .line 597
    .line 598
    :cond_20
    if-eqz v4, :cond_22

    .line 599
    .line 600
    new-instance v1, Lfi;

    .line 601
    .line 602
    iget-object v4, v2, Lxb;->I:Lib;

    .line 603
    .line 604
    iget-object v5, v2, Lxb;->J:Lib;

    .line 605
    .line 606
    iget-object v6, v2, Lxb;->K:Lib;

    .line 607
    .line 608
    iget-object v7, v2, Lxb;->L:Lib;

    .line 609
    .line 610
    invoke-direct/range {v1 .. v8}, Lfi;-><init>(Lgi;ILib;Lib;Lib;Lib;I)V

    .line 611
    .line 612
    .line 613
    iput v0, v1, Lfi;->n:I

    .line 614
    .line 615
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    :cond_21
    move/from16 v5, v16

    .line 619
    .line 620
    goto :goto_10

    .line 621
    :cond_22
    if-lez v0, :cond_21

    .line 622
    .line 623
    iget v4, v2, Lgi;->Q0:I

    .line 624
    .line 625
    add-int v4, v4, v16

    .line 626
    .line 627
    add-int/2addr v4, v5

    .line 628
    move v5, v4

    .line 629
    :goto_10
    invoke-virtual {v1, v12}, Lfi;->a(Lxb;)V

    .line 630
    .line 631
    .line 632
    add-int/lit8 v0, v0, 0x1

    .line 633
    .line 634
    move/from16 v4, v26

    .line 635
    .line 636
    goto :goto_e

    .line 637
    :cond_23
    move v6, v4

    .line 638
    :goto_11
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 639
    .line 640
    .line 641
    move-result v0

    .line 642
    iget v1, v2, Lgi;->w0:I

    .line 643
    .line 644
    iget v4, v2, Lgi;->s0:I

    .line 645
    .line 646
    iget v5, v2, Lgi;->x0:I

    .line 647
    .line 648
    iget v7, v2, Lgi;->t0:I

    .line 649
    .line 650
    const/16 v18, 0x0

    .line 651
    .line 652
    aget v12, v23, v18

    .line 653
    .line 654
    const/4 v14, 0x2

    .line 655
    if-eq v12, v14, :cond_25

    .line 656
    .line 657
    aget v12, v23, p2

    .line 658
    .line 659
    if-ne v12, v14, :cond_24

    .line 660
    .line 661
    goto :goto_12

    .line 662
    :cond_24
    const/4 v12, 0x0

    .line 663
    goto :goto_13

    .line 664
    :cond_25
    :goto_12
    move/from16 v12, p2

    .line 665
    .line 666
    :goto_13
    if-lez v6, :cond_27

    .line 667
    .line 668
    if-eqz v12, :cond_27

    .line 669
    .line 670
    const/4 v6, 0x0

    .line 671
    :goto_14
    if-ge v6, v0, :cond_27

    .line 672
    .line 673
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v12

    .line 677
    check-cast v12, Lfi;

    .line 678
    .line 679
    if-nez v3, :cond_26

    .line 680
    .line 681
    invoke-virtual {v12}, Lfi;->d()I

    .line 682
    .line 683
    .line 684
    move-result v14

    .line 685
    sub-int v14, v8, v14

    .line 686
    .line 687
    invoke-virtual {v12, v14}, Lfi;->e(I)V

    .line 688
    .line 689
    .line 690
    goto :goto_15

    .line 691
    :cond_26
    invoke-virtual {v12}, Lfi;->c()I

    .line 692
    .line 693
    .line 694
    move-result v14

    .line 695
    sub-int v14, v8, v14

    .line 696
    .line 697
    invoke-virtual {v12, v14}, Lfi;->e(I)V

    .line 698
    .line 699
    .line 700
    :goto_15
    add-int/lit8 v6, v6, 0x1

    .line 701
    .line 702
    goto :goto_14

    .line 703
    :cond_27
    move/from16 v29, v1

    .line 704
    .line 705
    move/from16 v30, v4

    .line 706
    .line 707
    move/from16 v31, v5

    .line 708
    .line 709
    move/from16 v32, v7

    .line 710
    .line 711
    move-object/from16 v25, v19

    .line 712
    .line 713
    move-object/from16 v27, v20

    .line 714
    .line 715
    move-object/from16 v28, v21

    .line 716
    .line 717
    move-object/from16 v26, v24

    .line 718
    .line 719
    const/4 v1, 0x0

    .line 720
    const/4 v4, 0x0

    .line 721
    const/4 v5, 0x0

    .line 722
    :goto_16
    if-ge v1, v0, :cond_2d

    .line 723
    .line 724
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v6

    .line 728
    check-cast v6, Lfi;

    .line 729
    .line 730
    if-nez v3, :cond_2a

    .line 731
    .line 732
    add-int/lit8 v7, v0, -0x1

    .line 733
    .line 734
    if-ge v1, v7, :cond_28

    .line 735
    .line 736
    add-int/lit8 v7, v1, 0x1

    .line 737
    .line 738
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v7

    .line 742
    check-cast v7, Lfi;

    .line 743
    .line 744
    iget-object v7, v7, Lfi;->b:Lxb;

    .line 745
    .line 746
    iget-object v7, v7, Lxb;->J:Lib;

    .line 747
    .line 748
    move-object/from16 v28, v7

    .line 749
    .line 750
    const/16 v32, 0x0

    .line 751
    .line 752
    goto :goto_17

    .line 753
    :cond_28
    iget v7, v2, Lgi;->t0:I

    .line 754
    .line 755
    move/from16 v32, v7

    .line 756
    .line 757
    move-object/from16 v28, v21

    .line 758
    .line 759
    :goto_17
    iget-object v7, v6, Lfi;->b:Lxb;

    .line 760
    .line 761
    iget-object v7, v7, Lxb;->L:Lib;

    .line 762
    .line 763
    move/from16 v24, v3

    .line 764
    .line 765
    move-object/from16 v23, v6

    .line 766
    .line 767
    move/from16 v33, v8

    .line 768
    .line 769
    invoke-virtual/range {v23 .. v33}, Lfi;->f(ILib;Lib;Lib;Lib;IIIII)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v6}, Lfi;->d()I

    .line 773
    .line 774
    .line 775
    move-result v12

    .line 776
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    .line 777
    .line 778
    .line 779
    move-result v4

    .line 780
    invoke-virtual {v6}, Lfi;->c()I

    .line 781
    .line 782
    .line 783
    move-result v6

    .line 784
    add-int/2addr v6, v5

    .line 785
    if-lez v1, :cond_29

    .line 786
    .line 787
    iget v5, v2, Lgi;->Q0:I

    .line 788
    .line 789
    add-int/2addr v6, v5

    .line 790
    :cond_29
    move v5, v6

    .line 791
    move-object/from16 v26, v7

    .line 792
    .line 793
    const/16 v30, 0x0

    .line 794
    .line 795
    goto :goto_19

    .line 796
    :cond_2a
    add-int/lit8 v7, v0, -0x1

    .line 797
    .line 798
    if-ge v1, v7, :cond_2b

    .line 799
    .line 800
    add-int/lit8 v7, v1, 0x1

    .line 801
    .line 802
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v7

    .line 806
    check-cast v7, Lfi;

    .line 807
    .line 808
    iget-object v7, v7, Lfi;->b:Lxb;

    .line 809
    .line 810
    iget-object v7, v7, Lxb;->I:Lib;

    .line 811
    .line 812
    move-object/from16 v27, v7

    .line 813
    .line 814
    const/16 v31, 0x0

    .line 815
    .line 816
    goto :goto_18

    .line 817
    :cond_2b
    iget v7, v2, Lgi;->x0:I

    .line 818
    .line 819
    move/from16 v31, v7

    .line 820
    .line 821
    move-object/from16 v27, v20

    .line 822
    .line 823
    :goto_18
    iget-object v7, v6, Lfi;->b:Lxb;

    .line 824
    .line 825
    iget-object v7, v7, Lxb;->K:Lib;

    .line 826
    .line 827
    move/from16 v24, v3

    .line 828
    .line 829
    move-object/from16 v23, v6

    .line 830
    .line 831
    move/from16 v33, v8

    .line 832
    .line 833
    invoke-virtual/range {v23 .. v33}, Lfi;->f(ILib;Lib;Lib;Lib;IIIII)V

    .line 834
    .line 835
    .line 836
    invoke-virtual/range {v23 .. v23}, Lfi;->d()I

    .line 837
    .line 838
    .line 839
    move-result v6

    .line 840
    add-int/2addr v6, v4

    .line 841
    invoke-virtual/range {v23 .. v23}, Lfi;->c()I

    .line 842
    .line 843
    .line 844
    move-result v4

    .line 845
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 846
    .line 847
    .line 848
    move-result v4

    .line 849
    if-lez v1, :cond_2c

    .line 850
    .line 851
    iget v5, v2, Lgi;->P0:I

    .line 852
    .line 853
    add-int/2addr v6, v5

    .line 854
    :cond_2c
    move v5, v4

    .line 855
    move v4, v6

    .line 856
    move-object/from16 v25, v7

    .line 857
    .line 858
    const/16 v29, 0x0

    .line 859
    .line 860
    :goto_19
    add-int/lit8 v1, v1, 0x1

    .line 861
    .line 862
    goto/16 :goto_16

    .line 863
    .line 864
    :cond_2d
    const/16 v18, 0x0

    .line 865
    .line 866
    aput v4, v36, v18

    .line 867
    .line 868
    aput v5, v36, p2

    .line 869
    .line 870
    :goto_1a
    move/from16 v12, p2

    .line 871
    .line 872
    goto/16 :goto_9

    .line 873
    .line 874
    :cond_2e
    move-object v14, v1

    .line 875
    move v15, v3

    .line 876
    move/from16 v35, v4

    .line 877
    .line 878
    move-object/from16 v36, v6

    .line 879
    .line 880
    move/from16 v37, v12

    .line 881
    .line 882
    move/from16 v17, v13

    .line 883
    .line 884
    move/from16 v22, v23

    .line 885
    .line 886
    move/from16 v34, v25

    .line 887
    .line 888
    const/16 p2, 0x1

    .line 889
    .line 890
    iget v0, v2, Lgi;->V0:I

    .line 891
    .line 892
    iget v1, v2, Lgi;->U0:I

    .line 893
    .line 894
    if-nez v0, :cond_34

    .line 895
    .line 896
    if-gtz v1, :cond_33

    .line 897
    .line 898
    const/4 v1, 0x0

    .line 899
    const/4 v3, 0x0

    .line 900
    const/4 v4, 0x0

    .line 901
    :goto_1b
    if-ge v1, v15, :cond_32

    .line 902
    .line 903
    if-lez v1, :cond_2f

    .line 904
    .line 905
    iget v5, v2, Lgi;->P0:I

    .line 906
    .line 907
    add-int/2addr v3, v5

    .line 908
    :cond_2f
    aget-object v5, v14, v1

    .line 909
    .line 910
    if-nez v5, :cond_30

    .line 911
    .line 912
    goto :goto_1c

    .line 913
    :cond_30
    invoke-virtual {v2, v5, v8}, Lgi;->U(Lxb;I)I

    .line 914
    .line 915
    .line 916
    move-result v5

    .line 917
    add-int/2addr v5, v3

    .line 918
    if-le v5, v8, :cond_31

    .line 919
    .line 920
    goto :goto_1d

    .line 921
    :cond_31
    add-int/lit8 v4, v4, 0x1

    .line 922
    .line 923
    move v3, v5

    .line 924
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    .line 925
    .line 926
    goto :goto_1b

    .line 927
    :cond_32
    :goto_1d
    const/4 v1, 0x0

    .line 928
    goto :goto_21

    .line 929
    :cond_33
    move v4, v1

    .line 930
    goto :goto_1d

    .line 931
    :cond_34
    if-gtz v1, :cond_39

    .line 932
    .line 933
    const/4 v1, 0x0

    .line 934
    const/4 v3, 0x0

    .line 935
    const/4 v4, 0x0

    .line 936
    :goto_1e
    if-ge v1, v15, :cond_38

    .line 937
    .line 938
    if-lez v1, :cond_35

    .line 939
    .line 940
    iget v5, v2, Lgi;->Q0:I

    .line 941
    .line 942
    add-int/2addr v3, v5

    .line 943
    :cond_35
    aget-object v5, v14, v1

    .line 944
    .line 945
    if-nez v5, :cond_36

    .line 946
    .line 947
    goto :goto_1f

    .line 948
    :cond_36
    invoke-virtual {v2, v5, v8}, Lgi;->T(Lxb;I)I

    .line 949
    .line 950
    .line 951
    move-result v5

    .line 952
    add-int/2addr v5, v3

    .line 953
    if-le v5, v8, :cond_37

    .line 954
    .line 955
    goto :goto_20

    .line 956
    :cond_37
    add-int/lit8 v4, v4, 0x1

    .line 957
    .line 958
    move v3, v5

    .line 959
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    .line 960
    .line 961
    goto :goto_1e

    .line 962
    :cond_38
    :goto_20
    move v1, v4

    .line 963
    :cond_39
    const/4 v4, 0x0

    .line 964
    :goto_21
    iget-object v3, v2, Lgi;->Z0:[I

    .line 965
    .line 966
    if-nez v3, :cond_3a

    .line 967
    .line 968
    const/4 v5, 0x2

    .line 969
    new-array v3, v5, [I

    .line 970
    .line 971
    iput-object v3, v2, Lgi;->Z0:[I

    .line 972
    .line 973
    :cond_3a
    if-nez v1, :cond_3b

    .line 974
    .line 975
    move/from16 v7, p2

    .line 976
    .line 977
    if-eq v0, v7, :cond_3c

    .line 978
    .line 979
    :cond_3b
    if-nez v4, :cond_3d

    .line 980
    .line 981
    if-nez v0, :cond_3d

    .line 982
    .line 983
    :cond_3c
    const/4 v3, 0x1

    .line 984
    goto :goto_22

    .line 985
    :cond_3d
    const/4 v3, 0x0

    .line 986
    :goto_22
    if-nez v3, :cond_54

    .line 987
    .line 988
    if-nez v0, :cond_3e

    .line 989
    .line 990
    int-to-float v1, v15

    .line 991
    int-to-float v5, v4

    .line 992
    div-float/2addr v1, v5

    .line 993
    float-to-double v5, v1

    .line 994
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 995
    .line 996
    .line 997
    move-result-wide v5

    .line 998
    double-to-int v1, v5

    .line 999
    goto :goto_23

    .line 1000
    :cond_3e
    int-to-float v4, v15

    .line 1001
    int-to-float v5, v1

    .line 1002
    div-float/2addr v4, v5

    .line 1003
    float-to-double v4, v4

    .line 1004
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 1005
    .line 1006
    .line 1007
    move-result-wide v4

    .line 1008
    double-to-int v4, v4

    .line 1009
    :goto_23
    iget-object v5, v2, Lgi;->Y0:[Lxb;

    .line 1010
    .line 1011
    if-eqz v5, :cond_3f

    .line 1012
    .line 1013
    array-length v6, v5

    .line 1014
    if-ge v6, v4, :cond_40

    .line 1015
    .line 1016
    :cond_3f
    const/4 v6, 0x0

    .line 1017
    goto :goto_24

    .line 1018
    :cond_40
    const/4 v6, 0x0

    .line 1019
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1020
    .line 1021
    .line 1022
    goto :goto_25

    .line 1023
    :goto_24
    new-array v5, v4, [Lxb;

    .line 1024
    .line 1025
    iput-object v5, v2, Lgi;->Y0:[Lxb;

    .line 1026
    .line 1027
    :goto_25
    iget-object v5, v2, Lgi;->X0:[Lxb;

    .line 1028
    .line 1029
    if-eqz v5, :cond_42

    .line 1030
    .line 1031
    array-length v7, v5

    .line 1032
    if-ge v7, v1, :cond_41

    .line 1033
    .line 1034
    goto :goto_26

    .line 1035
    :cond_41
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1036
    .line 1037
    .line 1038
    goto :goto_27

    .line 1039
    :cond_42
    :goto_26
    new-array v5, v1, [Lxb;

    .line 1040
    .line 1041
    iput-object v5, v2, Lgi;->X0:[Lxb;

    .line 1042
    .line 1043
    :goto_27
    const/4 v5, 0x0

    .line 1044
    :goto_28
    if-ge v5, v4, :cond_4b

    .line 1045
    .line 1046
    const/4 v6, 0x0

    .line 1047
    :goto_29
    if-ge v6, v1, :cond_4a

    .line 1048
    .line 1049
    mul-int v7, v6, v4

    .line 1050
    .line 1051
    add-int/2addr v7, v5

    .line 1052
    const/4 v12, 0x1

    .line 1053
    if-ne v0, v12, :cond_43

    .line 1054
    .line 1055
    mul-int v7, v5, v1

    .line 1056
    .line 1057
    add-int/2addr v7, v6

    .line 1058
    :cond_43
    array-length v12, v14

    .line 1059
    if-lt v7, v12, :cond_44

    .line 1060
    .line 1061
    goto :goto_2a

    .line 1062
    :cond_44
    aget-object v7, v14, v7

    .line 1063
    .line 1064
    if-nez v7, :cond_45

    .line 1065
    .line 1066
    goto :goto_2a

    .line 1067
    :cond_45
    invoke-virtual {v2, v7, v8}, Lgi;->U(Lxb;I)I

    .line 1068
    .line 1069
    .line 1070
    move-result v12

    .line 1071
    iget-object v13, v2, Lgi;->Y0:[Lxb;

    .line 1072
    .line 1073
    aget-object v13, v13, v5

    .line 1074
    .line 1075
    if-eqz v13, :cond_46

    .line 1076
    .line 1077
    invoke-virtual {v13}, Lxb;->q()I

    .line 1078
    .line 1079
    .line 1080
    move-result v13

    .line 1081
    if-ge v13, v12, :cond_47

    .line 1082
    .line 1083
    :cond_46
    iget-object v12, v2, Lgi;->Y0:[Lxb;

    .line 1084
    .line 1085
    aput-object v7, v12, v5

    .line 1086
    .line 1087
    :cond_47
    invoke-virtual {v2, v7, v8}, Lgi;->T(Lxb;I)I

    .line 1088
    .line 1089
    .line 1090
    move-result v12

    .line 1091
    iget-object v13, v2, Lgi;->X0:[Lxb;

    .line 1092
    .line 1093
    aget-object v13, v13, v6

    .line 1094
    .line 1095
    if-eqz v13, :cond_48

    .line 1096
    .line 1097
    invoke-virtual {v13}, Lxb;->k()I

    .line 1098
    .line 1099
    .line 1100
    move-result v13

    .line 1101
    if-ge v13, v12, :cond_49

    .line 1102
    .line 1103
    :cond_48
    iget-object v12, v2, Lgi;->X0:[Lxb;

    .line 1104
    .line 1105
    aput-object v7, v12, v6

    .line 1106
    .line 1107
    :cond_49
    :goto_2a
    add-int/lit8 v6, v6, 0x1

    .line 1108
    .line 1109
    goto :goto_29

    .line 1110
    :cond_4a
    add-int/lit8 v5, v5, 0x1

    .line 1111
    .line 1112
    goto :goto_28

    .line 1113
    :cond_4b
    const/4 v5, 0x0

    .line 1114
    const/4 v6, 0x0

    .line 1115
    :goto_2b
    if-ge v5, v4, :cond_4e

    .line 1116
    .line 1117
    iget-object v7, v2, Lgi;->Y0:[Lxb;

    .line 1118
    .line 1119
    aget-object v7, v7, v5

    .line 1120
    .line 1121
    if-eqz v7, :cond_4d

    .line 1122
    .line 1123
    if-lez v5, :cond_4c

    .line 1124
    .line 1125
    iget v12, v2, Lgi;->P0:I

    .line 1126
    .line 1127
    add-int/2addr v6, v12

    .line 1128
    :cond_4c
    invoke-virtual {v2, v7, v8}, Lgi;->U(Lxb;I)I

    .line 1129
    .line 1130
    .line 1131
    move-result v7

    .line 1132
    add-int/2addr v7, v6

    .line 1133
    move v6, v7

    .line 1134
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    .line 1135
    .line 1136
    goto :goto_2b

    .line 1137
    :cond_4e
    const/4 v5, 0x0

    .line 1138
    const/4 v7, 0x0

    .line 1139
    :goto_2c
    if-ge v5, v1, :cond_51

    .line 1140
    .line 1141
    iget-object v12, v2, Lgi;->X0:[Lxb;

    .line 1142
    .line 1143
    aget-object v12, v12, v5

    .line 1144
    .line 1145
    if-eqz v12, :cond_50

    .line 1146
    .line 1147
    if-lez v5, :cond_4f

    .line 1148
    .line 1149
    iget v13, v2, Lgi;->Q0:I

    .line 1150
    .line 1151
    add-int/2addr v7, v13

    .line 1152
    :cond_4f
    invoke-virtual {v2, v12, v8}, Lgi;->T(Lxb;I)I

    .line 1153
    .line 1154
    .line 1155
    move-result v12

    .line 1156
    add-int/2addr v12, v7

    .line 1157
    move v7, v12

    .line 1158
    :cond_50
    add-int/lit8 v5, v5, 0x1

    .line 1159
    .line 1160
    goto :goto_2c

    .line 1161
    :cond_51
    const/16 v18, 0x0

    .line 1162
    .line 1163
    aput v6, v36, v18

    .line 1164
    .line 1165
    const/4 v12, 0x1

    .line 1166
    aput v7, v36, v12

    .line 1167
    .line 1168
    if-nez v0, :cond_53

    .line 1169
    .line 1170
    if-le v6, v8, :cond_52

    .line 1171
    .line 1172
    if-le v4, v12, :cond_52

    .line 1173
    .line 1174
    add-int/lit8 v4, v4, -0x1

    .line 1175
    .line 1176
    goto/16 :goto_22

    .line 1177
    .line 1178
    :cond_52
    move v3, v12

    .line 1179
    goto/16 :goto_22

    .line 1180
    .line 1181
    :cond_53
    if-le v7, v8, :cond_52

    .line 1182
    .line 1183
    if-le v1, v12, :cond_52

    .line 1184
    .line 1185
    add-int/lit8 v1, v1, -0x1

    .line 1186
    .line 1187
    goto/16 :goto_22

    .line 1188
    .line 1189
    :cond_54
    const/4 v12, 0x1

    .line 1190
    iget-object v0, v2, Lgi;->Z0:[I

    .line 1191
    .line 1192
    const/16 v18, 0x0

    .line 1193
    .line 1194
    aput v4, v0, v18

    .line 1195
    .line 1196
    aput v1, v0, v12

    .line 1197
    .line 1198
    goto/16 :goto_9

    .line 1199
    .line 1200
    :cond_55
    move/from16 v35, v4

    .line 1201
    .line 1202
    move-object/from16 v36, v6

    .line 1203
    .line 1204
    move/from16 v37, v12

    .line 1205
    .line 1206
    move/from16 v17, v13

    .line 1207
    .line 1208
    move-object/from16 v24, v15

    .line 1209
    .line 1210
    move-object/from16 v13, v22

    .line 1211
    .line 1212
    move/from16 v22, v23

    .line 1213
    .line 1214
    move/from16 v34, v25

    .line 1215
    .line 1216
    move v15, v3

    .line 1217
    move-object/from16 v23, v14

    .line 1218
    .line 1219
    move-object v14, v1

    .line 1220
    iget v3, v2, Lgi;->V0:I

    .line 1221
    .line 1222
    if-nez v15, :cond_56

    .line 1223
    .line 1224
    goto/16 :goto_8

    .line 1225
    .line 1226
    :cond_56
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1227
    .line 1228
    .line 1229
    new-instance v1, Lfi;

    .line 1230
    .line 1231
    iget-object v4, v2, Lxb;->I:Lib;

    .line 1232
    .line 1233
    iget-object v5, v2, Lxb;->J:Lib;

    .line 1234
    .line 1235
    iget-object v6, v2, Lxb;->K:Lib;

    .line 1236
    .line 1237
    iget-object v7, v2, Lxb;->L:Lib;

    .line 1238
    .line 1239
    invoke-direct/range {v1 .. v8}, Lfi;-><init>(Lgi;ILib;Lib;Lib;Lib;I)V

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    .line 1244
    .line 1245
    if-nez v3, :cond_5d

    .line 1246
    .line 1247
    const/4 v0, 0x0

    .line 1248
    const/4 v4, 0x0

    .line 1249
    const/4 v5, 0x0

    .line 1250
    :goto_2d
    if-ge v0, v15, :cond_64

    .line 1251
    .line 1252
    aget-object v12, v14, v0

    .line 1253
    .line 1254
    invoke-virtual {v2, v12, v8}, Lgi;->U(Lxb;I)I

    .line 1255
    .line 1256
    .line 1257
    move-result v16

    .line 1258
    iget-object v6, v12, Lxb;->p0:[I

    .line 1259
    .line 1260
    const/16 v18, 0x0

    .line 1261
    .line 1262
    aget v6, v6, v18

    .line 1263
    .line 1264
    const/4 v7, 0x3

    .line 1265
    if-ne v6, v7, :cond_57

    .line 1266
    .line 1267
    add-int/lit8 v4, v4, 0x1

    .line 1268
    .line 1269
    :cond_57
    move/from16 v26, v4

    .line 1270
    .line 1271
    if-eq v5, v8, :cond_58

    .line 1272
    .line 1273
    iget v4, v2, Lgi;->P0:I

    .line 1274
    .line 1275
    add-int/2addr v4, v5

    .line 1276
    add-int v4, v4, v16

    .line 1277
    .line 1278
    if-le v4, v8, :cond_59

    .line 1279
    .line 1280
    :cond_58
    iget-object v4, v1, Lfi;->b:Lxb;

    .line 1281
    .line 1282
    if-eqz v4, :cond_59

    .line 1283
    .line 1284
    const/4 v4, 0x1

    .line 1285
    goto :goto_2e

    .line 1286
    :cond_59
    const/4 v4, 0x0

    .line 1287
    :goto_2e
    if-nez v4, :cond_5a

    .line 1288
    .line 1289
    if-lez v0, :cond_5a

    .line 1290
    .line 1291
    iget v6, v2, Lgi;->U0:I

    .line 1292
    .line 1293
    if-lez v6, :cond_5a

    .line 1294
    .line 1295
    rem-int v6, v0, v6

    .line 1296
    .line 1297
    if-nez v6, :cond_5a

    .line 1298
    .line 1299
    const/4 v4, 0x1

    .line 1300
    :cond_5a
    if-eqz v4, :cond_5c

    .line 1301
    .line 1302
    new-instance v1, Lfi;

    .line 1303
    .line 1304
    iget-object v4, v2, Lxb;->I:Lib;

    .line 1305
    .line 1306
    iget-object v5, v2, Lxb;->J:Lib;

    .line 1307
    .line 1308
    iget-object v6, v2, Lxb;->K:Lib;

    .line 1309
    .line 1310
    iget-object v7, v2, Lxb;->L:Lib;

    .line 1311
    .line 1312
    invoke-direct/range {v1 .. v8}, Lfi;-><init>(Lgi;ILib;Lib;Lib;Lib;I)V

    .line 1313
    .line 1314
    .line 1315
    iput v0, v1, Lfi;->n:I

    .line 1316
    .line 1317
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    .line 1319
    .line 1320
    :cond_5b
    move/from16 v5, v16

    .line 1321
    .line 1322
    goto :goto_2f

    .line 1323
    :cond_5c
    if-lez v0, :cond_5b

    .line 1324
    .line 1325
    iget v4, v2, Lgi;->P0:I

    .line 1326
    .line 1327
    add-int v4, v4, v16

    .line 1328
    .line 1329
    add-int/2addr v4, v5

    .line 1330
    move v5, v4

    .line 1331
    :goto_2f
    invoke-virtual {v1, v12}, Lfi;->a(Lxb;)V

    .line 1332
    .line 1333
    .line 1334
    add-int/lit8 v0, v0, 0x1

    .line 1335
    .line 1336
    move/from16 v4, v26

    .line 1337
    .line 1338
    goto :goto_2d

    .line 1339
    :cond_5d
    const/4 v0, 0x0

    .line 1340
    const/4 v4, 0x0

    .line 1341
    const/4 v5, 0x0

    .line 1342
    :goto_30
    if-ge v0, v15, :cond_64

    .line 1343
    .line 1344
    aget-object v12, v14, v0

    .line 1345
    .line 1346
    invoke-virtual {v2, v12, v8}, Lgi;->T(Lxb;I)I

    .line 1347
    .line 1348
    .line 1349
    move-result v16

    .line 1350
    iget-object v6, v12, Lxb;->p0:[I

    .line 1351
    .line 1352
    const/4 v7, 0x1

    .line 1353
    aget v6, v6, v7

    .line 1354
    .line 1355
    const/4 v7, 0x3

    .line 1356
    if-ne v6, v7, :cond_5e

    .line 1357
    .line 1358
    add-int/lit8 v4, v4, 0x1

    .line 1359
    .line 1360
    :cond_5e
    move/from16 v26, v4

    .line 1361
    .line 1362
    if-eq v5, v8, :cond_5f

    .line 1363
    .line 1364
    iget v4, v2, Lgi;->Q0:I

    .line 1365
    .line 1366
    add-int/2addr v4, v5

    .line 1367
    add-int v4, v4, v16

    .line 1368
    .line 1369
    if-le v4, v8, :cond_60

    .line 1370
    .line 1371
    :cond_5f
    iget-object v4, v1, Lfi;->b:Lxb;

    .line 1372
    .line 1373
    if-eqz v4, :cond_60

    .line 1374
    .line 1375
    const/4 v4, 0x1

    .line 1376
    goto :goto_31

    .line 1377
    :cond_60
    const/4 v4, 0x0

    .line 1378
    :goto_31
    if-nez v4, :cond_61

    .line 1379
    .line 1380
    if-lez v0, :cond_61

    .line 1381
    .line 1382
    iget v6, v2, Lgi;->U0:I

    .line 1383
    .line 1384
    if-lez v6, :cond_61

    .line 1385
    .line 1386
    rem-int v6, v0, v6

    .line 1387
    .line 1388
    if-nez v6, :cond_61

    .line 1389
    .line 1390
    const/4 v4, 0x1

    .line 1391
    :cond_61
    if-eqz v4, :cond_63

    .line 1392
    .line 1393
    new-instance v1, Lfi;

    .line 1394
    .line 1395
    iget-object v4, v2, Lxb;->I:Lib;

    .line 1396
    .line 1397
    iget-object v5, v2, Lxb;->J:Lib;

    .line 1398
    .line 1399
    iget-object v6, v2, Lxb;->K:Lib;

    .line 1400
    .line 1401
    move/from16 v28, v7

    .line 1402
    .line 1403
    iget-object v7, v2, Lxb;->L:Lib;

    .line 1404
    .line 1405
    invoke-direct/range {v1 .. v8}, Lfi;-><init>(Lgi;ILib;Lib;Lib;Lib;I)V

    .line 1406
    .line 1407
    .line 1408
    iput v0, v1, Lfi;->n:I

    .line 1409
    .line 1410
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1411
    .line 1412
    .line 1413
    :cond_62
    move/from16 v5, v16

    .line 1414
    .line 1415
    goto :goto_32

    .line 1416
    :cond_63
    move/from16 v28, v7

    .line 1417
    .line 1418
    if-lez v0, :cond_62

    .line 1419
    .line 1420
    iget v4, v2, Lgi;->Q0:I

    .line 1421
    .line 1422
    add-int v4, v4, v16

    .line 1423
    .line 1424
    add-int/2addr v4, v5

    .line 1425
    move v5, v4

    .line 1426
    :goto_32
    invoke-virtual {v1, v12}, Lfi;->a(Lxb;)V

    .line 1427
    .line 1428
    .line 1429
    add-int/lit8 v0, v0, 0x1

    .line 1430
    .line 1431
    move/from16 v4, v26

    .line 1432
    .line 1433
    goto :goto_30

    .line 1434
    :cond_64
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 1435
    .line 1436
    .line 1437
    move-result v0

    .line 1438
    iget v1, v2, Lgi;->w0:I

    .line 1439
    .line 1440
    iget v5, v2, Lgi;->s0:I

    .line 1441
    .line 1442
    iget v6, v2, Lgi;->x0:I

    .line 1443
    .line 1444
    iget v7, v2, Lgi;->t0:I

    .line 1445
    .line 1446
    const/16 v18, 0x0

    .line 1447
    .line 1448
    aget v12, v23, v18

    .line 1449
    .line 1450
    const/4 v14, 0x2

    .line 1451
    if-eq v12, v14, :cond_66

    .line 1452
    .line 1453
    const/4 v12, 0x1

    .line 1454
    aget v15, v23, v12

    .line 1455
    .line 1456
    if-ne v15, v14, :cond_65

    .line 1457
    .line 1458
    goto :goto_33

    .line 1459
    :cond_65
    const/4 v12, 0x0

    .line 1460
    goto :goto_34

    .line 1461
    :cond_66
    :goto_33
    const/4 v12, 0x1

    .line 1462
    :goto_34
    if-lez v4, :cond_68

    .line 1463
    .line 1464
    if-eqz v12, :cond_68

    .line 1465
    .line 1466
    const/4 v4, 0x0

    .line 1467
    :goto_35
    if-ge v4, v0, :cond_68

    .line 1468
    .line 1469
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v12

    .line 1473
    check-cast v12, Lfi;

    .line 1474
    .line 1475
    if-nez v3, :cond_67

    .line 1476
    .line 1477
    invoke-virtual {v12}, Lfi;->d()I

    .line 1478
    .line 1479
    .line 1480
    move-result v14

    .line 1481
    sub-int v14, v8, v14

    .line 1482
    .line 1483
    invoke-virtual {v12, v14}, Lfi;->e(I)V

    .line 1484
    .line 1485
    .line 1486
    goto :goto_36

    .line 1487
    :cond_67
    invoke-virtual {v12}, Lfi;->c()I

    .line 1488
    .line 1489
    .line 1490
    move-result v14

    .line 1491
    sub-int v14, v8, v14

    .line 1492
    .line 1493
    invoke-virtual {v12, v14}, Lfi;->e(I)V

    .line 1494
    .line 1495
    .line 1496
    :goto_36
    add-int/lit8 v4, v4, 0x1

    .line 1497
    .line 1498
    goto :goto_35

    .line 1499
    :cond_68
    move/from16 v29, v1

    .line 1500
    .line 1501
    move/from16 v30, v5

    .line 1502
    .line 1503
    move/from16 v31, v6

    .line 1504
    .line 1505
    move/from16 v32, v7

    .line 1506
    .line 1507
    move-object/from16 v25, v19

    .line 1508
    .line 1509
    move-object/from16 v27, v20

    .line 1510
    .line 1511
    move-object/from16 v28, v21

    .line 1512
    .line 1513
    move-object/from16 v26, v24

    .line 1514
    .line 1515
    const/4 v1, 0x0

    .line 1516
    const/4 v4, 0x0

    .line 1517
    const/4 v5, 0x0

    .line 1518
    :goto_37
    if-ge v1, v0, :cond_6e

    .line 1519
    .line 1520
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v6

    .line 1524
    check-cast v6, Lfi;

    .line 1525
    .line 1526
    if-nez v3, :cond_6b

    .line 1527
    .line 1528
    add-int/lit8 v7, v0, -0x1

    .line 1529
    .line 1530
    if-ge v1, v7, :cond_69

    .line 1531
    .line 1532
    add-int/lit8 v7, v1, 0x1

    .line 1533
    .line 1534
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v7

    .line 1538
    check-cast v7, Lfi;

    .line 1539
    .line 1540
    iget-object v7, v7, Lfi;->b:Lxb;

    .line 1541
    .line 1542
    iget-object v7, v7, Lxb;->J:Lib;

    .line 1543
    .line 1544
    move-object/from16 v28, v7

    .line 1545
    .line 1546
    const/16 v32, 0x0

    .line 1547
    .line 1548
    goto :goto_38

    .line 1549
    :cond_69
    iget v7, v2, Lgi;->t0:I

    .line 1550
    .line 1551
    move/from16 v32, v7

    .line 1552
    .line 1553
    move-object/from16 v28, v21

    .line 1554
    .line 1555
    :goto_38
    iget-object v7, v6, Lfi;->b:Lxb;

    .line 1556
    .line 1557
    iget-object v7, v7, Lxb;->L:Lib;

    .line 1558
    .line 1559
    move/from16 v24, v3

    .line 1560
    .line 1561
    move-object/from16 v23, v6

    .line 1562
    .line 1563
    move/from16 v33, v8

    .line 1564
    .line 1565
    invoke-virtual/range {v23 .. v33}, Lfi;->f(ILib;Lib;Lib;Lib;IIIII)V

    .line 1566
    .line 1567
    .line 1568
    invoke-virtual {v6}, Lfi;->d()I

    .line 1569
    .line 1570
    .line 1571
    move-result v12

    .line 1572
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    .line 1573
    .line 1574
    .line 1575
    move-result v4

    .line 1576
    invoke-virtual {v6}, Lfi;->c()I

    .line 1577
    .line 1578
    .line 1579
    move-result v6

    .line 1580
    add-int/2addr v6, v5

    .line 1581
    if-lez v1, :cond_6a

    .line 1582
    .line 1583
    iget v5, v2, Lgi;->Q0:I

    .line 1584
    .line 1585
    add-int/2addr v6, v5

    .line 1586
    :cond_6a
    move v5, v6

    .line 1587
    move-object/from16 v26, v7

    .line 1588
    .line 1589
    const/16 v30, 0x0

    .line 1590
    .line 1591
    goto :goto_3a

    .line 1592
    :cond_6b
    add-int/lit8 v7, v0, -0x1

    .line 1593
    .line 1594
    if-ge v1, v7, :cond_6c

    .line 1595
    .line 1596
    add-int/lit8 v7, v1, 0x1

    .line 1597
    .line 1598
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v7

    .line 1602
    check-cast v7, Lfi;

    .line 1603
    .line 1604
    iget-object v7, v7, Lfi;->b:Lxb;

    .line 1605
    .line 1606
    iget-object v7, v7, Lxb;->I:Lib;

    .line 1607
    .line 1608
    move-object/from16 v27, v7

    .line 1609
    .line 1610
    const/16 v31, 0x0

    .line 1611
    .line 1612
    goto :goto_39

    .line 1613
    :cond_6c
    iget v7, v2, Lgi;->x0:I

    .line 1614
    .line 1615
    move/from16 v31, v7

    .line 1616
    .line 1617
    move-object/from16 v27, v20

    .line 1618
    .line 1619
    :goto_39
    iget-object v7, v6, Lfi;->b:Lxb;

    .line 1620
    .line 1621
    iget-object v7, v7, Lxb;->K:Lib;

    .line 1622
    .line 1623
    move/from16 v24, v3

    .line 1624
    .line 1625
    move-object/from16 v23, v6

    .line 1626
    .line 1627
    move/from16 v33, v8

    .line 1628
    .line 1629
    invoke-virtual/range {v23 .. v33}, Lfi;->f(ILib;Lib;Lib;Lib;IIIII)V

    .line 1630
    .line 1631
    .line 1632
    invoke-virtual/range {v23 .. v23}, Lfi;->d()I

    .line 1633
    .line 1634
    .line 1635
    move-result v6

    .line 1636
    add-int/2addr v6, v4

    .line 1637
    invoke-virtual/range {v23 .. v23}, Lfi;->c()I

    .line 1638
    .line 1639
    .line 1640
    move-result v4

    .line 1641
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 1642
    .line 1643
    .line 1644
    move-result v4

    .line 1645
    if-lez v1, :cond_6d

    .line 1646
    .line 1647
    iget v5, v2, Lgi;->P0:I

    .line 1648
    .line 1649
    add-int/2addr v6, v5

    .line 1650
    :cond_6d
    move v5, v4

    .line 1651
    move v4, v6

    .line 1652
    move-object/from16 v25, v7

    .line 1653
    .line 1654
    const/16 v29, 0x0

    .line 1655
    .line 1656
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    .line 1657
    .line 1658
    goto/16 :goto_37

    .line 1659
    .line 1660
    :cond_6e
    const/16 v18, 0x0

    .line 1661
    .line 1662
    aput v4, v36, v18

    .line 1663
    .line 1664
    const/4 v12, 0x1

    .line 1665
    aput v5, v36, v12

    .line 1666
    .line 1667
    goto/16 :goto_8

    .line 1668
    .line 1669
    :cond_6f
    move-object v14, v1

    .line 1670
    move v15, v3

    .line 1671
    move/from16 v35, v4

    .line 1672
    .line 1673
    move-object/from16 v36, v6

    .line 1674
    .line 1675
    move/from16 v37, v12

    .line 1676
    .line 1677
    move/from16 v17, v13

    .line 1678
    .line 1679
    move-object/from16 v13, v22

    .line 1680
    .line 1681
    move/from16 v22, v23

    .line 1682
    .line 1683
    move/from16 v34, v25

    .line 1684
    .line 1685
    iget v3, v2, Lgi;->V0:I

    .line 1686
    .line 1687
    if-nez v15, :cond_70

    .line 1688
    .line 1689
    goto/16 :goto_8

    .line 1690
    .line 1691
    :cond_70
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 1692
    .line 1693
    .line 1694
    move-result v0

    .line 1695
    if-nez v0, :cond_71

    .line 1696
    .line 1697
    new-instance v1, Lfi;

    .line 1698
    .line 1699
    iget-object v4, v2, Lxb;->I:Lib;

    .line 1700
    .line 1701
    iget-object v5, v2, Lxb;->J:Lib;

    .line 1702
    .line 1703
    iget-object v6, v2, Lxb;->K:Lib;

    .line 1704
    .line 1705
    iget-object v7, v2, Lxb;->L:Lib;

    .line 1706
    .line 1707
    invoke-direct/range {v1 .. v8}, Lfi;-><init>(Lgi;ILib;Lib;Lib;Lib;I)V

    .line 1708
    .line 1709
    .line 1710
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1711
    .line 1712
    .line 1713
    goto :goto_3b

    .line 1714
    :cond_71
    const/4 v1, 0x0

    .line 1715
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v0

    .line 1719
    check-cast v0, Lfi;

    .line 1720
    .line 1721
    iput v1, v0, Lfi;->c:I

    .line 1722
    .line 1723
    const/4 v6, 0x0

    .line 1724
    iput-object v6, v0, Lfi;->b:Lxb;

    .line 1725
    .line 1726
    iput v1, v0, Lfi;->l:I

    .line 1727
    .line 1728
    iput v1, v0, Lfi;->m:I

    .line 1729
    .line 1730
    iput v1, v0, Lfi;->n:I

    .line 1731
    .line 1732
    iput v1, v0, Lfi;->o:I

    .line 1733
    .line 1734
    iput v1, v0, Lfi;->p:I

    .line 1735
    .line 1736
    iget-object v1, v2, Lxb;->I:Lib;

    .line 1737
    .line 1738
    iget-object v4, v2, Lxb;->J:Lib;

    .line 1739
    .line 1740
    iget-object v5, v2, Lxb;->K:Lib;

    .line 1741
    .line 1742
    iget-object v6, v2, Lxb;->L:Lib;

    .line 1743
    .line 1744
    iget v7, v2, Lgi;->w0:I

    .line 1745
    .line 1746
    iget v12, v2, Lgi;->s0:I

    .line 1747
    .line 1748
    iget v13, v2, Lgi;->x0:I

    .line 1749
    .line 1750
    move-object/from16 v23, v0

    .line 1751
    .line 1752
    iget v0, v2, Lgi;->t0:I

    .line 1753
    .line 1754
    move/from16 v32, v0

    .line 1755
    .line 1756
    move-object/from16 v25, v1

    .line 1757
    .line 1758
    move/from16 v24, v3

    .line 1759
    .line 1760
    move-object/from16 v26, v4

    .line 1761
    .line 1762
    move-object/from16 v27, v5

    .line 1763
    .line 1764
    move-object/from16 v28, v6

    .line 1765
    .line 1766
    move/from16 v29, v7

    .line 1767
    .line 1768
    move/from16 v33, v8

    .line 1769
    .line 1770
    move/from16 v30, v12

    .line 1771
    .line 1772
    move/from16 v31, v13

    .line 1773
    .line 1774
    invoke-virtual/range {v23 .. v33}, Lfi;->f(ILib;Lib;Lib;Lib;IIIII)V

    .line 1775
    .line 1776
    .line 1777
    move-object/from16 v1, v23

    .line 1778
    .line 1779
    :goto_3b
    const/4 v0, 0x0

    .line 1780
    :goto_3c
    if-ge v0, v15, :cond_72

    .line 1781
    .line 1782
    aget-object v3, v14, v0

    .line 1783
    .line 1784
    invoke-virtual {v1, v3}, Lfi;->a(Lxb;)V

    .line 1785
    .line 1786
    .line 1787
    add-int/lit8 v0, v0, 0x1

    .line 1788
    .line 1789
    goto :goto_3c

    .line 1790
    :cond_72
    invoke-virtual {v1}, Lfi;->d()I

    .line 1791
    .line 1792
    .line 1793
    move-result v0

    .line 1794
    const/16 v18, 0x0

    .line 1795
    .line 1796
    aput v0, v36, v18

    .line 1797
    .line 1798
    invoke-virtual {v1}, Lfi;->c()I

    .line 1799
    .line 1800
    .line 1801
    move-result v0

    .line 1802
    const/4 v12, 0x1

    .line 1803
    aput v0, v36, v12

    .line 1804
    .line 1805
    :goto_3d
    aget v0, v36, v18

    .line 1806
    .line 1807
    add-int v0, v0, v17

    .line 1808
    .line 1809
    add-int v0, v0, v22

    .line 1810
    .line 1811
    aget v1, v36, v12

    .line 1812
    .line 1813
    add-int v1, v1, v34

    .line 1814
    .line 1815
    add-int v1, v1, v35

    .line 1816
    .line 1817
    const/high16 v3, -0x80000000

    .line 1818
    .line 1819
    const/high16 v4, 0x40000000

    .line 1820
    .line 1821
    if-ne v9, v4, :cond_73

    .line 1822
    .line 1823
    goto :goto_3e

    .line 1824
    :cond_73
    if-ne v9, v3, :cond_74

    .line 1825
    .line 1826
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    .line 1827
    .line 1828
    .line 1829
    move-result v10

    .line 1830
    goto :goto_3e

    .line 1831
    :cond_74
    if-nez v9, :cond_75

    .line 1832
    .line 1833
    move v10, v0

    .line 1834
    goto :goto_3e

    .line 1835
    :cond_75
    const/4 v10, 0x0

    .line 1836
    :goto_3e
    if-ne v11, v4, :cond_76

    .line 1837
    .line 1838
    move/from16 v0, v37

    .line 1839
    .line 1840
    goto :goto_3f

    .line 1841
    :cond_76
    if-ne v11, v3, :cond_77

    .line 1842
    .line 1843
    move/from16 v0, v37

    .line 1844
    .line 1845
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 1846
    .line 1847
    .line 1848
    move-result v0

    .line 1849
    goto :goto_3f

    .line 1850
    :cond_77
    if-nez v11, :cond_78

    .line 1851
    .line 1852
    move v0, v1

    .line 1853
    goto :goto_3f

    .line 1854
    :cond_78
    const/4 v0, 0x0

    .line 1855
    :goto_3f
    iput v10, v2, Lgi;->z0:I

    .line 1856
    .line 1857
    iput v0, v2, Lgi;->A0:I

    .line 1858
    .line 1859
    invoke-virtual {v2, v10}, Lxb;->O(I)V

    .line 1860
    .line 1861
    .line 1862
    invoke-virtual {v2, v0}, Lxb;->L(I)V

    .line 1863
    .line 1864
    .line 1865
    iget v0, v2, Lrl;->r0:I

    .line 1866
    .line 1867
    if-lez v0, :cond_79

    .line 1868
    .line 1869
    move v13, v12

    .line 1870
    goto :goto_40

    .line 1871
    :cond_79
    const/4 v13, 0x0

    .line 1872
    :goto_40
    iput-boolean v13, v2, Lgi;->y0:Z

    .line 1873
    .line 1874
    :goto_41
    iget v0, v2, Lgi;->z0:I

    .line 1875
    .line 1876
    iget v1, v2, Lgi;->A0:I

    .line 1877
    .line 1878
    move-object/from16 v2, p0

    .line 1879
    .line 1880
    invoke-virtual {v2, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1881
    .line 1882
    .line 1883
    return-void

    .line 1884
    :cond_7a
    move-object/from16 v2, p0

    .line 1885
    .line 1886
    move v1, v13

    .line 1887
    invoke-virtual {v2, v1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1888
    .line 1889
    .line 1890
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/helper/widget/Flow;->j(Lgi;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->L0:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->F0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->M0:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->G0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->R0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->J0:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->P0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->D0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLastHorizontalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->N0:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->H0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLastVerticalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->O0:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLastVerticalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->I0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->U0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->V0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->s0:I

    .line 4
    .line 5
    iput p1, v0, Lgi;->t0:I

    .line 6
    .line 7
    iput p1, v0, Lgi;->u0:I

    .line 8
    .line 9
    iput p1, v0, Lgi;->v0:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->t0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->w0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->x0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->s0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->S0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVerticalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->K0:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVerticalGap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->Q0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->E0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setWrapMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lgi;

    .line 2
    .line 3
    iput p1, v0, Lgi;->T0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
