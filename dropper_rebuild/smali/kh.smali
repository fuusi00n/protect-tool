.class public final Lkh;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final a:Lcom/google/android/material/textfield/TextInputLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Lcom/google/android/material/internal/CheckableImageButton;

.field public d:Landroid/content/res/ColorStateList;

.field public e:Landroid/graphics/PorterDuff$Mode;

.field public f:Landroid/view/View$OnLongClickListener;

.field public final g:Lcom/google/android/material/internal/CheckableImageButton;

.field public final h:Ljh;

.field public i:I

.field public final j:Ljava/util/LinkedHashSet;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/graphics/PorterDuff$Mode;

.field public m:I

.field public n:Landroid/widget/ImageView$ScaleType;

.field public o:Landroid/view/View$OnLongClickListener;

.field public p:Ljava/lang/CharSequence;

.field public final q:Lt5;

.field public r:Z

.field public s:Landroid/widget/EditText;

.field public final t:Landroid/view/accessibility/AccessibilityManager;

.field public u:Lkg;

.field public final v:Lm9;

.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Ly2;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iput v3, v0, Lkh;->i:I

    .line 16
    .line 17
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v4, v0, Lkh;->j:Ljava/util/LinkedHashSet;

    .line 23
    .line 24
    new-instance v4, Lm9;

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    invoke-direct {v4, v0, v5}, Lm9;-><init>(Landroid/view/ViewGroup;I)V

    .line 28
    .line 29
    .line 30
    iput-object v4, v0, Lkh;->v:Lm9;

    .line 31
    .line 32
    new-instance v4, Lih;

    .line 33
    .line 34
    invoke-direct {v4, v0}, Lih;-><init>(Lkh;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const-string v7, "accessibility"

    .line 42
    .line 43
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    .line 48
    .line 49
    iput-object v6, v0, Lkh;->t:Landroid/view/accessibility/AccessibilityManager;

    .line 50
    .line 51
    iput-object v1, v0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 52
    .line 53
    const/16 v6, 0x8

    .line 54
    .line 55
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    .line 60
    .line 61
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 62
    .line 63
    const v8, 0x800005

    .line 64
    .line 65
    .line 66
    const/4 v9, -0x2

    .line 67
    const/4 v10, -0x1

    .line 68
    invoke-direct {v7, v9, v10, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    new-instance v7, Landroid/widget/FrameLayout;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    iput-object v7, v0, Lkh;->b:Landroid/widget/FrameLayout;

    .line 84
    .line 85
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    .line 90
    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    sget v11, Lnv;->text_input_error_icon:I

    .line 105
    .line 106
    invoke-virtual {v0, v0, v8, v11}, Lkh;->a(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Lcom/google/android/material/internal/CheckableImageButton;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    iput-object v11, v0, Lkh;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 111
    .line 112
    sget v12, Lnv;->text_input_end_icon:I

    .line 113
    .line 114
    invoke-virtual {v0, v7, v8, v12}, Lkh;->a(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Lcom/google/android/material/internal/CheckableImageButton;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    iput-object v8, v0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 119
    .line 120
    new-instance v12, Ljh;

    .line 121
    .line 122
    invoke-direct {v12, v0, v2}, Ljh;-><init>(Lkh;Ly2;)V

    .line 123
    .line 124
    .line 125
    iput-object v12, v0, Lkh;->h:Ljh;

    .line 126
    .line 127
    new-instance v12, Lt5;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    const/4 v14, 0x0

    .line 134
    invoke-direct {v12, v13, v14}, Lt5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    .line 136
    .line 137
    iput-object v12, v0, Lkh;->q:Lt5;

    .line 138
    .line 139
    sget v13, Lhw;->TextInputLayout_errorIconTint:I

    .line 140
    .line 141
    iget-object v15, v2, Ly2;->c:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v15, Landroid/content/res/TypedArray;

    .line 144
    .line 145
    invoke-virtual {v15, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    if-eqz v13, :cond_0

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    sget v9, Lhw;->TextInputLayout_errorIconTint:I

    .line 156
    .line 157
    invoke-static {v13, v2, v9}, Lnm;->u(Landroid/content/Context;Ly2;I)Landroid/content/res/ColorStateList;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    iput-object v9, v0, Lkh;->d:Landroid/content/res/ColorStateList;

    .line 162
    .line 163
    :cond_0
    sget v9, Lhw;->TextInputLayout_errorIconTintMode:I

    .line 164
    .line 165
    invoke-virtual {v15, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    if-eqz v9, :cond_1

    .line 170
    .line 171
    sget v9, Lhw;->TextInputLayout_errorIconTintMode:I

    .line 172
    .line 173
    invoke-virtual {v15, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    invoke-static {v9, v14}, Lyt;->u(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    iput-object v9, v0, Lkh;->e:Landroid/graphics/PorterDuff$Mode;

    .line 182
    .line 183
    :cond_1
    sget v9, Lhw;->TextInputLayout_errorIconDrawable:I

    .line 184
    .line 185
    invoke-virtual {v15, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    if-eqz v9, :cond_2

    .line 190
    .line 191
    sget v9, Lhw;->TextInputLayout_errorIconDrawable:I

    .line 192
    .line 193
    invoke-virtual {v2, v9}, Ly2;->g(I)Landroid/graphics/drawable/Drawable;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    invoke-virtual {v0, v9}, Lkh;->i(Landroid/graphics/drawable/Drawable;)V

    .line 198
    .line 199
    .line 200
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    sget v13, Lvv;->error_icon_content_description:I

    .line 205
    .line 206
    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    invoke-virtual {v11, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    sget-object v9, Lw50;->a:Ljava/util/WeakHashMap;

    .line 214
    .line 215
    const/4 v9, 0x2

    .line 216
    invoke-virtual {v11, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v11, v3}, Landroid/view/View;->setClickable(Z)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v11, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v11, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 226
    .line 227
    .line 228
    sget v9, Lhw;->TextInputLayout_passwordToggleEnabled:I

    .line 229
    .line 230
    invoke-virtual {v15, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    if-nez v9, :cond_4

    .line 235
    .line 236
    sget v9, Lhw;->TextInputLayout_endIconTint:I

    .line 237
    .line 238
    invoke-virtual {v15, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    if-eqz v9, :cond_3

    .line 243
    .line 244
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    sget v13, Lhw;->TextInputLayout_endIconTint:I

    .line 249
    .line 250
    invoke-static {v9, v2, v13}, Lnm;->u(Landroid/content/Context;Ly2;I)Landroid/content/res/ColorStateList;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    iput-object v9, v0, Lkh;->k:Landroid/content/res/ColorStateList;

    .line 255
    .line 256
    :cond_3
    sget v9, Lhw;->TextInputLayout_endIconTintMode:I

    .line 257
    .line 258
    invoke-virtual {v15, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 259
    .line 260
    .line 261
    move-result v9

    .line 262
    if-eqz v9, :cond_4

    .line 263
    .line 264
    sget v9, Lhw;->TextInputLayout_endIconTintMode:I

    .line 265
    .line 266
    invoke-virtual {v15, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    invoke-static {v9, v14}, Lyt;->u(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    iput-object v9, v0, Lkh;->l:Landroid/graphics/PorterDuff$Mode;

    .line 275
    .line 276
    :cond_4
    sget v9, Lhw;->TextInputLayout_endIconMode:I

    .line 277
    .line 278
    invoke-virtual {v15, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    if-eqz v9, :cond_6

    .line 283
    .line 284
    sget v9, Lhw;->TextInputLayout_endIconMode:I

    .line 285
    .line 286
    invoke-virtual {v15, v9, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    invoke-virtual {v0, v9}, Lkh;->g(I)V

    .line 291
    .line 292
    .line 293
    sget v9, Lhw;->TextInputLayout_endIconContentDescription:I

    .line 294
    .line 295
    invoke-virtual {v15, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 296
    .line 297
    .line 298
    move-result v9

    .line 299
    if-eqz v9, :cond_5

    .line 300
    .line 301
    sget v9, Lhw;->TextInputLayout_endIconContentDescription:I

    .line 302
    .line 303
    invoke-virtual {v15, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 304
    .line 305
    .line 306
    move-result-object v9

    .line 307
    invoke-virtual {v8}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 308
    .line 309
    .line 310
    move-result-object v13

    .line 311
    if-eq v13, v9, :cond_5

    .line 312
    .line 313
    invoke-virtual {v8, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 314
    .line 315
    .line 316
    :cond_5
    sget v9, Lhw;->TextInputLayout_endIconCheckable:I

    .line 317
    .line 318
    invoke-virtual {v15, v9, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 319
    .line 320
    .line 321
    move-result v9

    .line 322
    invoke-virtual {v8, v9}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 323
    .line 324
    .line 325
    goto :goto_0

    .line 326
    :cond_6
    sget v9, Lhw;->TextInputLayout_passwordToggleEnabled:I

    .line 327
    .line 328
    invoke-virtual {v15, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 329
    .line 330
    .line 331
    move-result v9

    .line 332
    if-eqz v9, :cond_9

    .line 333
    .line 334
    sget v9, Lhw;->TextInputLayout_passwordToggleTint:I

    .line 335
    .line 336
    invoke-virtual {v15, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 337
    .line 338
    .line 339
    move-result v9

    .line 340
    if-eqz v9, :cond_7

    .line 341
    .line 342
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    sget v13, Lhw;->TextInputLayout_passwordToggleTint:I

    .line 347
    .line 348
    invoke-static {v9, v2, v13}, Lnm;->u(Landroid/content/Context;Ly2;I)Landroid/content/res/ColorStateList;

    .line 349
    .line 350
    .line 351
    move-result-object v9

    .line 352
    iput-object v9, v0, Lkh;->k:Landroid/content/res/ColorStateList;

    .line 353
    .line 354
    :cond_7
    sget v9, Lhw;->TextInputLayout_passwordToggleTintMode:I

    .line 355
    .line 356
    invoke-virtual {v15, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 357
    .line 358
    .line 359
    move-result v9

    .line 360
    if-eqz v9, :cond_8

    .line 361
    .line 362
    sget v9, Lhw;->TextInputLayout_passwordToggleTintMode:I

    .line 363
    .line 364
    invoke-virtual {v15, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 365
    .line 366
    .line 367
    move-result v9

    .line 368
    invoke-static {v9, v14}, Lyt;->u(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 369
    .line 370
    .line 371
    move-result-object v9

    .line 372
    iput-object v9, v0, Lkh;->l:Landroid/graphics/PorterDuff$Mode;

    .line 373
    .line 374
    :cond_8
    sget v9, Lhw;->TextInputLayout_passwordToggleEnabled:I

    .line 375
    .line 376
    invoke-virtual {v15, v9, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 377
    .line 378
    .line 379
    move-result v9

    .line 380
    invoke-virtual {v0, v9}, Lkh;->g(I)V

    .line 381
    .line 382
    .line 383
    sget v9, Lhw;->TextInputLayout_passwordToggleContentDescription:I

    .line 384
    .line 385
    invoke-virtual {v15, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 386
    .line 387
    .line 388
    move-result-object v9

    .line 389
    invoke-virtual {v8}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 390
    .line 391
    .line 392
    move-result-object v13

    .line 393
    if-eq v13, v9, :cond_9

    .line 394
    .line 395
    invoke-virtual {v8, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 396
    .line 397
    .line 398
    :cond_9
    :goto_0
    sget v9, Lhw;->TextInputLayout_endIconMinSize:I

    .line 399
    .line 400
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 401
    .line 402
    .line 403
    move-result-object v13

    .line 404
    move-object/from16 v16, v14

    .line 405
    .line 406
    sget v14, Lzu;->mtrl_min_touch_target_size:I

    .line 407
    .line 408
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 409
    .line 410
    .line 411
    move-result v13

    .line 412
    invoke-virtual {v15, v9, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 413
    .line 414
    .line 415
    move-result v9

    .line 416
    if-ltz v9, :cond_f

    .line 417
    .line 418
    iget v13, v0, Lkh;->m:I

    .line 419
    .line 420
    if-eq v9, v13, :cond_a

    .line 421
    .line 422
    iput v9, v0, Lkh;->m:I

    .line 423
    .line 424
    invoke-virtual {v8, v9}, Landroid/view/View;->setMinimumWidth(I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v8, v9}, Landroid/view/View;->setMinimumHeight(I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v11, v9}, Landroid/view/View;->setMinimumWidth(I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v11, v9}, Landroid/view/View;->setMinimumHeight(I)V

    .line 434
    .line 435
    .line 436
    :cond_a
    sget v9, Lhw;->TextInputLayout_endIconScaleType:I

    .line 437
    .line 438
    invoke-virtual {v15, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 439
    .line 440
    .line 441
    move-result v9

    .line 442
    if-eqz v9, :cond_b

    .line 443
    .line 444
    sget v9, Lhw;->TextInputLayout_endIconScaleType:I

    .line 445
    .line 446
    invoke-virtual {v15, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 447
    .line 448
    .line 449
    move-result v9

    .line 450
    invoke-static {v9}, Ld40;->j(I)Landroid/widget/ImageView$ScaleType;

    .line 451
    .line 452
    .line 453
    move-result-object v9

    .line 454
    iput-object v9, v0, Lkh;->n:Landroid/widget/ImageView$ScaleType;

    .line 455
    .line 456
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 460
    .line 461
    .line 462
    :cond_b
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 463
    .line 464
    .line 465
    sget v6, Lnv;->textinput_suffix_text:I

    .line 466
    .line 467
    invoke-virtual {v12, v6}, Landroid/view/View;->setId(I)V

    .line 468
    .line 469
    .line 470
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 471
    .line 472
    const/high16 v9, 0x42a00000

    .line 473
    .line 474
    const/4 v10, -0x2

    .line 475
    invoke-direct {v6, v10, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v12, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v12, v5}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 482
    .line 483
    .line 484
    sget v6, Lhw;->TextInputLayout_suffixTextAppearance:I

    .line 485
    .line 486
    invoke-virtual {v15, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 491
    .line 492
    .line 493
    sget v3, Lhw;->TextInputLayout_suffixTextColor:I

    .line 494
    .line 495
    invoke-virtual {v15, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 496
    .line 497
    .line 498
    move-result v3

    .line 499
    if-eqz v3, :cond_c

    .line 500
    .line 501
    sget v3, Lhw;->TextInputLayout_suffixTextColor:I

    .line 502
    .line 503
    invoke-virtual {v2, v3}, Ly2;->f(I)Landroid/content/res/ColorStateList;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 508
    .line 509
    .line 510
    :cond_c
    sget v2, Lhw;->TextInputLayout_suffixText:I

    .line 511
    .line 512
    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 517
    .line 518
    .line 519
    move-result v3

    .line 520
    if-eqz v3, :cond_d

    .line 521
    .line 522
    move-object/from16 v14, v16

    .line 523
    .line 524
    goto :goto_1

    .line 525
    :cond_d
    move-object v14, v2

    .line 526
    :goto_1
    iput-object v14, v0, Lkh;->p:Ljava/lang/CharSequence;

    .line 527
    .line 528
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0}, Lkh;->n()V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 544
    .line 545
    .line 546
    iget-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->e0:Ljava/util/LinkedHashSet;

    .line 547
    .line 548
    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    iget-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 552
    .line 553
    if-eqz v2, :cond_e

    .line 554
    .line 555
    invoke-virtual {v4, v1}, Lih;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 556
    .line 557
    .line 558
    :cond_e
    new-instance v1, Lo8;

    .line 559
    .line 560
    invoke-direct {v1, v5, v0}, Lo8;-><init>(ILjava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 564
    .line 565
    .line 566
    return-void

    .line 567
    :cond_f
    const-string v0, "endIconSize cannot be less than 0"

    .line 568
    .line 569
    invoke-static {v0}, Lg9;->j(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    throw v16
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 2

    .line 1
    sget v0, Lrv;->design_text_input_end_icon:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton;

    .line 9
    .line 10
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lnm;->C(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-object p1
.end method

.method public final b()Llh;
    .locals 4

    .line 1
    iget v0, p0, Lkh;->i:I

    .line 2
    .line 3
    iget-object p0, p0, Lkh;->h:Ljh;

    .line 4
    .line 5
    iget-object v1, p0, Ljh;->a:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Llh;

    .line 12
    .line 13
    if-nez v2, :cond_5

    .line 14
    .line 15
    iget-object v2, p0, Ljh;->b:Lkh;

    .line 16
    .line 17
    const/4 v3, -0x1

    .line 18
    if-eq v0, v3, :cond_4

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    if-eq v0, v3, :cond_2

    .line 24
    .line 25
    const/4 p0, 0x2

    .line 26
    if-eq v0, p0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x3

    .line 29
    if-ne v0, p0, :cond_0

    .line 30
    .line 31
    new-instance p0, Llg;

    .line 32
    .line 33
    invoke-direct {p0, v2}, Llg;-><init>(Lkh;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p0, "Invalid end icon mode: "

    .line 38
    .line 39
    invoke-static {p0, v0}, Lg9;->f(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0

    .line 44
    :cond_1
    new-instance p0, Lx9;

    .line 45
    .line 46
    invoke-direct {p0, v2}, Lx9;-><init>(Lkh;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    new-instance v3, Lvt;

    .line 51
    .line 52
    iget p0, p0, Ljh;->d:I

    .line 53
    .line 54
    invoke-direct {v3, v2, p0}, Lvt;-><init>(Lkh;I)V

    .line 55
    .line 56
    .line 57
    move-object p0, v3

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    new-instance p0, Lod;

    .line 60
    .line 61
    invoke-direct {p0, v2, v3}, Lod;-><init>(Lkh;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    new-instance p0, Lod;

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0, v2, v3}, Lod;-><init>(Lkh;I)V

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_5
    return-object v2
.end method

.method public final c()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkh;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lkh;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    add-int/2addr v0, v1

    .line 33
    :goto_1
    sget-object v1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object p0, p0, Lkh;->q:Lt5;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    add-int/2addr p0, v1

    .line 46
    add-int/2addr p0, v0

    .line 47
    return p0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkh;->b:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final e()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkh;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final f(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lkh;->b()Llh;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Llh;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-boolean v1, v2, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 15
    .line 16
    invoke-virtual {v0}, Llh;->k()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eq v1, v4, :cond_0

    .line 21
    .line 22
    xor-int/2addr v1, v3

    .line 23
    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 24
    .line 25
    .line 26
    move v1, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    instance-of v4, v0, Llg;

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/view/View;->isActivated()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    check-cast v0, Llg;

    .line 38
    .line 39
    iget-boolean v0, v0, Llg;->l:Z

    .line 40
    .line 41
    if-eq v4, v0, :cond_1

    .line 42
    .line 43
    xor-int/lit8 v0, v4, 0x1

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Landroid/view/View;->setActivated(Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v3, v1

    .line 50
    :goto_1
    if-nez p1, :cond_3

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    return-void

    .line 56
    :cond_3
    :goto_2
    iget-object p1, p0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 57
    .line 58
    iget-object p0, p0, Lkh;->k:Landroid/content/res/ColorStateList;

    .line 59
    .line 60
    invoke-static {p1, v2, p0}, Ld40;->F(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final g(I)V
    .locals 8

    .line 1
    iget v0, p0, Lkh;->i:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lkh;->b()Llh;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lkh;->u:Lkg;

    .line 11
    .line 12
    iget-object v2, p0, Lkh;->t:Landroid/view/accessibility/AccessibilityManager;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    new-instance v3, Lb0;

    .line 19
    .line 20
    invoke-direct {v3, v1}, Lb0;-><init>(Lkg;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lkh;->u:Lkg;

    .line 28
    .line 29
    invoke-virtual {v0}, Llh;->r()V

    .line 30
    .line 31
    .line 32
    iput p1, p0, Lkh;->i:I

    .line 33
    .line 34
    iget-object v0, p0, Lkh;->j:Ljava/util/LinkedHashSet;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_b

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    move v3, v0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v3, 0x0

    .line 52
    :goto_0
    invoke-virtual {p0, v3}, Lkh;->h(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lkh;->b()Llh;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget-object v4, p0, Lkh;->h:Ljh;

    .line 60
    .line 61
    iget v4, v4, Ljh;->c:I

    .line 62
    .line 63
    if-nez v4, :cond_3

    .line 64
    .line 65
    invoke-virtual {v3}, Llh;->d()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    :cond_3
    if-eqz v4, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v5, v4}, Lvd;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    move-object v4, v1

    .line 81
    :goto_1
    iget-object v5, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 82
    .line 83
    invoke-virtual {v5, v4}, Ln4;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    .line 85
    .line 86
    iget-object v6, p0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 87
    .line 88
    if-eqz v4, :cond_5

    .line 89
    .line 90
    iget-object v4, p0, Lkh;->k:Landroid/content/res/ColorStateList;

    .line 91
    .line 92
    iget-object v7, p0, Lkh;->l:Landroid/graphics/PorterDuff$Mode;

    .line 93
    .line 94
    invoke-static {v6, v5, v4, v7}, Ld40;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 95
    .line 96
    .line 97
    iget-object v4, p0, Lkh;->k:Landroid/content/res/ColorStateList;

    .line 98
    .line 99
    invoke-static {v6, v5, v4}, Ld40;->F(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    invoke-virtual {v3}, Llh;->c()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_6

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    if-eq v4, v1, :cond_7

    .line 121
    .line 122
    invoke-virtual {v5, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    :cond_7
    invoke-virtual {v3}, Llh;->j()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-virtual {v5, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {v3, v1}, Llh;->i(I)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_a

    .line 141
    .line 142
    invoke-virtual {v3}, Llh;->q()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Llh;->h()Lkg;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iput-object p1, p0, Lkh;->u:Lkg;

    .line 150
    .line 151
    if-eqz p1, :cond_8

    .line 152
    .line 153
    if-eqz v2, :cond_8

    .line 154
    .line 155
    sget-object p1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_8

    .line 162
    .line 163
    iget-object p1, p0, Lkh;->u:Lkg;

    .line 164
    .line 165
    new-instance v1, Lb0;

    .line 166
    .line 167
    invoke-direct {v1, p1}, Lb0;-><init>(Lkg;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 171
    .line 172
    .line 173
    :cond_8
    invoke-virtual {v3}, Llh;->f()Landroid/view/View$OnClickListener;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iget-object v1, p0, Lkh;->o:Landroid/view/View$OnLongClickListener;

    .line 178
    .line 179
    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v5, v1}, Ld40;->Q(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lkh;->s:Landroid/widget/EditText;

    .line 186
    .line 187
    if-eqz p1, :cond_9

    .line 188
    .line 189
    invoke-virtual {v3, p1}, Llh;->l(Landroid/widget/EditText;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v3}, Lkh;->j(Llh;)V

    .line 193
    .line 194
    .line 195
    :cond_9
    iget-object p1, p0, Lkh;->k:Landroid/content/res/ColorStateList;

    .line 196
    .line 197
    iget-object v1, p0, Lkh;->l:Landroid/graphics/PorterDuff$Mode;

    .line 198
    .line 199
    invoke-static {v6, v5, p1, v1}, Ld40;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v0}, Lkh;->f(Z)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 207
    .line 208
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v2, "The current box background mode "

    .line 215
    .line 216
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v0, " is not supported by the end icon mode "

    .line 223
    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw p0

    .line 238
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-static {}, Lg9;->a()V

    .line 246
    .line 247
    .line 248
    return-void
.end method

.method public final h(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkh;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x8

    .line 12
    .line 13
    :goto_0
    iget-object v0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lkh;->k()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lkh;->m()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()Z

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final i(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkh;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ln4;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkh;->l()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lkh;->d:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    iget-object v1, p0, Lkh;->e:Landroid/graphics/PorterDuff$Mode;

    .line 12
    .line 13
    iget-object p0, p0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 14
    .line 15
    invoke-static {p0, v0, p1, v1}, Ld40;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final j(Llh;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkh;->s:Landroid/widget/EditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Llh;->e()Landroid/view/View$OnFocusChangeListener;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lkh;->s:Landroid/widget/EditText;

    .line 13
    .line 14
    invoke-virtual {p1}, Llh;->e()Landroid/view/View$OnFocusChangeListener;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Llh;->g()Landroid/view/View$OnFocusChangeListener;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 28
    .line 29
    invoke-virtual {p1}, Llh;->g()Landroid/view/View$OnFocusChangeListener;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lkh;->e()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    move v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    iget-object v3, p0, Lkh;->b:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lkh;->p:Ljava/lang/CharSequence;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-boolean v0, p0, Lkh;->r:Z

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    move v0, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v1

    .line 37
    :goto_1
    invoke-virtual {p0}, Lkh;->d()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lkh;->e()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    :cond_2
    move v1, v2

    .line 52
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkh;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v2, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 12
    .line 13
    iget-boolean v1, v1, Ldm;->q:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v1, 0x8

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lkh;->k()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lkh;->m()V

    .line 34
    .line 35
    .line 36
    iget p0, p0, Lkh;->i:I

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->q()Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lkh;->d()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lkh;->e()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 22
    .line 23
    sget-object v2, Lw50;->a:Ljava/util/WeakHashMap;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 31
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget v3, Lzu;->material_input_text_to_prefix_suffix_padding:I

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iget-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    sget-object v4, Lw50;->a:Ljava/util/WeakHashMap;

    .line 58
    .line 59
    iget-object p0, p0, Lkh;->q:Lt5;

    .line 60
    .line 61
    invoke-virtual {p0, v2, v3, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lkh;->q:Lt5;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lkh;->p:Ljava/lang/CharSequence;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-boolean v2, p0, Lkh;->r:Z

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    move v2, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x8

    .line 19
    .line 20
    :goto_0
    if-eq v1, v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lkh;->b()Llh;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    :cond_1
    invoke-virtual {v1, v3}, Llh;->o(Z)V

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-virtual {p0}, Lkh;->k()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()Z

    .line 41
    .line 42
    .line 43
    return-void
.end method
