.class public Lcom/google/android/material/chip/Chip;
.super Lk3;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lb00;
.implements Landroid/widget/Checkable;


# static fields
.field public static final w:I

.field public static final x:Landroid/graphics/Rect;

.field public static final y:[I

.field public static final z:[I


# instance fields
.field public e:Ll9;

.field public f:Landroid/graphics/drawable/InsetDrawable;

.field public g:Landroid/graphics/drawable/RippleDrawable;

.field public h:Landroid/view/View$OnClickListener;

.field public i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:Ljava/lang/CharSequence;

.field public final r:Lk9;

.field public s:Z

.field public final t:Landroid/graphics/Rect;

.field public final u:Landroid/graphics/RectF;

.field public final v:Li9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lzv;->Widget_MaterialComponents_Chip_Action:I

    .line 2
    .line 3
    sput v0, Lcom/google/android/material/chip/Chip;->w:I

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/material/chip/Chip;->x:Landroid/graphics/Rect;

    .line 11
    .line 12
    const v0, 0x10100a1

    .line 13
    .line 14
    .line 15
    filled-new-array {v0}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/google/android/material/chip/Chip;->y:[I

    .line 20
    .line 21
    const v0, 0x101009f

    .line 22
    .line 23
    .line 24
    filled-new-array {v0}, [I

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/google/android/material/chip/Chip;->z:[I

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 930
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 929
    sget v0, Ltu;->chipStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 1
    sget v4, Lcom/google/android/material/chip/Chip;->w:I

    .line 2
    .line 3
    invoke-static {p1, p2, p3, v4}, Lar;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lk3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->t:Landroid/graphics/Rect;

    .line 16
    .line 17
    new-instance p1, Landroid/graphics/RectF;

    .line 18
    .line 19
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->u:Landroid/graphics/RectF;

    .line 23
    .line 24
    new-instance p1, Li9;

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-direct {p1, v6, p0}, Li9;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->v:Li9;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v7, 0x0

    .line 37
    const v8, 0x800013

    .line 38
    .line 39
    .line 40
    const/4 v9, 0x1

    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v0, "background"

    .line 45
    .line 46
    const-string v1, "http://schemas.android.com/apk/res/android"

    .line 47
    .line 48
    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    const-string v0, "drawableLeft"

    .line 52
    .line 53
    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_1d

    .line 58
    .line 59
    const-string v0, "drawableStart"

    .line 60
    .line 61
    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-nez v0, :cond_1c

    .line 66
    .line 67
    const-string v0, "drawableEnd"

    .line 68
    .line 69
    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v2, "Please set end drawable using R.attr#closeIcon."

    .line 74
    .line 75
    if-nez v0, :cond_1b

    .line 76
    .line 77
    const-string v0, "drawableRight"

    .line 78
    .line 79
    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-nez v0, :cond_1a

    .line 84
    .line 85
    const-string v0, "singleLine"

    .line 86
    .line 87
    invoke-interface {p2, v1, v0, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_19

    .line 92
    .line 93
    const-string v0, "lines"

    .line 94
    .line 95
    invoke-interface {p2, v1, v0, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-ne v0, v9, :cond_19

    .line 100
    .line 101
    const-string v0, "minLines"

    .line 102
    .line 103
    invoke-interface {p2, v1, v0, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-ne v0, v9, :cond_19

    .line 108
    .line 109
    const-string v0, "maxLines"

    .line 110
    .line 111
    invoke-interface {p2, v1, v0, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-ne v0, v9, :cond_19

    .line 116
    .line 117
    const-string v0, "gravity"

    .line 118
    .line 119
    invoke-interface {p2, v1, v0, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 120
    .line 121
    .line 122
    :goto_0
    new-instance v10, Ll9;

    .line 123
    .line 124
    invoke-direct {v10, p1, p2, p3}, Ll9;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    .line 126
    .line 127
    sget-object v2, Lhw;->Chip:[I

    .line 128
    .line 129
    new-array v5, v6, [I

    .line 130
    .line 131
    iget-object v0, v10, Ll9;->e0:Landroid/content/Context;

    .line 132
    .line 133
    move-object v1, p2

    .line 134
    move v3, p3

    .line 135
    invoke-static/range {v0 .. v5}, Lr20;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    sget p3, Lhw;->Chip_shapeAppearance:I

    .line 140
    .line 141
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 142
    .line 143
    .line 144
    move-result p3

    .line 145
    iput-boolean p3, v10, Ll9;->E0:Z

    .line 146
    .line 147
    sget p3, Lhw;->Chip_chipSurfaceColor:I

    .line 148
    .line 149
    iget-object v0, v10, Ll9;->e0:Landroid/content/Context;

    .line 150
    .line 151
    invoke-static {v0, p2, p3}, Lnm;->v(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    iget-object v2, v10, Ll9;->x:Landroid/content/res/ColorStateList;

    .line 156
    .line 157
    if-eq v2, p3, :cond_1

    .line 158
    .line 159
    iput-object p3, v10, Ll9;->x:Landroid/content/res/ColorStateList;

    .line 160
    .line 161
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    invoke-virtual {v10, p3}, Ll9;->onStateChange([I)Z

    .line 166
    .line 167
    .line 168
    :cond_1
    sget p3, Lhw;->Chip_chipBackgroundColor:I

    .line 169
    .line 170
    invoke-static {v0, p2, p3}, Lnm;->v(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    iget-object v2, v10, Ll9;->y:Landroid/content/res/ColorStateList;

    .line 175
    .line 176
    if-eq v2, p3, :cond_2

    .line 177
    .line 178
    iput-object p3, v10, Ll9;->y:Landroid/content/res/ColorStateList;

    .line 179
    .line 180
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    invoke-virtual {v10, p3}, Ll9;->onStateChange([I)Z

    .line 185
    .line 186
    .line 187
    :cond_2
    sget p3, Lhw;->Chip_chipMinHeight:I

    .line 188
    .line 189
    const/4 v2, 0x0

    .line 190
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 191
    .line 192
    .line 193
    move-result p3

    .line 194
    iget v5, v10, Ll9;->z:F

    .line 195
    .line 196
    cmpl-float v5, v5, p3

    .line 197
    .line 198
    if-eqz v5, :cond_3

    .line 199
    .line 200
    iput p3, v10, Ll9;->z:F

    .line 201
    .line 202
    invoke-virtual {v10}, Lxq;->invalidateSelf()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v10}, Ll9;->u()V

    .line 206
    .line 207
    .line 208
    :cond_3
    sget p3, Lhw;->Chip_chipCornerRadius:I

    .line 209
    .line 210
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 211
    .line 212
    .line 213
    move-result p3

    .line 214
    if-eqz p3, :cond_4

    .line 215
    .line 216
    sget p3, Lhw;->Chip_chipCornerRadius:I

    .line 217
    .line 218
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 219
    .line 220
    .line 221
    move-result p3

    .line 222
    invoke-virtual {v10, p3}, Ll9;->A(F)V

    .line 223
    .line 224
    .line 225
    :cond_4
    sget p3, Lhw;->Chip_chipStrokeColor:I

    .line 226
    .line 227
    invoke-static {v0, p2, p3}, Lnm;->v(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 228
    .line 229
    .line 230
    move-result-object p3

    .line 231
    invoke-virtual {v10, p3}, Ll9;->F(Landroid/content/res/ColorStateList;)V

    .line 232
    .line 233
    .line 234
    sget p3, Lhw;->Chip_chipStrokeWidth:I

    .line 235
    .line 236
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 237
    .line 238
    .line 239
    move-result p3

    .line 240
    invoke-virtual {v10, p3}, Ll9;->G(F)V

    .line 241
    .line 242
    .line 243
    sget p3, Lhw;->Chip_rippleColor:I

    .line 244
    .line 245
    invoke-static {v0, p2, p3}, Lnm;->v(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 246
    .line 247
    .line 248
    move-result-object p3

    .line 249
    invoke-virtual {v10, p3}, Ll9;->P(Landroid/content/res/ColorStateList;)V

    .line 250
    .line 251
    .line 252
    sget p3, Lhw;->Chip_android_text:I

    .line 253
    .line 254
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 255
    .line 256
    .line 257
    move-result-object p3

    .line 258
    if-nez p3, :cond_5

    .line 259
    .line 260
    const-string p3, ""

    .line 261
    .line 262
    :cond_5
    iget-object v5, v10, Ll9;->E:Ljava/lang/CharSequence;

    .line 263
    .line 264
    invoke-static {v5, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-nez v5, :cond_6

    .line 269
    .line 270
    iput-object p3, v10, Ll9;->E:Ljava/lang/CharSequence;

    .line 271
    .line 272
    iget-object p3, v10, Ll9;->k0:Lg20;

    .line 273
    .line 274
    iput-boolean v9, p3, Lg20;->d:Z

    .line 275
    .line 276
    invoke-virtual {v10}, Lxq;->invalidateSelf()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v10}, Ll9;->u()V

    .line 280
    .line 281
    .line 282
    :cond_6
    sget p3, Lhw;->Chip_android_textAppearance:I

    .line 283
    .line 284
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    if-eqz v5, :cond_7

    .line 289
    .line 290
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 291
    .line 292
    .line 293
    move-result p3

    .line 294
    if-eqz p3, :cond_7

    .line 295
    .line 296
    new-instance v5, Le20;

    .line 297
    .line 298
    invoke-direct {v5, v0, p3}, Le20;-><init>(Landroid/content/Context;I)V

    .line 299
    .line 300
    .line 301
    goto :goto_1

    .line 302
    :cond_7
    move-object v5, v7

    .line 303
    :goto_1
    sget p3, Lhw;->Chip_android_textSize:I

    .line 304
    .line 305
    iget v11, v5, Le20;->k:F

    .line 306
    .line 307
    invoke-virtual {p2, p3, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 308
    .line 309
    .line 310
    move-result p3

    .line 311
    iput p3, v5, Le20;->k:F

    .line 312
    .line 313
    invoke-virtual {v10, v5}, Ll9;->Q(Le20;)V

    .line 314
    .line 315
    .line 316
    sget p3, Lhw;->Chip_android_ellipsize:I

    .line 317
    .line 318
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 319
    .line 320
    .line 321
    move-result p3

    .line 322
    if-eq p3, v9, :cond_a

    .line 323
    .line 324
    const/4 v5, 0x2

    .line 325
    if-eq p3, v5, :cond_9

    .line 326
    .line 327
    const/4 v5, 0x3

    .line 328
    if-eq p3, v5, :cond_8

    .line 329
    .line 330
    goto :goto_2

    .line 331
    :cond_8
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 332
    .line 333
    iput-object p3, v10, Ll9;->B0:Landroid/text/TextUtils$TruncateAt;

    .line 334
    .line 335
    goto :goto_2

    .line 336
    :cond_9
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 337
    .line 338
    iput-object p3, v10, Ll9;->B0:Landroid/text/TextUtils$TruncateAt;

    .line 339
    .line 340
    goto :goto_2

    .line 341
    :cond_a
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 342
    .line 343
    iput-object p3, v10, Ll9;->B0:Landroid/text/TextUtils$TruncateAt;

    .line 344
    .line 345
    :goto_2
    sget p3, Lhw;->Chip_chipIconVisible:I

    .line 346
    .line 347
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 348
    .line 349
    .line 350
    move-result p3

    .line 351
    invoke-virtual {v10, p3}, Ll9;->E(Z)V

    .line 352
    .line 353
    .line 354
    const-string p3, "http://schemas.android.com/apk/res-auto"

    .line 355
    .line 356
    if-eqz v1, :cond_b

    .line 357
    .line 358
    const-string v5, "chipIconEnabled"

    .line 359
    .line 360
    invoke-interface {v1, p3, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    if-eqz v5, :cond_b

    .line 365
    .line 366
    const-string v5, "chipIconVisible"

    .line 367
    .line 368
    invoke-interface {v1, p3, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    if-nez v5, :cond_b

    .line 373
    .line 374
    sget v5, Lhw;->Chip_chipIconEnabled:I

    .line 375
    .line 376
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 377
    .line 378
    .line 379
    move-result v5

    .line 380
    invoke-virtual {v10, v5}, Ll9;->E(Z)V

    .line 381
    .line 382
    .line 383
    :cond_b
    sget v5, Lhw;->Chip_chipIcon:I

    .line 384
    .line 385
    invoke-static {v0, p2, v5}, Lnm;->z(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    invoke-virtual {v10, v5}, Ll9;->B(Landroid/graphics/drawable/Drawable;)V

    .line 390
    .line 391
    .line 392
    sget v5, Lhw;->Chip_chipIconTint:I

    .line 393
    .line 394
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    if-eqz v5, :cond_c

    .line 399
    .line 400
    sget v5, Lhw;->Chip_chipIconTint:I

    .line 401
    .line 402
    invoke-static {v0, p2, v5}, Lnm;->v(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    invoke-virtual {v10, v5}, Ll9;->D(Landroid/content/res/ColorStateList;)V

    .line 407
    .line 408
    .line 409
    :cond_c
    sget v5, Lhw;->Chip_chipIconSize:I

    .line 410
    .line 411
    const/high16 v11, -0x40800000    # -1.0f

    .line 412
    .line 413
    invoke-virtual {p2, v5, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    invoke-virtual {v10, v5}, Ll9;->C(F)V

    .line 418
    .line 419
    .line 420
    sget v5, Lhw;->Chip_closeIconVisible:I

    .line 421
    .line 422
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    invoke-virtual {v10, v5}, Ll9;->M(Z)V

    .line 427
    .line 428
    .line 429
    if-eqz v1, :cond_d

    .line 430
    .line 431
    const-string v5, "closeIconEnabled"

    .line 432
    .line 433
    invoke-interface {v1, p3, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    if-eqz v5, :cond_d

    .line 438
    .line 439
    const-string v5, "closeIconVisible"

    .line 440
    .line 441
    invoke-interface {v1, p3, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    if-nez v5, :cond_d

    .line 446
    .line 447
    sget v5, Lhw;->Chip_closeIconEnabled:I

    .line 448
    .line 449
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 450
    .line 451
    .line 452
    move-result v5

    .line 453
    invoke-virtual {v10, v5}, Ll9;->M(Z)V

    .line 454
    .line 455
    .line 456
    :cond_d
    sget v5, Lhw;->Chip_closeIcon:I

    .line 457
    .line 458
    invoke-static {v0, p2, v5}, Lnm;->z(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    invoke-virtual {v10, v5}, Ll9;->H(Landroid/graphics/drawable/Drawable;)V

    .line 463
    .line 464
    .line 465
    sget v5, Lhw;->Chip_closeIconTint:I

    .line 466
    .line 467
    invoke-static {v0, p2, v5}, Lnm;->v(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 468
    .line 469
    .line 470
    move-result-object v5

    .line 471
    invoke-virtual {v10, v5}, Ll9;->L(Landroid/content/res/ColorStateList;)V

    .line 472
    .line 473
    .line 474
    sget v5, Lhw;->Chip_closeIconSize:I

    .line 475
    .line 476
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 477
    .line 478
    .line 479
    move-result v5

    .line 480
    invoke-virtual {v10, v5}, Ll9;->J(F)V

    .line 481
    .line 482
    .line 483
    sget v5, Lhw;->Chip_android_checkable:I

    .line 484
    .line 485
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 486
    .line 487
    .line 488
    move-result v5

    .line 489
    invoke-virtual {v10, v5}, Ll9;->w(Z)V

    .line 490
    .line 491
    .line 492
    sget v5, Lhw;->Chip_checkedIconVisible:I

    .line 493
    .line 494
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 495
    .line 496
    .line 497
    move-result v5

    .line 498
    invoke-virtual {v10, v5}, Ll9;->z(Z)V

    .line 499
    .line 500
    .line 501
    if-eqz v1, :cond_e

    .line 502
    .line 503
    const-string v5, "checkedIconEnabled"

    .line 504
    .line 505
    invoke-interface {v1, p3, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v5

    .line 509
    if-eqz v5, :cond_e

    .line 510
    .line 511
    const-string v5, "checkedIconVisible"

    .line 512
    .line 513
    invoke-interface {v1, p3, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object p3

    .line 517
    if-nez p3, :cond_e

    .line 518
    .line 519
    sget p3, Lhw;->Chip_checkedIconEnabled:I

    .line 520
    .line 521
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 522
    .line 523
    .line 524
    move-result p3

    .line 525
    invoke-virtual {v10, p3}, Ll9;->z(Z)V

    .line 526
    .line 527
    .line 528
    :cond_e
    sget p3, Lhw;->Chip_checkedIcon:I

    .line 529
    .line 530
    invoke-static {v0, p2, p3}, Lnm;->z(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 531
    .line 532
    .line 533
    move-result-object p3

    .line 534
    invoke-virtual {v10, p3}, Ll9;->x(Landroid/graphics/drawable/Drawable;)V

    .line 535
    .line 536
    .line 537
    sget p3, Lhw;->Chip_checkedIconTint:I

    .line 538
    .line 539
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 540
    .line 541
    .line 542
    move-result p3

    .line 543
    if-eqz p3, :cond_f

    .line 544
    .line 545
    sget p3, Lhw;->Chip_checkedIconTint:I

    .line 546
    .line 547
    invoke-static {v0, p2, p3}, Lnm;->v(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 548
    .line 549
    .line 550
    move-result-object p3

    .line 551
    invoke-virtual {v10, p3}, Ll9;->y(Landroid/content/res/ColorStateList;)V

    .line 552
    .line 553
    .line 554
    :cond_f
    sget p3, Lhw;->Chip_showMotionSpec:I

    .line 555
    .line 556
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 557
    .line 558
    .line 559
    move-result v5

    .line 560
    if-eqz v5, :cond_10

    .line 561
    .line 562
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 563
    .line 564
    .line 565
    move-result p3

    .line 566
    if-eqz p3, :cond_10

    .line 567
    .line 568
    invoke-static {v0, p3}, Lgs;->a(Landroid/content/Context;I)Lgs;

    .line 569
    .line 570
    .line 571
    move-result-object p3

    .line 572
    goto :goto_3

    .line 573
    :cond_10
    move-object p3, v7

    .line 574
    :goto_3
    iput-object p3, v10, Ll9;->U:Lgs;

    .line 575
    .line 576
    sget p3, Lhw;->Chip_hideMotionSpec:I

    .line 577
    .line 578
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 579
    .line 580
    .line 581
    move-result v5

    .line 582
    if-eqz v5, :cond_11

    .line 583
    .line 584
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 585
    .line 586
    .line 587
    move-result p3

    .line 588
    if-eqz p3, :cond_11

    .line 589
    .line 590
    invoke-static {v0, p3}, Lgs;->a(Landroid/content/Context;I)Lgs;

    .line 591
    .line 592
    .line 593
    move-result-object v7

    .line 594
    :cond_11
    iput-object v7, v10, Ll9;->V:Lgs;

    .line 595
    .line 596
    sget p3, Lhw;->Chip_chipStartPadding:I

    .line 597
    .line 598
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 599
    .line 600
    .line 601
    move-result p3

    .line 602
    iget v0, v10, Ll9;->W:F

    .line 603
    .line 604
    cmpl-float v0, v0, p3

    .line 605
    .line 606
    if-eqz v0, :cond_12

    .line 607
    .line 608
    iput p3, v10, Ll9;->W:F

    .line 609
    .line 610
    invoke-virtual {v10}, Lxq;->invalidateSelf()V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v10}, Ll9;->u()V

    .line 614
    .line 615
    .line 616
    :cond_12
    sget p3, Lhw;->Chip_iconStartPadding:I

    .line 617
    .line 618
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 619
    .line 620
    .line 621
    move-result p3

    .line 622
    invoke-virtual {v10, p3}, Ll9;->O(F)V

    .line 623
    .line 624
    .line 625
    sget p3, Lhw;->Chip_iconEndPadding:I

    .line 626
    .line 627
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 628
    .line 629
    .line 630
    move-result p3

    .line 631
    invoke-virtual {v10, p3}, Ll9;->N(F)V

    .line 632
    .line 633
    .line 634
    sget p3, Lhw;->Chip_textStartPadding:I

    .line 635
    .line 636
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 637
    .line 638
    .line 639
    move-result p3

    .line 640
    iget v0, v10, Ll9;->Z:F

    .line 641
    .line 642
    cmpl-float v0, v0, p3

    .line 643
    .line 644
    if-eqz v0, :cond_13

    .line 645
    .line 646
    iput p3, v10, Ll9;->Z:F

    .line 647
    .line 648
    invoke-virtual {v10}, Lxq;->invalidateSelf()V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v10}, Ll9;->u()V

    .line 652
    .line 653
    .line 654
    :cond_13
    sget p3, Lhw;->Chip_textEndPadding:I

    .line 655
    .line 656
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 657
    .line 658
    .line 659
    move-result p3

    .line 660
    iget v0, v10, Ll9;->a0:F

    .line 661
    .line 662
    cmpl-float v0, v0, p3

    .line 663
    .line 664
    if-eqz v0, :cond_14

    .line 665
    .line 666
    iput p3, v10, Ll9;->a0:F

    .line 667
    .line 668
    invoke-virtual {v10}, Lxq;->invalidateSelf()V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v10}, Ll9;->u()V

    .line 672
    .line 673
    .line 674
    :cond_14
    sget p3, Lhw;->Chip_closeIconStartPadding:I

    .line 675
    .line 676
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 677
    .line 678
    .line 679
    move-result p3

    .line 680
    invoke-virtual {v10, p3}, Ll9;->K(F)V

    .line 681
    .line 682
    .line 683
    sget p3, Lhw;->Chip_closeIconEndPadding:I

    .line 684
    .line 685
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 686
    .line 687
    .line 688
    move-result p3

    .line 689
    invoke-virtual {v10, p3}, Ll9;->I(F)V

    .line 690
    .line 691
    .line 692
    sget p3, Lhw;->Chip_chipEndPadding:I

    .line 693
    .line 694
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 695
    .line 696
    .line 697
    move-result p3

    .line 698
    iget v0, v10, Ll9;->d0:F

    .line 699
    .line 700
    cmpl-float v0, v0, p3

    .line 701
    .line 702
    if-eqz v0, :cond_15

    .line 703
    .line 704
    iput p3, v10, Ll9;->d0:F

    .line 705
    .line 706
    invoke-virtual {v10}, Lxq;->invalidateSelf()V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v10}, Ll9;->u()V

    .line 710
    .line 711
    .line 712
    :cond_15
    sget p3, Lhw;->Chip_android_maxWidth:I

    .line 713
    .line 714
    const v0, 0x7fffffff

    .line 715
    .line 716
    .line 717
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 718
    .line 719
    .line 720
    move-result p3

    .line 721
    iput p3, v10, Ll9;->D0:I

    .line 722
    .line 723
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 724
    .line 725
    .line 726
    sget-object v2, Lhw;->Chip:[I

    .line 727
    .line 728
    new-array v5, v6, [I

    .line 729
    .line 730
    invoke-static {p1, v1, v3, v4}, Lr20;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 731
    .line 732
    .line 733
    move-object v0, p1

    .line 734
    invoke-static/range {v0 .. v5}, Lr20;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 738
    .line 739
    .line 740
    move-result-object p1

    .line 741
    sget p2, Lhw;->Chip_ensureMinTouchTargetSize:I

    .line 742
    .line 743
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 744
    .line 745
    .line 746
    move-result p2

    .line 747
    iput-boolean p2, p0, Lcom/google/android/material/chip/Chip;->n:Z

    .line 748
    .line 749
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 750
    .line 751
    .line 752
    move-result-object p2

    .line 753
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 754
    .line 755
    .line 756
    move-result-object p2

    .line 757
    const/high16 p3, 0x42400000    # 48.0f

    .line 758
    .line 759
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 760
    .line 761
    .line 762
    move-result-object p2

    .line 763
    invoke-static {v9, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 764
    .line 765
    .line 766
    move-result p2

    .line 767
    float-to-double p2, p2

    .line 768
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    .line 769
    .line 770
    .line 771
    move-result-wide p2

    .line 772
    double-to-float p2, p2

    .line 773
    sget p3, Lhw;->Chip_chipMinTouchTargetSize:I

    .line 774
    .line 775
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 776
    .line 777
    .line 778
    move-result p2

    .line 779
    float-to-double p2, p2

    .line 780
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    .line 781
    .line 782
    .line 783
    move-result-wide p2

    .line 784
    double-to-int p2, p2

    .line 785
    iput p2, p0, Lcom/google/android/material/chip/Chip;->p:I

    .line 786
    .line 787
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 788
    .line 789
    .line 790
    invoke-virtual {p0, v10}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Ll9;)V

    .line 791
    .line 792
    .line 793
    invoke-static {p0}, Ll50;->i(Landroid/view/View;)F

    .line 794
    .line 795
    .line 796
    move-result p1

    .line 797
    invoke-virtual {v10, p1}, Lxq;->i(F)V

    .line 798
    .line 799
    .line 800
    sget-object v2, Lhw;->Chip:[I

    .line 801
    .line 802
    new-array v5, v6, [I

    .line 803
    .line 804
    invoke-static {v0, v1, v3, v4}, Lr20;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 805
    .line 806
    .line 807
    invoke-static/range {v0 .. v5}, Lr20;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 811
    .line 812
    .line 813
    move-result-object p1

    .line 814
    sget p2, Lhw;->Chip_shapeAppearance:I

    .line 815
    .line 816
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 817
    .line 818
    .line 819
    move-result p2

    .line 820
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 821
    .line 822
    .line 823
    new-instance p1, Lk9;

    .line 824
    .line 825
    invoke-direct {p1, p0, p0}, Lk9;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    .line 826
    .line 827
    .line 828
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->r:Lk9;

    .line 829
    .line 830
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()V

    .line 831
    .line 832
    .line 833
    if-nez p2, :cond_16

    .line 834
    .line 835
    new-instance p1, Lj9;

    .line 836
    .line 837
    invoke-direct {p1, p0}, Lj9;-><init>(Lcom/google/android/material/chip/Chip;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 841
    .line 842
    .line 843
    :cond_16
    iget-boolean p1, p0, Lcom/google/android/material/chip/Chip;->j:Z

    .line 844
    .line 845
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 846
    .line 847
    .line 848
    iget-object p1, v10, Ll9;->E:Ljava/lang/CharSequence;

    .line 849
    .line 850
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    .line 852
    .line 853
    iget-object p1, v10, Ll9;->B0:Landroid/text/TextUtils$TruncateAt;

    .line 854
    .line 855
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 859
    .line 860
    .line 861
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 862
    .line 863
    iget-boolean p1, p1, Ll9;->C0:Z

    .line 864
    .line 865
    if-nez p1, :cond_17

    .line 866
    .line 867
    invoke-virtual {p0, v9}, Lcom/google/android/material/chip/Chip;->setLines(I)V

    .line 868
    .line 869
    .line 870
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 871
    .line 872
    .line 873
    :cond_17
    invoke-virtual {p0, v8}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    .line 877
    .line 878
    .line 879
    iget-boolean p1, p0, Lcom/google/android/material/chip/Chip;->n:Z

    .line 880
    .line 881
    if-eqz p1, :cond_18

    .line 882
    .line 883
    iget p1, p0, Lcom/google/android/material/chip/Chip;->p:I

    .line 884
    .line 885
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 886
    .line 887
    .line 888
    :cond_18
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 889
    .line 890
    .line 891
    move-result p1

    .line 892
    iput p1, p0, Lcom/google/android/material/chip/Chip;->o:I

    .line 893
    .line 894
    new-instance p1, Lh9;

    .line 895
    .line 896
    invoke-direct {p1, p0}, Lh9;-><init>(Lcom/google/android/material/chip/Chip;)V

    .line 897
    .line 898
    .line 899
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 900
    .line 901
    .line 902
    return-void

    .line 903
    :cond_19
    const-string p0, "Chip does not support multi-line text"

    .line 904
    .line 905
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    throw v7

    .line 909
    :cond_1a
    invoke-static {v2}, Lg9;->e(Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    throw v7

    .line 913
    :cond_1b
    invoke-static {v2}, Lg9;->e(Ljava/lang/String;)V

    .line 914
    .line 915
    .line 916
    throw v7

    .line 917
    :cond_1c
    const-string p0, "Please set start drawable using R.attr#chipIcon."

    .line 918
    .line 919
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    throw v7

    .line 923
    :cond_1d
    const-string p0, "Please set left drawable using R.attr#chipIcon."

    .line 924
    .line 925
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    throw v7
.end method

.method public static synthetic a(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->u:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ll9;->T()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget v2, p0, Ll9;->d0:F

    .line 32
    .line 33
    iget v3, p0, Ll9;->c0:F

    .line 34
    .line 35
    add-float/2addr v2, v3

    .line 36
    iget v3, p0, Ll9;->O:F

    .line 37
    .line 38
    add-float/2addr v2, v3

    .line 39
    iget v3, p0, Ll9;->b0:F

    .line 40
    .line 41
    add-float/2addr v2, v3

    .line 42
    iget v3, p0, Ll9;->a0:F

    .line 43
    .line 44
    add-float/2addr v2, v3

    .line 45
    invoke-static {p0}, Lrf;->a(Landroid/graphics/drawable/Drawable;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_0

    .line 50
    .line 51
    iget p0, v1, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    int-to-float p0, p0

    .line 54
    iput p0, v0, Landroid/graphics/RectF;->right:F

    .line 55
    .line 56
    sub-float/2addr p0, v2

    .line 57
    iput p0, v0, Landroid/graphics/RectF;->left:F

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget p0, v1, Landroid/graphics/Rect;->left:I

    .line 61
    .line 62
    int-to-float p0, p0

    .line 63
    iput p0, v0, Landroid/graphics/RectF;->left:F

    .line 64
    .line 65
    add-float/2addr p0, v2

    .line 66
    iput p0, v0, Landroid/graphics/RectF;->right:F

    .line 67
    .line 68
    :goto_0
    iget p0, v1, Landroid/graphics/Rect;->top:I

    .line 69
    .line 70
    int-to-float p0, p0

    .line 71
    iput p0, v0, Landroid/graphics/RectF;->top:F

    .line 72
    .line 73
    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    .line 74
    .line 75
    int-to-float p0, p0

    .line 76
    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    .line 77
    .line 78
    :cond_1
    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 6
    .line 7
    float-to-int v1, v1

    .line 8
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 9
    .line 10
    float-to-int v2, v2

    .line 11
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 12
    .line 13
    float-to-int v3, v3

    .line 14
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 15
    .line 16
    float-to-int v0, v0

    .line 17
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->t:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method private getTextAppearance()Le20;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ll9;->k0:Lg20;

    .line 6
    .line 7
    iget-object p0, p0, Lg20;->f:Le20;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method private setCloseIconHovered(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->l:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->l:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->k:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 10

    .line 1
    iput p1, p0, Lcom/google/android/material/chip/Chip;->p:I

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iput-object v1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    float-to-int p1, p1

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 37
    .line 38
    iget v0, v0, Ll9;->z:F

    .line 39
    .line 40
    float-to-int v0, v0

    .line 41
    sub-int v0, p1, v0

    .line 42
    .line 43
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 48
    .line 49
    invoke-virtual {v3}, Ll9;->getIntrinsicWidth()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    sub-int v3, p1, v3

    .line 54
    .line 55
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-gtz v3, :cond_4

    .line 60
    .line 61
    if-gtz v0, :cond_4

    .line 62
    .line 63
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iput-object v1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    .line 70
    .line 71
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    float-to-int p1, p1

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    .line 83
    .line 84
    .line 85
    :cond_2
    return-void

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    if-lez v3, :cond_5

    .line 91
    .line 92
    div-int/lit8 v3, v3, 0x2

    .line 93
    .line 94
    move v6, v3

    .line 95
    goto :goto_0

    .line 96
    :cond_5
    move v6, v2

    .line 97
    :goto_0
    if-lez v0, :cond_6

    .line 98
    .line 99
    div-int/lit8 v2, v0, 0x2

    .line 100
    .line 101
    :cond_6
    move v7, v2

    .line 102
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    .line 103
    .line 104
    if-eqz v0, :cond_7

    .line 105
    .line 106
    new-instance v0, Landroid/graphics/Rect;

    .line 107
    .line 108
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 114
    .line 115
    .line 116
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 117
    .line 118
    if-ne v1, v7, :cond_7

    .line 119
    .line 120
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 121
    .line 122
    if-ne v1, v7, :cond_7

    .line 123
    .line 124
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 125
    .line 126
    if-ne v1, v6, :cond_7

    .line 127
    .line 128
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 129
    .line 130
    if-ne v0, v6, :cond_7

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinHeight()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eq v0, p1, :cond_8

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 143
    .line 144
    .line 145
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinWidth()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eq v0, p1, :cond_9

    .line 150
    .line 151
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 152
    .line 153
    .line 154
    :cond_9
    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    .line 155
    .line 156
    iget-object v5, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 157
    .line 158
    move v8, v6

    .line 159
    move v9, v7

    .line 160
    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 161
    .line 162
    .line 163
    iput-object v4, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public final c()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Ll9;->L:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, v0, Ll9;->K:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->r:Lk9;

    .line 20
    .line 21
    invoke-static {p0, v0}, Lw50;->l(Landroid/view/View;La0;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/google/android/material/chip/Chip;->s:Z

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    invoke-static {p0, v0}, Lw50;->l(Landroid/view/View;La0;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/google/android/material/chip/Chip;->s:Z

    .line 34
    .line 35
    return-void
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->s:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->r:Lk9;

    .line 11
    .line 12
    iget-object v1, v0, Lk9;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v2, :cond_7

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x7

    .line 34
    const/16 v5, 0x100

    .line 35
    .line 36
    const/16 v6, 0x80

    .line 37
    .line 38
    if-eq v1, v2, :cond_4

    .line 39
    .line 40
    const/16 v2, 0x9

    .line 41
    .line 42
    if-eq v1, v2, :cond_4

    .line 43
    .line 44
    const/16 v2, 0xa

    .line 45
    .line 46
    if-eq v1, v2, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget v1, v0, Lk9;->m:I

    .line 50
    .line 51
    const/high16 v2, -0x80000000

    .line 52
    .line 53
    if-eq v1, v2, :cond_7

    .line 54
    .line 55
    if-ne v1, v2, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    iput v2, v0, Lk9;->m:I

    .line 59
    .line 60
    invoke-virtual {v0, v2, v6}, Lk9;->p(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v5}, Lk9;->p(II)V

    .line 64
    .line 65
    .line 66
    return v4

    .line 67
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iget-object v1, v0, Lk9;->n:Lcom/google/android/material/chip/Chip;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/google/android/material/chip/Chip;->c()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    invoke-direct {v1}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1, p0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_5

    .line 92
    .line 93
    move v3, v4

    .line 94
    :cond_5
    iget p0, v0, Lk9;->m:I

    .line 95
    .line 96
    if-ne p0, v3, :cond_6

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_6
    iput v3, v0, Lk9;->m:I

    .line 100
    .line 101
    invoke-virtual {v0, v3, v6}, Lk9;->p(II)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p0, v5}, Lk9;->p(II)V

    .line 105
    .line 106
    .line 107
    return v4

    .line 108
    :cond_7
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_8

    .line 113
    .line 114
    :goto_1
    return v4

    .line 115
    :cond_8
    return v3
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->s:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->r:Lk9;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/high16 v3, -0x80000000

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v1, v4, :cond_b

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/16 v5, 0x3d

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    if-eq v1, v5, :cond_9

    .line 33
    .line 34
    const/16 v5, 0x42

    .line 35
    .line 36
    if-eq v1, v5, :cond_5

    .line 37
    .line 38
    packed-switch v1, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_b

    .line 48
    .line 49
    const/16 v7, 0x13

    .line 50
    .line 51
    if-eq v1, v7, :cond_2

    .line 52
    .line 53
    const/16 v7, 0x15

    .line 54
    .line 55
    if-eq v1, v7, :cond_1

    .line 56
    .line 57
    const/16 v7, 0x16

    .line 58
    .line 59
    if-eq v1, v7, :cond_3

    .line 60
    .line 61
    const/16 v5, 0x82

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/16 v5, 0x11

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/16 v5, 0x21

    .line 68
    .line 69
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    add-int/2addr v1, v4

    .line 74
    move v7, v2

    .line 75
    :goto_1
    if-ge v2, v1, :cond_4

    .line 76
    .line 77
    invoke-virtual {v0, v5, v6}, Lk9;->m(ILandroid/graphics/Rect;)Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_4

    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    move v7, v4

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    move v2, v7

    .line 88
    goto :goto_3

    .line 89
    :cond_5
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_b

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_b

    .line 100
    .line 101
    iget v1, v0, Lk9;->l:I

    .line 102
    .line 103
    if-eq v1, v3, :cond_8

    .line 104
    .line 105
    iget-object v5, v0, Lk9;->n:Lcom/google/android/material/chip/Chip;

    .line 106
    .line 107
    if-nez v1, :cond_6

    .line 108
    .line 109
    invoke-virtual {v5}, Landroid/view/View;->performClick()Z

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    if-ne v1, v4, :cond_8

    .line 114
    .line 115
    invoke-virtual {v5, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v5, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;

    .line 119
    .line 120
    if-eqz v1, :cond_7

    .line 121
    .line 122
    invoke-interface {v1, v5}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 123
    .line 124
    .line 125
    :cond_7
    iget-boolean v1, v5, Lcom/google/android/material/chip/Chip;->s:Z

    .line 126
    .line 127
    if-eqz v1, :cond_8

    .line 128
    .line 129
    iget-object v1, v5, Lcom/google/android/material/chip/Chip;->r:Lk9;

    .line 130
    .line 131
    invoke-virtual {v1, v4, v4}, Lk9;->p(II)V

    .line 132
    .line 133
    .line 134
    :cond_8
    :goto_2
    move v2, v4

    .line 135
    goto :goto_3

    .line 136
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_a

    .line 141
    .line 142
    const/4 v1, 0x2

    .line 143
    invoke-virtual {v0, v1, v6}, Lk9;->m(ILandroid/graphics/Rect;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    goto :goto_3

    .line 148
    :cond_a
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_b

    .line 153
    .line 154
    invoke-virtual {v0, v4, v6}, Lk9;->m(ILandroid/graphics/Rect;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    :cond_b
    :goto_3
    if-eqz v2, :cond_c

    .line 159
    .line 160
    iget v0, v0, Lk9;->l:I

    .line 161
    .line 162
    if-eq v0, v3, :cond_c

    .line 163
    .line 164
    return v4

    .line 165
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    return p0

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final drawableStateChanged()V
    .locals 5

    .line 1
    invoke-super {p0}, Lk3;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    iget-object v0, v0, Ll9;->L:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-static {v0}, Ll9;->t(Landroid/graphics/drawable/Drawable;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_9

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->m:Z

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->l:Z

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->k:Z

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    :cond_3
    new-array v2, v2, [I

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    const v3, 0x101009e

    .line 58
    .line 59
    .line 60
    aput v3, v2, v1

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    move v3, v1

    .line 65
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->m:Z

    .line 66
    .line 67
    if-eqz v4, :cond_5

    .line 68
    .line 69
    const v4, 0x101009c

    .line 70
    .line 71
    .line 72
    aput v4, v2, v3

    .line 73
    .line 74
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    :cond_5
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->l:Z

    .line 77
    .line 78
    if-eqz v4, :cond_6

    .line 79
    .line 80
    const v4, 0x1010367

    .line 81
    .line 82
    .line 83
    aput v4, v2, v3

    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    :cond_6
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->k:Z

    .line 88
    .line 89
    if-eqz v4, :cond_7

    .line 90
    .line 91
    const v4, 0x10100a7

    .line 92
    .line 93
    .line 94
    aput v4, v2, v3

    .line 95
    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    :cond_7
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_8

    .line 103
    .line 104
    const v4, 0x10100a1

    .line 105
    .line 106
    .line 107
    aput v4, v2, v3

    .line 108
    .line 109
    :cond_8
    iget-object v3, v0, Ll9;->y0:[I

    .line 110
    .line 111
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_9

    .line 116
    .line 117
    iput-object v2, v0, Ll9;->y0:[I

    .line 118
    .line 119
    invoke-virtual {v0}, Ll9;->T()Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_9

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1, v2}, Ll9;->v([I[I)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    :cond_9
    if-eqz v1, :cond_a

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 136
    .line 137
    .line 138
    :cond_a
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 4
    .line 5
    iget-object v1, v1, Ll9;->D:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    invoke-static {v1}, Ld40;->M(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/RippleDrawable;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/RippleDrawable;

    .line 27
    .line 28
    sget-object v1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v1, v0, Ll9;->d0:F

    .line 17
    .line 18
    iget v2, v0, Ll9;->a0:F

    .line 19
    .line 20
    add-float/2addr v1, v2

    .line 21
    invoke-virtual {v0}, Ll9;->q()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-float/2addr v0, v1

    .line 26
    float-to-int v0, v0

    .line 27
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 28
    .line 29
    iget v2, v1, Ll9;->W:F

    .line 30
    .line 31
    iget v3, v1, Ll9;->Z:F

    .line 32
    .line 33
    add-float/2addr v2, v3

    .line 34
    invoke-virtual {v1}, Ll9;->p()F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-float/2addr v1, v2

    .line 39
    float-to-int v1, v1

    .line 40
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    new-instance v2, Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 52
    .line 53
    .line 54
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 55
    .line 56
    add-int/2addr v1, v3

    .line 57
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 58
    .line 59
    add-int/2addr v0, v2

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    sget-object v4, Lw50;->a:Ljava/util/WeakHashMap;

    .line 69
    .line 70
    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Le20;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->v:Li9;

    .line 26
    .line 27
    invoke-virtual {v1, v2, v0, p0}, Le20;->e(Landroid/content/Context;Landroid/text/TextPaint;Lns;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->q:Ljava/lang/CharSequence;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 13
    .line 14
    const-string v1, "android.widget.Button"

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, v0, Ll9;->Q:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_2
    const-string p0, "android.view.View"

    .line 34
    .line 35
    return-object p0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    return-object v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ll9;->S:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ll9;->T:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ll9;->y:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getChipCornerRadius()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Ll9;->r()F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    return-object p0
.end method

.method public getChipEndPadding()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Ll9;->d0:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Ll9;->G:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    return-object v0
.end method

.method public getChipIconSize()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Ll9;->I:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ll9;->H:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getChipMinHeight()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Ll9;->z:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getChipStartPadding()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Ll9;->W:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ll9;->B:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getChipStrokeWidth()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Ll9;->C:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Ll9;->L:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ll9;->P:Landroid/text/SpannableStringBuilder;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getCloseIconEndPadding()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Ll9;->c0:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getCloseIconSize()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Ll9;->O:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getCloseIconStartPadding()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Ll9;->b0:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ll9;->N:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ll9;->B0:Landroid/text/TextUtils$TruncateAt;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final getFocusedRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->r:Lk9;

    .line 6
    .line 7
    iget v1, v0, Lk9;->l:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    iget v0, v0, Lk9;->k:I

    .line 13
    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public getHideMotionSpec()Lgs;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ll9;->V:Lgs;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getIconEndPadding()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Ll9;->Y:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getIconStartPadding()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Ll9;->X:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ll9;->D:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getShapeAppearanceModel()Lqz;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    iget-object p0, p0, Lxq;->a:Lwq;

    .line 4
    .line 5
    iget-object p0, p0, Lwq;->a:Lqz;

    .line 6
    .line 7
    return-object p0
.end method

.method public getShowMotionSpec()Lgs;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ll9;->U:Lgs;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getTextEndPadding()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Ll9;->a0:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getTextStartPadding()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Ll9;->Z:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 5
    .line 6
    invoke-static {p0, v0}, Ld40;->R(Landroid/view/View;Lxq;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/google/android/material/chip/Chip;->y:[I

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    iget-boolean p0, p0, Ll9;->Q:Z

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    sget-object p0, Lcom/google/android/material/chip/Chip;->z:[I

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 29
    .line 30
    .line 31
    :cond_1
    return-object p1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->s:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->r:Lk9;

    .line 9
    .line 10
    iget v0, p0, Lk9;->l:I

    .line 11
    .line 12
    const/high16 v1, -0x80000000

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lk9;->j(I)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p2, p3}, Lk9;->m(ILandroid/graphics/Rect;)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getAccessibilityClassName()Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, v0, Ll9;->Q:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/16 p1, 0x3ea

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/material/chip/Chip;->o:I

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/material/chip/Chip;->o:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    if-eq v0, v2, :cond_2

    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    if-eq v0, v4, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    if-eq v0, v1, :cond_5

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z

    .line 35
    .line 36
    if-eqz v0, :cond_7

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    move v0, v2

    .line 44
    goto :goto_3

    .line 45
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z

    .line 46
    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->s:Z

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->r:Lk9;

    .line 64
    .line 65
    invoke-virtual {v0, v2, v2}, Lk9;->p(II)V

    .line 66
    .line 67
    .line 68
    :cond_4
    move v0, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_5
    move v0, v3

    .line 71
    :goto_1
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_6
    if-eqz v1, :cond_7

    .line 76
    .line 77
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_7
    :goto_2
    move v0, v3

    .line 82
    :goto_3
    if-nez v0, :cond_9

    .line 83
    .line 84
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_8

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_8
    return v3

    .line 92
    :cond_9
    :goto_4
    return v2
.end method

.method public setAccessibilityClassName(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->q:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/RippleDrawable;

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/RippleDrawable;

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-super {p0, p1}, Lk3;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ll9;->w(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Ll9;->w(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->j:Z

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, v0, Ll9;->Q:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ll9;->x(Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lvd;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Ll9;->x(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ll9;->y(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lvd;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Ll9;->y(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Ll9;->z(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Ll9;->z(Z)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->y:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Ll9;->y:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ll9;->onStateChange([I)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lvd;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Ll9;->y:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    .line 15
    iput-object p1, p0, Ll9;->y:Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Ll9;->onStateChange([I)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ll9;->A(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Ll9;->A(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setChipDrawable(Ll9;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Ll9;->A0:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p1, Ll9;->C0:Z

    .line 19
    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p1, Ll9;->A0:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    iget p1, p0, Lcom/google/android/material/chip/Chip;->p:I

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->b(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Ll9;->d0:F

    .line 6
    .line 7
    cmpl-float v0, v0, p1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Ll9;->d0:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lxq;->invalidateSelf()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ll9;->u()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Ll9;->d0:F

    .line 16
    .line 17
    cmpl-float v0, v0, p1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput p1, p0, Ll9;->d0:F

    .line 22
    .line 23
    invoke-virtual {p0}, Lxq;->invalidateSelf()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ll9;->u()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ll9;->B(Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setChipIconResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lvd;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Ll9;->B(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ll9;->C(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Ll9;->C(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ll9;->D(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lvd;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Ll9;->D(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Ll9;->E(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Ll9;->E(Z)V

    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Ll9;->z:F

    .line 6
    .line 7
    cmpl-float v0, v0, p1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Ll9;->z:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lxq;->invalidateSelf()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ll9;->u()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Ll9;->z:F

    .line 16
    .line 17
    cmpl-float v0, v0, p1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput p1, p0, Ll9;->z:F

    .line 22
    .line 23
    invoke-virtual {p0}, Lxq;->invalidateSelf()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ll9;->u()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Ll9;->W:F

    .line 6
    .line 7
    cmpl-float v0, v0, p1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Ll9;->W:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lxq;->invalidateSelf()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ll9;->u()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Ll9;->W:F

    .line 16
    .line 17
    cmpl-float v0, v0, p1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput p1, p0, Ll9;->W:F

    .line 22
    .line 23
    invoke-virtual {p0}, Lxq;->invalidateSelf()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ll9;->u()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ll9;->F(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lvd;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Ll9;->F(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ll9;->G(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Ll9;->G(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ll9;->H(Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->P:Landroid/text/SpannableStringBuilder;

    .line 6
    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    sget-object v0, Ln7;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    sget-object v0, Ln7;->e:Ln7;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Ln7;->d:Ln7;

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v1, Lf20;->a:Ls7;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ln7;->c(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Ll9;->P:Landroid/text/SpannableStringBuilder;

    .line 37
    .line 38
    invoke-virtual {p0}, Lxq;->invalidateSelf()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ll9;->I(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Ll9;->I(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1, p1}, Lvd;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ll9;->H(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ll9;->J(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Ll9;->J(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ll9;->K(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Ll9;->K(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ll9;->L(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lvd;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Ll9;->L(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1}, Ll9;->M(Z)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()V

    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Lk3;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "Please set end drawable using R.attr#closeIcon."

    .line 10
    .line 11
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const-string p0, "Please set start drawable using R.attr#chipIcon."

    .line 16
    .line 17
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Lk3;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "Please set end drawable using R.attr#closeIcon."

    .line 10
    .line 11
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const-string p0, "Please set start drawable using R.attr#chipIcon."

    .line 16
    .line 17
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "Please set end drawable using R.attr#closeIcon."

    .line 10
    .line 11
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const-string p0, "Please set start drawable using R.attr#chipIcon."

    .line 16
    .line 17
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 22
    :cond_0
    const-string p0, "Please set end drawable using R.attr#closeIcon."

    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_1
    const-string p0, "Please set start drawable using R.attr#chipIcon."

    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "Please set end drawable using R.attr#closeIcon."

    .line 10
    .line 11
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const-string p0, "Please set start drawable using R.attr#chipIcon."

    .line 16
    .line 17
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 22
    :cond_0
    const-string p0, "Please set right drawable using R.attr#closeIcon."

    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_1
    const-string p0, "Please set left drawable using R.attr#chipIcon."

    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lxq;->i(F)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 7
    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    iput-object p1, p0, Ll9;->B0:Landroid/text/TextUtils$TruncateAt;

    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void

    .line 20
    :cond_2
    const-string p0, "Text within a chip are not allowed to scroll."

    .line 21
    .line 22
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->n:Z

    .line 2
    .line 3
    iget p1, p0, Lcom/google/android/material/chip/Chip;->p:I

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->b(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    const v0, 0x800013

    .line 2
    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setHideMotionSpec(Lgs;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Ll9;->V:Lgs;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lgs;->a(Landroid/content/Context;I)Lgs;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Ll9;->V:Lgs;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ll9;->N(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Ll9;->N(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ll9;->O(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Ll9;->O(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setInternalOnCheckedChangeListener(Lsq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsq;",
            ")V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setLines(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-gt p1, v0, :cond_0

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, "Chip does not support multi-line text"

    .line 9
    .line 10
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-gt p1, v0, :cond_0

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, "Chip does not support multi-line text"

    .line 9
    .line 10
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Ll9;->D0:I

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-gt p1, v0, :cond_0

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMinLines(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, "Chip does not support multi-line text"

    .line 9
    .line 10
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ll9;->P(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1, p1}, Lvd;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ll9;->P(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lqz;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lxq;->setShapeAppearanceModel(Lqz;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowMotionSpec(Lgs;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Ll9;->U:Lgs;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lgs;->a(Landroid/content/Context;I)Lgs;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Ll9;->U:Lgs;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const-string p0, "Chip does not support multi-line text"

    .line 8
    .line 9
    invoke-static {p0}, Lg9;->e(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    :cond_1
    iget-boolean v0, v0, Ll9;->C0:Z

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_2
    move-object v0, p1

    .line 17
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 21
    .line 22
    if-eqz p0, :cond_3

    .line 23
    .line 24
    iget-object p2, p0, Ll9;->E:Ljava/lang/CharSequence;

    .line 25
    .line 26
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_3

    .line 31
    .line 32
    iput-object p1, p0, Ll9;->E:Ljava/lang/CharSequence;

    .line 33
    .line 34
    iget-object p1, p0, Ll9;->k0:Lg20;

    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p1, Lg20;->d:Z

    .line 38
    .line 39
    invoke-virtual {p0}, Lxq;->invalidateSelf()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ll9;->u()V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_1
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 3

    .line 25
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 26
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    if-eqz v0, :cond_0

    .line 27
    new-instance v1, Le20;

    iget-object v2, v0, Ll9;->e0:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Le20;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ll9;->Q(Le20;)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance v0, Le20;

    .line 9
    .line 10
    iget-object v1, p1, Ll9;->e0:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v0, v1, p2}, Le20;-><init>(Landroid/content/Context;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ll9;->Q(Le20;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setTextAppearance(Le20;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Ll9;->Q(Le20;)V

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Ll9;->a0:F

    .line 6
    .line 7
    cmpl-float v0, v0, p1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Ll9;->a0:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lxq;->invalidateSelf()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ll9;->u()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Ll9;->a0:F

    .line 16
    .line 17
    cmpl-float v0, v0, p1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput p1, p0, Ll9;->a0:F

    .line 22
    .line 23
    invoke-virtual {p0}, Lxq;->invalidateSelf()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ll9;->u()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final setTextSize(IF)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {p1, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object p2, v0, Ll9;->k0:Lg20;

    .line 21
    .line 22
    iget-object v1, p2, Lg20;->f:Le20;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iput p1, v1, Le20;->k:F

    .line 27
    .line 28
    iget-object p2, p2, Lg20;->a:Landroid/text/TextPaint;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ll9;->u()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lxq;->invalidateSelf()V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Ll9;->Z:F

    .line 6
    .line 7
    cmpl-float v0, v0, p1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Ll9;->Z:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lxq;->invalidateSelf()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ll9;->u()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll9;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll9;->e0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Ll9;->Z:F

    .line 16
    .line 17
    cmpl-float v0, v0, p1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput p1, p0, Ll9;->Z:F

    .line 22
    .line 23
    invoke-virtual {p0}, Lxq;->invalidateSelf()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ll9;->u()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
