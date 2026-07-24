.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field public static final C0:I

.field public static final D0:[[I


# instance fields
.field public A:Landroid/content/res/ColorStateList;

.field public A0:Z

.field public B:Landroid/content/res/ColorStateList;

.field public B0:Z

.field public C:Z

.field public D:Ljava/lang/CharSequence;

.field public E:Z

.field public F:Lxq;

.field public G:Lxq;

.field public H:Landroid/graphics/drawable/StateListDrawable;

.field public I:Z

.field public J:Lxq;

.field public K:Lxq;

.field public L:Lqz;

.field public M:Z

.field public final N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public final V:Landroid/graphics/Rect;

.field public final W:Landroid/graphics/Rect;

.field public final a:Landroid/widget/FrameLayout;

.field public final a0:Landroid/graphics/RectF;

.field public final b:Lb10;

.field public b0:Landroid/graphics/Typeface;

.field public final c:Lkh;

.field public c0:Landroid/graphics/drawable/ColorDrawable;

.field public d:Landroid/widget/EditText;

.field public d0:I

.field public e:Ljava/lang/CharSequence;

.field public final e0:Ljava/util/LinkedHashSet;

.field public f:I

.field public f0:Landroid/graphics/drawable/ColorDrawable;

.field public g:I

.field public g0:I

.field public h:I

.field public h0:Landroid/graphics/drawable/Drawable;

.field public i:I

.field public i0:Landroid/content/res/ColorStateList;

.field public final j:Ldm;

.field public j0:Landroid/content/res/ColorStateList;

.field public k:Z

.field public k0:I

.field public l:I

.field public l0:I

.field public m:Z

.field public m0:I

.field public n:Lj20;

.field public n0:Landroid/content/res/ColorStateList;

.field public o:Lt5;

.field public o0:I

.field public p:I

.field public p0:I

.field public q:I

.field public q0:I

.field public r:Ljava/lang/CharSequence;

.field public r0:I

.field public s:Z

.field public s0:I

.field public t:Lt5;

.field public t0:I

.field public u:Landroid/content/res/ColorStateList;

.field public u0:Z

.field public v:I

.field public final v0:Laa;

.field public w:Luh;

.field public w0:Z

.field public x:Luh;

.field public x0:Z

.field public y:Landroid/content/res/ColorStateList;

.field public y0:Landroid/animation/ValueAnimator;

.field public z:Landroid/content/res/ColorStateList;

.field public z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Lzv;->Widget_Design_TextInputLayout:I

    .line 2
    .line 3
    sput v0, Lcom/google/android/material/textfield/TextInputLayout;->C0:I

    .line 4
    .line 5
    const v0, 0x10100a7

    .line 6
    .line 7
    .line 8
    filled-new-array {v0}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [I

    .line 14
    .line 15
    filled-new-array {v0, v1}, [[I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/google/android/material/textfield/TextInputLayout;->D0:[[I

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 925
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 924
    sget v0, Ltu;->textInputStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move/from16 v4, p3

    .line 6
    .line 7
    sget v5, Lcom/google/android/material/textfield/TextInputLayout;->C0:I

    .line 8
    .line 9
    move-object/from16 v1, p1

    .line 10
    .line 11
    invoke-static {v1, v2, v4, v5}, Lar;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1, v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    .line 17
    .line 18
    const/4 v7, -0x1

    .line 19
    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:I

    .line 20
    .line 21
    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    .line 22
    .line 23
    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    .line 24
    .line 25
    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    .line 26
    .line 27
    new-instance v1, Ldm;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Ldm;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 33
    .line 34
    new-instance v1, Lg9;

    .line 35
    .line 36
    const/16 v3, 0xd

    .line 37
    .line 38
    invoke-direct {v1, v3}, Lg9;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lj20;

    .line 42
    .line 43
    new-instance v1, Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/Rect;

    .line 49
    .line 50
    new-instance v1, Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->W:Landroid/graphics/Rect;

    .line 56
    .line 57
    new-instance v1, Landroid/graphics/RectF;

    .line 58
    .line 59
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    .line 63
    .line 64
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Ljava/util/LinkedHashSet;

    .line 70
    .line 71
    new-instance v1, Laa;

    .line 72
    .line 73
    invoke-direct {v1, v0}, Laa;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Laa;

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    iput-boolean v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const/4 v9, 0x1

    .line 86
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 93
    .line 94
    .line 95
    new-instance v10, Landroid/widget/FrameLayout;

    .line 96
    .line 97
    invoke-direct {v10, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    iput-object v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    .line 101
    .line 102
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 103
    .line 104
    .line 105
    sget-object v6, La3;->a:Landroid/view/animation/LinearInterpolator;

    .line 106
    .line 107
    iput-object v6, v1, Laa;->Q:Landroid/animation/TimeInterpolator;

    .line 108
    .line 109
    invoke-virtual {v1, v8}, Laa;->h(Z)V

    .line 110
    .line 111
    .line 112
    iput-object v6, v1, Laa;->P:Landroid/animation/TimeInterpolator;

    .line 113
    .line 114
    invoke-virtual {v1, v8}, Laa;->h(Z)V

    .line 115
    .line 116
    .line 117
    iget v6, v1, Laa;->g:I

    .line 118
    .line 119
    const v11, 0x800033

    .line 120
    .line 121
    .line 122
    if-eq v6, v11, :cond_0

    .line 123
    .line 124
    iput v11, v1, Laa;->g:I

    .line 125
    .line 126
    invoke-virtual {v1, v8}, Laa;->h(Z)V

    .line 127
    .line 128
    .line 129
    :cond_0
    sget-object v1, Lhw;->TextInputLayout:[I

    .line 130
    .line 131
    sget v6, Lhw;->TextInputLayout_counterTextAppearance:I

    .line 132
    .line 133
    sget v11, Lhw;->TextInputLayout_counterOverflowTextAppearance:I

    .line 134
    .line 135
    sget v12, Lhw;->TextInputLayout_errorTextAppearance:I

    .line 136
    .line 137
    sget v13, Lhw;->TextInputLayout_helperTextTextAppearance:I

    .line 138
    .line 139
    sget v14, Lhw;->TextInputLayout_hintTextAppearance:I

    .line 140
    .line 141
    filled-new-array {v6, v11, v12, v13, v14}, [I

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-static {v3, v2, v4, v5}, Lr20;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 146
    .line 147
    .line 148
    move-object/from16 v16, v3

    .line 149
    .line 150
    move-object v3, v1

    .line 151
    move-object/from16 v1, v16

    .line 152
    .line 153
    invoke-static/range {v1 .. v6}, Lr20;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 154
    .line 155
    .line 156
    new-instance v6, Ly2;

    .line 157
    .line 158
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-direct {v6, v1, v3}, Ly2;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 163
    .line 164
    .line 165
    new-instance v11, Lb10;

    .line 166
    .line 167
    invoke-direct {v11, v0, v6}, Lb10;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Ly2;)V

    .line 168
    .line 169
    .line 170
    iput-object v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 171
    .line 172
    sget v12, Lhw;->TextInputLayout_hintEnabled:I

    .line 173
    .line 174
    invoke-virtual {v3, v12, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    iput-boolean v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 179
    .line 180
    sget v12, Lhw;->TextInputLayout_android_hint:I

    .line 181
    .line 182
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    sget v12, Lhw;->TextInputLayout_hintAnimationEnabled:I

    .line 190
    .line 191
    invoke-virtual {v3, v12, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    iput-boolean v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Z

    .line 196
    .line 197
    sget v12, Lhw;->TextInputLayout_expandedHintEnabled:I

    .line 198
    .line 199
    invoke-virtual {v3, v12, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    iput-boolean v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Z

    .line 204
    .line 205
    sget v12, Lhw;->TextInputLayout_android_minEms:I

    .line 206
    .line 207
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    if-eqz v12, :cond_1

    .line 212
    .line 213
    sget v12, Lhw;->TextInputLayout_android_minEms:I

    .line 214
    .line 215
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 216
    .line 217
    .line 218
    move-result v12

    .line 219
    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setMinEms(I)V

    .line 220
    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_1
    sget v12, Lhw;->TextInputLayout_android_minWidth:I

    .line 224
    .line 225
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    if-eqz v12, :cond_2

    .line 230
    .line 231
    sget v12, Lhw;->TextInputLayout_android_minWidth:I

    .line 232
    .line 233
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 234
    .line 235
    .line 236
    move-result v12

    .line 237
    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    .line 238
    .line 239
    .line 240
    :cond_2
    :goto_0
    sget v12, Lhw;->TextInputLayout_android_maxEms:I

    .line 241
    .line 242
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    if-eqz v12, :cond_3

    .line 247
    .line 248
    sget v12, Lhw;->TextInputLayout_android_maxEms:I

    .line 249
    .line 250
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 251
    .line 252
    .line 253
    move-result v12

    .line 254
    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxEms(I)V

    .line 255
    .line 256
    .line 257
    goto :goto_1

    .line 258
    :cond_3
    sget v12, Lhw;->TextInputLayout_android_maxWidth:I

    .line 259
    .line 260
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    if-eqz v12, :cond_4

    .line 265
    .line 266
    sget v12, Lhw;->TextInputLayout_android_maxWidth:I

    .line 267
    .line 268
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 269
    .line 270
    .line 271
    move-result v12

    .line 272
    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    .line 273
    .line 274
    .line 275
    :cond_4
    :goto_1
    invoke-static {v1, v2, v4, v5}, Lqz;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lpz;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual {v2}, Lpz;->a()Lqz;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 284
    .line 285
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    sget v4, Lzu;->mtrl_textinput_box_label_cutout_padding:I

    .line 290
    .line 291
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    .line 296
    .line 297
    sget v2, Lhw;->TextInputLayout_boxCollapsedPaddingTop:I

    .line 298
    .line 299
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 304
    .line 305
    sget v2, Lhw;->TextInputLayout_boxStrokeWidth:I

    .line 306
    .line 307
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    sget v5, Lzu;->mtrl_textinput_box_stroke_width_default:I

    .line 312
    .line 313
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 322
    .line 323
    sget v2, Lhw;->TextInputLayout_boxStrokeWidthFocused:I

    .line 324
    .line 325
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    sget v5, Lzu;->mtrl_textinput_box_stroke_width_focused:I

    .line 330
    .line 331
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    .line 340
    .line 341
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 342
    .line 343
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 344
    .line 345
    sget v2, Lhw;->TextInputLayout_boxCornerRadiusTopStart:I

    .line 346
    .line 347
    const/high16 v4, -0x40800000    # -1.0f

    .line 348
    .line 349
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    sget v5, Lhw;->TextInputLayout_boxCornerRadiusTopEnd:I

    .line 354
    .line 355
    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    sget v12, Lhw;->TextInputLayout_boxCornerRadiusBottomEnd:I

    .line 360
    .line 361
    invoke-virtual {v3, v12, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 362
    .line 363
    .line 364
    move-result v12

    .line 365
    sget v13, Lhw;->TextInputLayout_boxCornerRadiusBottomStart:I

    .line 366
    .line 367
    invoke-virtual {v3, v13, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    iget-object v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 372
    .line 373
    invoke-virtual {v13}, Lqz;->e()Lpz;

    .line 374
    .line 375
    .line 376
    move-result-object v13

    .line 377
    const/4 v14, 0x0

    .line 378
    cmpl-float v15, v2, v14

    .line 379
    .line 380
    if-ltz v15, :cond_5

    .line 381
    .line 382
    new-instance v15, Le;

    .line 383
    .line 384
    invoke-direct {v15, v2}, Le;-><init>(F)V

    .line 385
    .line 386
    .line 387
    iput-object v15, v13, Lpz;->e:Lvc;

    .line 388
    .line 389
    :cond_5
    cmpl-float v2, v5, v14

    .line 390
    .line 391
    if-ltz v2, :cond_6

    .line 392
    .line 393
    new-instance v2, Le;

    .line 394
    .line 395
    invoke-direct {v2, v5}, Le;-><init>(F)V

    .line 396
    .line 397
    .line 398
    iput-object v2, v13, Lpz;->f:Lvc;

    .line 399
    .line 400
    :cond_6
    cmpl-float v2, v12, v14

    .line 401
    .line 402
    if-ltz v2, :cond_7

    .line 403
    .line 404
    new-instance v2, Le;

    .line 405
    .line 406
    invoke-direct {v2, v12}, Le;-><init>(F)V

    .line 407
    .line 408
    .line 409
    iput-object v2, v13, Lpz;->g:Lvc;

    .line 410
    .line 411
    :cond_7
    cmpl-float v2, v4, v14

    .line 412
    .line 413
    if-ltz v2, :cond_8

    .line 414
    .line 415
    new-instance v2, Le;

    .line 416
    .line 417
    invoke-direct {v2, v4}, Le;-><init>(F)V

    .line 418
    .line 419
    .line 420
    iput-object v2, v13, Lpz;->h:Lvc;

    .line 421
    .line 422
    :cond_8
    invoke-virtual {v13}, Lpz;->a()Lqz;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 427
    .line 428
    sget v2, Lhw;->TextInputLayout_boxBackgroundColor:I

    .line 429
    .line 430
    invoke-static {v1, v6, v2}, Lnm;->u(Landroid/content/Context;Ly2;I)Landroid/content/res/ColorStateList;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    if-eqz v2, :cond_a

    .line 435
    .line 436
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 441
    .line 442
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 443
    .line 444
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    const v5, 0x1010367

    .line 449
    .line 450
    .line 451
    const v12, -0x101009e

    .line 452
    .line 453
    .line 454
    if-eqz v4, :cond_9

    .line 455
    .line 456
    filled-new-array {v12}, [I

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    invoke-virtual {v2, v4, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 461
    .line 462
    .line 463
    move-result v4

    .line 464
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    .line 465
    .line 466
    const v4, 0x101009c

    .line 467
    .line 468
    .line 469
    const v12, 0x101009e

    .line 470
    .line 471
    .line 472
    filled-new-array {v4, v12}, [I

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    invoke-virtual {v2, v4, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    .line 481
    .line 482
    filled-new-array {v5, v12}, [I

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    invoke-virtual {v2, v4, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->r0:I

    .line 491
    .line 492
    goto :goto_2

    .line 493
    :cond_9
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 494
    .line 495
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    .line 496
    .line 497
    sget v2, Lwu;->mtrl_filled_background_color:I

    .line 498
    .line 499
    invoke-static {v1, v2}, Lvd;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    filled-new-array {v12}, [I

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    invoke-virtual {v2, v4, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    .line 512
    .line 513
    filled-new-array {v5}, [I

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    invoke-virtual {v2, v4, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 518
    .line 519
    .line 520
    move-result v2

    .line 521
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->r0:I

    .line 522
    .line 523
    goto :goto_2

    .line 524
    :cond_a
    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 525
    .line 526
    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 527
    .line 528
    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    .line 529
    .line 530
    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    .line 531
    .line 532
    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->r0:I

    .line 533
    .line 534
    :goto_2
    sget v2, Lhw;->TextInputLayout_android_textColorHint:I

    .line 535
    .line 536
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    if-eqz v2, :cond_b

    .line 541
    .line 542
    sget v2, Lhw;->TextInputLayout_android_textColorHint:I

    .line 543
    .line 544
    invoke-virtual {v6, v2}, Ly2;->f(I)Landroid/content/res/ColorStateList;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    .line 549
    .line 550
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    .line 551
    .line 552
    :cond_b
    sget v2, Lhw;->TextInputLayout_boxStrokeColor:I

    .line 553
    .line 554
    invoke-static {v1, v6, v2}, Lnm;->u(Landroid/content/Context;Ly2;I)Landroid/content/res/ColorStateList;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    sget v4, Lhw;->TextInputLayout_boxStrokeColor:I

    .line 559
    .line 560
    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 561
    .line 562
    .line 563
    move-result v4

    .line 564
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 565
    .line 566
    sget v4, Lwu;->mtrl_textinput_default_box_stroke_color:I

    .line 567
    .line 568
    invoke-static {v1, v4}, Ljc;->a(Landroid/content/Context;I)I

    .line 569
    .line 570
    .line 571
    move-result v4

    .line 572
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    .line 573
    .line 574
    sget v4, Lwu;->mtrl_textinput_disabled_color:I

    .line 575
    .line 576
    invoke-static {v1, v4}, Ljc;->a(Landroid/content/Context;I)I

    .line 577
    .line 578
    .line 579
    move-result v4

    .line 580
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    .line 581
    .line 582
    sget v4, Lwu;->mtrl_textinput_hovered_box_stroke_color:I

    .line 583
    .line 584
    invoke-static {v1, v4}, Ljc;->a(Landroid/content/Context;I)I

    .line 585
    .line 586
    .line 587
    move-result v4

    .line 588
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->l0:I

    .line 589
    .line 590
    if-eqz v2, :cond_c

    .line 591
    .line 592
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    .line 593
    .line 594
    .line 595
    :cond_c
    sget v2, Lhw;->TextInputLayout_boxStrokeErrorColor:I

    .line 596
    .line 597
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 598
    .line 599
    .line 600
    move-result v2

    .line 601
    if-eqz v2, :cond_d

    .line 602
    .line 603
    sget v2, Lhw;->TextInputLayout_boxStrokeErrorColor:I

    .line 604
    .line 605
    invoke-static {v1, v6, v2}, Lnm;->u(Landroid/content/Context;Ly2;I)Landroid/content/res/ColorStateList;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V

    .line 610
    .line 611
    .line 612
    :cond_d
    sget v1, Lhw;->TextInputLayout_hintTextAppearance:I

    .line 613
    .line 614
    invoke-virtual {v3, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 615
    .line 616
    .line 617
    move-result v1

    .line 618
    if-eq v1, v7, :cond_e

    .line 619
    .line 620
    sget v1, Lhw;->TextInputLayout_hintTextAppearance:I

    .line 621
    .line 622
    invoke-virtual {v3, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextAppearance(I)V

    .line 627
    .line 628
    .line 629
    :cond_e
    sget v1, Lhw;->TextInputLayout_cursorColor:I

    .line 630
    .line 631
    invoke-virtual {v6, v1}, Ly2;->f(I)Landroid/content/res/ColorStateList;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/content/res/ColorStateList;

    .line 636
    .line 637
    sget v1, Lhw;->TextInputLayout_cursorErrorColor:I

    .line 638
    .line 639
    invoke-virtual {v6, v1}, Ly2;->f(I)Landroid/content/res/ColorStateList;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 644
    .line 645
    sget v1, Lhw;->TextInputLayout_errorTextAppearance:I

    .line 646
    .line 647
    invoke-virtual {v3, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 648
    .line 649
    .line 650
    move-result v1

    .line 651
    sget v2, Lhw;->TextInputLayout_errorContentDescription:I

    .line 652
    .line 653
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    sget v4, Lhw;->TextInputLayout_errorAccessibilityLiveRegion:I

    .line 658
    .line 659
    invoke-virtual {v3, v4, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 660
    .line 661
    .line 662
    move-result v4

    .line 663
    sget v5, Lhw;->TextInputLayout_errorEnabled:I

    .line 664
    .line 665
    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 666
    .line 667
    .line 668
    move-result v5

    .line 669
    sget v12, Lhw;->TextInputLayout_helperTextTextAppearance:I

    .line 670
    .line 671
    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 672
    .line 673
    .line 674
    move-result v12

    .line 675
    sget v13, Lhw;->TextInputLayout_helperTextEnabled:I

    .line 676
    .line 677
    invoke-virtual {v3, v13, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 678
    .line 679
    .line 680
    move-result v13

    .line 681
    sget v14, Lhw;->TextInputLayout_helperText:I

    .line 682
    .line 683
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 684
    .line 685
    .line 686
    move-result-object v14

    .line 687
    sget v15, Lhw;->TextInputLayout_placeholderTextAppearance:I

    .line 688
    .line 689
    invoke-virtual {v3, v15, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 690
    .line 691
    .line 692
    move-result v15

    .line 693
    sget v9, Lhw;->TextInputLayout_placeholderText:I

    .line 694
    .line 695
    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 696
    .line 697
    .line 698
    move-result-object v9

    .line 699
    sget v7, Lhw;->TextInputLayout_counterEnabled:I

    .line 700
    .line 701
    invoke-virtual {v3, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 702
    .line 703
    .line 704
    move-result v7

    .line 705
    sget v8, Lhw;->TextInputLayout_counterMaxLength:I

    .line 706
    .line 707
    move-object/from16 p2, v14

    .line 708
    .line 709
    const/4 v14, -0x1

    .line 710
    invoke-virtual {v3, v8, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 711
    .line 712
    .line 713
    move-result v8

    .line 714
    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 715
    .line 716
    .line 717
    sget v8, Lhw;->TextInputLayout_counterTextAppearance:I

    .line 718
    .line 719
    const/4 v14, 0x0

    .line 720
    invoke-virtual {v3, v8, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 721
    .line 722
    .line 723
    move-result v8

    .line 724
    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 725
    .line 726
    sget v8, Lhw;->TextInputLayout_counterOverflowTextAppearance:I

    .line 727
    .line 728
    invoke-virtual {v3, v8, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 729
    .line 730
    .line 731
    move-result v8

    .line 732
    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 733
    .line 734
    sget v8, Lhw;->TextInputLayout_boxBackgroundMode:I

    .line 735
    .line 736
    invoke-virtual {v3, v8, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 737
    .line 738
    .line 739
    move-result v8

    .line 740
    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorContentDescription(Ljava/lang/CharSequence;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorAccessibilityLiveRegion(I)V

    .line 747
    .line 748
    .line 749
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 750
    .line 751
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextAppearance(I)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextTextAppearance(I)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextAppearance(I)V

    .line 758
    .line 759
    .line 760
    iget v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 761
    .line 762
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextAppearance(I)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v0, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v0, v15}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    .line 769
    .line 770
    .line 771
    sget v1, Lhw;->TextInputLayout_errorTextColor:I

    .line 772
    .line 773
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 774
    .line 775
    .line 776
    move-result v1

    .line 777
    if-eqz v1, :cond_f

    .line 778
    .line 779
    sget v1, Lhw;->TextInputLayout_errorTextColor:I

    .line 780
    .line 781
    invoke-virtual {v6, v1}, Ly2;->f(I)Landroid/content/res/ColorStateList;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextColor(Landroid/content/res/ColorStateList;)V

    .line 786
    .line 787
    .line 788
    :cond_f
    sget v1, Lhw;->TextInputLayout_helperTextTextColor:I

    .line 789
    .line 790
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 791
    .line 792
    .line 793
    move-result v1

    .line 794
    if-eqz v1, :cond_10

    .line 795
    .line 796
    sget v1, Lhw;->TextInputLayout_helperTextTextColor:I

    .line 797
    .line 798
    invoke-virtual {v6, v1}, Ly2;->f(I)Landroid/content/res/ColorStateList;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    .line 803
    .line 804
    .line 805
    :cond_10
    sget v1, Lhw;->TextInputLayout_hintTextColor:I

    .line 806
    .line 807
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 808
    .line 809
    .line 810
    move-result v1

    .line 811
    if-eqz v1, :cond_11

    .line 812
    .line 813
    sget v1, Lhw;->TextInputLayout_hintTextColor:I

    .line 814
    .line 815
    invoke-virtual {v6, v1}, Ly2;->f(I)Landroid/content/res/ColorStateList;

    .line 816
    .line 817
    .line 818
    move-result-object v1

    .line 819
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 820
    .line 821
    .line 822
    :cond_11
    sget v1, Lhw;->TextInputLayout_counterTextColor:I

    .line 823
    .line 824
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 825
    .line 826
    .line 827
    move-result v1

    .line 828
    if-eqz v1, :cond_12

    .line 829
    .line 830
    sget v1, Lhw;->TextInputLayout_counterTextColor:I

    .line 831
    .line 832
    invoke-virtual {v6, v1}, Ly2;->f(I)Landroid/content/res/ColorStateList;

    .line 833
    .line 834
    .line 835
    move-result-object v1

    .line 836
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextColor(Landroid/content/res/ColorStateList;)V

    .line 837
    .line 838
    .line 839
    :cond_12
    sget v1, Lhw;->TextInputLayout_counterOverflowTextColor:I

    .line 840
    .line 841
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 842
    .line 843
    .line 844
    move-result v1

    .line 845
    if-eqz v1, :cond_13

    .line 846
    .line 847
    sget v1, Lhw;->TextInputLayout_counterOverflowTextColor:I

    .line 848
    .line 849
    invoke-virtual {v6, v1}, Ly2;->f(I)Landroid/content/res/ColorStateList;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V

    .line 854
    .line 855
    .line 856
    :cond_13
    sget v1, Lhw;->TextInputLayout_placeholderTextColor:I

    .line 857
    .line 858
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 859
    .line 860
    .line 861
    move-result v1

    .line 862
    if-eqz v1, :cond_14

    .line 863
    .line 864
    sget v1, Lhw;->TextInputLayout_placeholderTextColor:I

    .line 865
    .line 866
    invoke-virtual {v6, v1}, Ly2;->f(I)Landroid/content/res/ColorStateList;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    .line 871
    .line 872
    .line 873
    :cond_14
    new-instance v1, Lkh;

    .line 874
    .line 875
    invoke-direct {v1, v0, v6}, Lkh;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Ly2;)V

    .line 876
    .line 877
    .line 878
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 879
    .line 880
    sget v2, Lhw;->TextInputLayout_android_enabled:I

    .line 881
    .line 882
    const/4 v4, 0x1

    .line 883
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 884
    .line 885
    .line 886
    move-result v2

    .line 887
    invoke-virtual {v6}, Ly2;->r()V

    .line 888
    .line 889
    .line 890
    const/4 v3, 0x2

    .line 891
    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 892
    .line 893
    .line 894
    invoke-static {v0, v4}, Ln50;->m(Landroid/view/View;I)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 898
    .line 899
    .line 900
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 904
    .line 905
    .line 906
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 907
    .line 908
    .line 909
    invoke-virtual {v0, v13}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 913
    .line 914
    .line 915
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    .line 916
    .line 917
    .line 918
    move-object/from16 v1, p2

    .line 919
    .line 920
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 921
    .line 922
    .line 923
    return-void
.end method

.method private getEditTextBoxBackground()Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/widget/AutoCompleteTextView;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 16
    .line 17
    sget v1, Ltu;->colorControlHighlight:I

    .line 18
    .line 19
    invoke-static {v0, v1}, Lvd;->p(Landroid/view/View;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v3, 0x2

    .line 27
    const v4, 0x3dcccccd    # 0.1f

    .line 28
    .line 29
    .line 30
    sget-object v5, Lcom/google/android/material/textfield/TextInputLayout;->D0:[[I

    .line 31
    .line 32
    if-ne v1, v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 39
    .line 40
    sget v6, Ltu;->colorSurface:I

    .line 41
    .line 42
    const-string v7, "TextInputLayout"

    .line 43
    .line 44
    invoke-static {v6, v1, v7}, Ld40;->K(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    .line 49
    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    invoke-static {v1, v7}, Ljc;->a(Landroid/content/Context;I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget v1, v6, Landroid/util/TypedValue;->data:I

    .line 58
    .line 59
    :goto_0
    new-instance v6, Lxq;

    .line 60
    .line 61
    iget-object v7, p0, Lxq;->a:Lwq;

    .line 62
    .line 63
    iget-object v7, v7, Lwq;->a:Lqz;

    .line 64
    .line 65
    invoke-direct {v6, v7}, Lxq;-><init>(Lqz;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1, v4}, Lvd;->D(IIF)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v4, 0x0

    .line 73
    filled-new-array {v0, v4}, [I

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 78
    .line 79
    invoke-direct {v8, v5, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v8}, Lxq;->j(Landroid/content/res/ColorStateList;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v1}, Lxq;->setTint(I)V

    .line 86
    .line 87
    .line 88
    filled-new-array {v0, v1}, [I

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 93
    .line 94
    invoke-direct {v1, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Lxq;

    .line 98
    .line 99
    iget-object v5, p0, Lxq;->a:Lwq;

    .line 100
    .line 101
    iget-object v5, v5, Lwq;->a:Lqz;

    .line 102
    .line 103
    invoke-direct {v0, v5}, Lxq;-><init>(Lqz;)V

    .line 104
    .line 105
    .line 106
    const/4 v5, -0x1

    .line 107
    invoke-virtual {v0, v5}, Lxq;->setTint(I)V

    .line 108
    .line 109
    .line 110
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    .line 111
    .line 112
    invoke-direct {v5, v1, v6, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    .line 114
    .line 115
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    aput-object v5, v0, v4

    .line 118
    .line 119
    aput-object p0, v0, v2

    .line 120
    .line 121
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    .line 122
    .line 123
    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_2
    if-ne v1, v2, :cond_3

    .line 128
    .line 129
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 130
    .line 131
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 132
    .line 133
    invoke-static {v0, p0, v4}, Lvd;->D(IIF)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    filled-new-array {v0, p0}, [I

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    new-instance v0, Landroid/content/res/ColorStateList;

    .line 142
    .line 143
    invoke-direct {v0, v5, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 144
    .line 145
    .line 146
    new-instance p0, Landroid/graphics/drawable/RippleDrawable;

    .line 147
    .line 148
    invoke-direct {p0, v0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 149
    .line 150
    .line 151
    return-object p0

    .line 152
    :cond_3
    const/4 p0, 0x0

    .line 153
    return-object p0

    .line 154
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 155
    .line 156
    return-object p0
.end method

.method private getOrCreateFilledDropDownMenuBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Landroid/graphics/drawable/StateListDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Landroid/graphics/drawable/StateListDrawable;

    .line 11
    .line 12
    const v1, 0x10100aa

    .line 13
    .line 14
    .line 15
    filled-new-array {v1}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getOrCreateOutlinedDropDownMenuBackground()Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Landroid/graphics/drawable/StateListDrawable;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    new-array v2, v1, [I

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->f(Z)Lxq;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Landroid/graphics/drawable/StateListDrawable;

    .line 39
    .line 40
    return-object p0
.end method

.method private getOrCreateOutlinedDropDownMenuBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Lxq;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->f(Z)Lxq;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Lxq;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Lxq;

    .line 13
    .line 14
    return-object p0
.end method

.method public static k(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    check-cast v2, Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-static {v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->k(Landroid/view/ViewGroup;Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconMode()I

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:I

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMinEms(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxEms(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    .line 35
    .line 36
    .line 37
    :goto_1
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Z

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    .line 41
    .line 42
    .line 43
    new-instance v1, Li20;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Li20;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Li20;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Laa;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Laa;->m(Landroid/graphics/Typeface;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iget v3, v2, Laa;->h:F

    .line 69
    .line 70
    cmpl-float v3, v3, v1

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    iput v1, v2, Laa;->h:F

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Laa;->h(Z)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/widget/TextView;->getLetterSpacing()F

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iget v3, v2, Laa;->W:F

    .line 86
    .line 87
    cmpl-float v3, v3, v1

    .line 88
    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    iput v1, v2, Laa;->W:F

    .line 92
    .line 93
    invoke-virtual {v2, v0}, Laa;->h(Z)V

    .line 94
    .line 95
    .line 96
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/widget/TextView;->getGravity()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    and-int/lit8 v3, v1, -0x71

    .line 103
    .line 104
    or-int/lit8 v3, v3, 0x30

    .line 105
    .line 106
    iget v4, v2, Laa;->g:I

    .line 107
    .line 108
    if-eq v4, v3, :cond_4

    .line 109
    .line 110
    iput v3, v2, Laa;->g:I

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Laa;->h(Z)V

    .line 113
    .line 114
    .line 115
    :cond_4
    iget v3, v2, Laa;->f:I

    .line 116
    .line 117
    if-eq v3, v1, :cond_5

    .line 118
    .line 119
    iput v1, v2, Laa;->f:I

    .line 120
    .line 121
    invoke-virtual {v2, v0}, Laa;->h(Z)V

    .line 122
    .line 123
    .line 124
    :cond_5
    sget-object v1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:I

    .line 131
    .line 132
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 133
    .line 134
    new-instance v2, Lh20;

    .line 135
    .line 136
    invoke-direct {v2, p0, p1}, Lh20;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/EditText;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    .line 143
    .line 144
    if-nez v1, :cond_6

    .line 145
    .line 146
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    .line 153
    .line 154
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 155
    .line 156
    const/4 v2, 0x1

    .line 157
    if-eqz v1, :cond_8

    .line 158
    .line 159
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    .line 160
    .line 161
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_7

    .line 166
    .line 167
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 168
    .line 169
    invoke-virtual {v1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Ljava/lang/CharSequence;

    .line 174
    .line 175
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 179
    .line 180
    const/4 v3, 0x0

    .line 181
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    :cond_7
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    .line 185
    .line 186
    :cond_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 187
    .line 188
    const/16 v3, 0x1d

    .line 189
    .line 190
    if-lt v1, v3, :cond_9

    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 193
    .line 194
    .line 195
    :cond_9
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 196
    .line 197
    if-eqz v1, :cond_a

    .line 198
    .line 199
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 200
    .line 201
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->n(Landroid/text/Editable;)V

    .line 206
    .line 207
    .line 208
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 212
    .line 213
    invoke-virtual {v1}, Ldm;->b()V

    .line 214
    .line 215
    .line 216
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 217
    .line 218
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 222
    .line 223
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 224
    .line 225
    .line 226
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Ljava/util/LinkedHashSet;

    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-eqz v4, :cond_b

    .line 237
    .line 238
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    check-cast v4, Lih;

    .line 243
    .line 244
    invoke-virtual {v4, p0}, Lih;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_b
    invoke-virtual {v1}, Lkh;->m()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-nez v1, :cond_c

    .line 256
    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 258
    .line 259
    .line 260
    :cond_c
    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->u(ZZ)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :cond_d
    const-string p0, "We already have an EditText, can only have one"

    .line 265
    .line 266
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Laa;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Laa;->A:Ljava/lang/CharSequence;

    .line 16
    .line 17
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    :cond_0
    iput-object p1, v0, Laa;->A:Ljava/lang/CharSequence;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, v0, Laa;->B:Ljava/lang/CharSequence;

    .line 27
    .line 28
    iget-object v1, v0, Laa;->E:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    .line 34
    .line 35
    iput-object p1, v0, Laa;->E:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    invoke-virtual {v0, p1}, Laa;->h(Z)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Z

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method private setPlaceholderTextEnabled(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 33
    .line 34
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Laa;

    .line 2
    .line 3
    iget v1, v0, Laa;->b:F

    .line 4
    .line 5
    cmpl-float v1, v1, p1

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    sget v4, Ltu;->motionEasingEmphasizedInterpolator:I

    .line 27
    .line 28
    sget-object v5, La3;->b:Lxh;

    .line 29
    .line 30
    invoke-static {v3, v4, v5}, Ld40;->J(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    sget v4, Ltu;->motionDurationMedium4:I

    .line 44
    .line 45
    const/16 v5, 0xa7

    .line 46
    .line 47
    invoke-static {v3, v4, v5}, Ld40;->I(Landroid/content/Context;II)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    int-to-long v3, v3

    .line 52
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    new-instance v3, Lr7;

    .line 58
    .line 59
    invoke-direct {v3, v2, p0}, Lr7;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    iget v0, v0, Laa;->b:F

    .line 68
    .line 69
    new-array v2, v2, [F

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    aput v0, v2, v3

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    aput p1, v2, v0

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    .line 7
    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    .line 9
    .line 10
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    .line 12
    and-int/lit8 v0, v0, -0x71

    .line 13
    .line 14
    or-int/lit8 v0, v0, 0x10

    .line 15
    .line 16
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()V

    .line 27
    .line 28
    .line 29
    check-cast p1, Landroid/widget/EditText;

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, v0, Lxq;->a:Lwq;

    .line 7
    .line 8
    iget-object v1, v1, Lwq;->a:Lqz;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 11
    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lxq;->setShapeAppearanceModel(Lqz;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    const/4 v2, -0x1

    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 24
    .line 25
    if-le v0, v2, :cond_2

    .line 26
    .line 27
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 32
    .line 33
    int-to-float v0, v0

    .line 34
    iget-object v4, v3, Lxq;->a:Lwq;

    .line 35
    .line 36
    iput v0, v4, Lwq;->j:F

    .line 37
    .line 38
    invoke-virtual {v3}, Lxq;->invalidateSelf()V

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, v3, Lxq;->a:Lwq;

    .line 46
    .line 47
    iget-object v4, v1, Lwq;->d:Landroid/content/res/ColorStateList;

    .line 48
    .line 49
    if-eq v4, v0, :cond_2

    .line 50
    .line 51
    iput-object v0, v1, Lwq;->d:Landroid/content/res/ColorStateList;

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v3, v0}, Lxq;->onStateChange([I)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 61
    .line 62
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    if-ne v1, v3, :cond_3

    .line 66
    .line 67
    sget v0, Ltu;->colorSurface:I

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v3, v0, v1}, Lvd;->o(Landroid/content/Context;II)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 79
    .line 80
    invoke-static {v1, v0}, Lja;->b(II)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    :cond_3
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 85
    .line 86
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 87
    .line 88
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v1, v0}, Lxq;->j(Landroid/content/res/ColorStateList;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lxq;

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lxq;

    .line 100
    .line 101
    if-nez v1, :cond_4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 105
    .line 106
    if-le v1, v2, :cond_6

    .line 107
    .line 108
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 109
    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    .line 121
    .line 122
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    goto :goto_0

    .line 127
    :cond_5
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 128
    .line 129
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    :goto_0
    invoke-virtual {v0, v1}, Lxq;->j(Landroid/content/res/ColorStateList;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lxq;

    .line 137
    .line 138
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 139
    .line 140
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Lxq;->j(Landroid/content/res/ColorStateList;)V

    .line 145
    .line 146
    .line 147
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 148
    .line 149
    .line 150
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final c()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Laa;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    invoke-virtual {p0}, Laa;->d()F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/high16 v0, 0x40000000    # 2.0f

    .line 22
    .line 23
    div-float/2addr p0, v0

    .line 24
    :goto_0
    float-to-int p0, p0

    .line 25
    return p0

    .line 26
    :cond_2
    invoke-virtual {p0}, Laa;->d()F

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    goto :goto_0
.end method

.method public final d()Luh;
    .locals 4

    .line 1
    new-instance v0, Luh;

    .line 2
    .line 3
    invoke-direct {v0}, Luh;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget v2, Ltu;->motionDurationShort2:I

    .line 11
    .line 12
    const/16 v3, 0x57

    .line 13
    .line 14
    invoke-static {v1, v2, v3}, Ld40;->I(Landroid/content/Context;II)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-long v1, v1

    .line 19
    iput-wide v1, v0, Ls30;->c:J

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget v1, Ltu;->motionEasingLinearInterpolator:I

    .line 26
    .line 27
    sget-object v2, La3;->a:Landroid/view/animation/LinearInterpolator;

    .line 28
    .line 29
    invoke-static {p0, v1, v2}, Ld40;->J(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iput-object p0, v0, Ls30;->d:Landroid/animation/TimeInterpolator;

    .line 34
    .line 35
    return-object v0
.end method

.method public final dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Ljava/lang/CharSequence;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    .line 15
    .line 16
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Ljava/lang/CharSequence;

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-ge v2, v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v3, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 86
    .line 87
    .line 88
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 89
    .line 90
    if-ne v1, v4, :cond_2

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v3, v1}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    return-void
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Z

    .line 9
    .line 10
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Laa;

    .line 7
    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    iget-object v8, v1, Laa;->N:Landroid/text/TextPaint;

    .line 11
    .line 12
    iget-object v0, v1, Laa;->e:Landroid/graphics/RectF;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 15
    .line 16
    .line 17
    move-result v9

    .line 18
    iget-object v2, v1, Laa;->B:Ljava/lang/CharSequence;

    .line 19
    .line 20
    if-eqz v2, :cond_7

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    cmpl-float v2, v2, v3

    .line 28
    .line 29
    if-lez v2, :cond_7

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    cmpl-float v0, v0, v3

    .line 36
    .line 37
    if-lez v0, :cond_7

    .line 38
    .line 39
    iget v0, v1, Laa;->G:F

    .line 40
    .line 41
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    .line 43
    .line 44
    iget v0, v1, Laa;->p:F

    .line 45
    .line 46
    iget v2, v1, Laa;->q:F

    .line 47
    .line 48
    iget v3, v1, Laa;->F:F

    .line 49
    .line 50
    const/high16 v4, 0x3f800000    # 1.0f

    .line 51
    .line 52
    cmpl-float v4, v3, v4

    .line 53
    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget v3, v1, Laa;->d0:I

    .line 60
    .line 61
    const/4 v10, 0x1

    .line 62
    if-le v3, v10, :cond_6

    .line 63
    .line 64
    iget-boolean v3, v1, Laa;->C:Z

    .line 65
    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_1
    iget v0, v1, Laa;->p:F

    .line 71
    .line 72
    iget-object v3, v1, Laa;->Y:Landroid/text/StaticLayout;

    .line 73
    .line 74
    const/4 v11, 0x0

    .line 75
    invoke-virtual {v3, v11}, Landroid/text/StaticLayout;->getLineStart(I)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    int-to-float v3, v3

    .line 80
    sub-float/2addr v0, v3

    .line 81
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 86
    .line 87
    .line 88
    iget v0, v1, Laa;->b0:F

    .line 89
    .line 90
    int-to-float v2, v12

    .line 91
    mul-float/2addr v0, v2

    .line 92
    float-to-int v0, v0

    .line 93
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 94
    .line 95
    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    .line 98
    const/16 v13, 0x1f

    .line 99
    .line 100
    if-lt v0, v13, :cond_2

    .line 101
    .line 102
    iget v3, v1, Laa;->H:F

    .line 103
    .line 104
    iget v4, v1, Laa;->I:F

    .line 105
    .line 106
    iget v5, v1, Laa;->J:F

    .line 107
    .line 108
    iget v6, v1, Laa;->K:I

    .line 109
    .line 110
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    invoke-static {v6, v7}, Lvd;->j(II)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 119
    .line 120
    .line 121
    :cond_2
    iget-object v3, v1, Laa;->Y:Landroid/text/StaticLayout;

    .line 122
    .line 123
    invoke-virtual {v3, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 124
    .line 125
    .line 126
    iget v3, v1, Laa;->a0:F

    .line 127
    .line 128
    mul-float/2addr v3, v2

    .line 129
    float-to-int v2, v3

    .line 130
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    .line 132
    .line 133
    if-lt v0, v13, :cond_3

    .line 134
    .line 135
    iget v2, v1, Laa;->H:F

    .line 136
    .line 137
    iget v3, v1, Laa;->I:F

    .line 138
    .line 139
    iget v4, v1, Laa;->J:F

    .line 140
    .line 141
    iget v5, v1, Laa;->K:I

    .line 142
    .line 143
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    invoke-static {v5, v6}, Lvd;->j(II)I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 152
    .line 153
    .line 154
    :cond_3
    iget-object v2, v1, Laa;->Y:Landroid/text/StaticLayout;

    .line 155
    .line 156
    invoke-virtual {v2, v11}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    iget-object v3, v1, Laa;->c0:Ljava/lang/CharSequence;

    .line 161
    .line 162
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    int-to-float v7, v2

    .line 167
    const/4 v4, 0x0

    .line 168
    const/4 v6, 0x0

    .line 169
    move-object v2, p1

    .line 170
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 171
    .line 172
    .line 173
    if-lt v0, v13, :cond_4

    .line 174
    .line 175
    iget p1, v1, Laa;->H:F

    .line 176
    .line 177
    iget v0, v1, Laa;->I:F

    .line 178
    .line 179
    iget v3, v1, Laa;->J:F

    .line 180
    .line 181
    iget v4, v1, Laa;->K:I

    .line 182
    .line 183
    invoke-virtual {v8, p1, v0, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 184
    .line 185
    .line 186
    :cond_4
    iget-object p1, v1, Laa;->c0:Ljava/lang/CharSequence;

    .line 187
    .line 188
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    const-string v0, "\u2026"

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_5

    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    sub-int/2addr v0, v10

    .line 209
    invoke-virtual {p1, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    :cond_5
    move-object v3, p1

    .line 214
    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 215
    .line 216
    .line 217
    iget-object p1, v1, Laa;->Y:Landroid/text/StaticLayout;

    .line 218
    .line 219
    invoke-virtual {p1, v11}, Landroid/text/Layout;->getLineEnd(I)I

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    const/4 v6, 0x0

    .line 232
    const/4 v4, 0x0

    .line 233
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 234
    .line 235
    .line 236
    move-object p1, v2

    .line 237
    goto :goto_1

    .line 238
    :cond_6
    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 239
    .line 240
    .line 241
    iget-object v0, v1, Laa;->Y:Landroid/text/StaticLayout;

    .line 242
    .line 243
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 244
    .line 245
    .line 246
    :goto_1
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 247
    .line 248
    .line 249
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lxq;

    .line 250
    .line 251
    if-eqz v0, :cond_8

    .line 252
    .line 253
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lxq;

    .line 254
    .line 255
    if-eqz v0, :cond_8

    .line 256
    .line 257
    invoke-virtual {v0, p1}, Lxq;->draw(Landroid/graphics/Canvas;)V

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 261
    .line 262
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_8

    .line 267
    .line 268
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lxq;

    .line 269
    .line 270
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lxq;

    .line 275
    .line 276
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    iget v1, v1, Laa;->b:F

    .line 281
    .line 282
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 287
    .line 288
    invoke-static {v3, v4, v1}, La3;->c(IIF)I

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 293
    .line 294
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 295
    .line 296
    invoke-static {v3, v2, v1}, La3;->c(IIF)I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 301
    .line 302
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lxq;

    .line 303
    .line 304
    invoke-virtual {p0, p1}, Lxq;->draw(Landroid/graphics/Canvas;)V

    .line 305
    .line 306
    .line 307
    :cond_8
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:Z

    .line 8
    .line 9
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Laa;

    .line 18
    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    iput-object v1, v3, Laa;->L:[I

    .line 22
    .line 23
    iget-object v1, v3, Laa;->k:Landroid/content/res/ColorStateList;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    :cond_1
    iget-object v1, v3, Laa;->j:Landroid/content/res/ColorStateList;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    :cond_2
    invoke-virtual {v3, v2}, Laa;->h(Z)V

    .line 44
    .line 45
    .line 46
    move v1, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    move v1, v2

    .line 49
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 50
    .line 51
    if-eqz v3, :cond_5

    .line 52
    .line 53
    sget-object v3, Lw50;->a:Ljava/util/WeakHashMap;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    move v0, v2

    .line 69
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->u(ZZ)V

    .line 70
    .line 71
    .line 72
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 76
    .line 77
    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 81
    .line 82
    .line 83
    :cond_6
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:Z

    .line 84
    .line 85
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 14
    .line 15
    instance-of p0, p0, Lrd;

    .line 16
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

.method public final f(Z)Lxq;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget v2, Lzu;->mtrl_shape_corner_size_small_component:I

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    move v2, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    iget-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 20
    .line 21
    instance-of v4, v3, Leq;

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    check-cast v3, Leq;

    .line 26
    .line 27
    invoke-virtual {v3}, Leq;->getPopupElevation()F

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    sget v4, Lzu;->m3_comp_outlined_autocomplete_menu_container_elevation:I

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    int-to-float v3, v3

    .line 43
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    sget v5, Lzu;->mtrl_exposed_dropdown_menu_popup_vertical_padding:I

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    new-instance v5, Lny;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v6, Lny;

    .line 59
    .line 60
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v7, Lny;

    .line 64
    .line 65
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v8, Lny;

    .line 69
    .line 70
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v9, Lqg;

    .line 74
    .line 75
    const/4 v10, 0x0

    .line 76
    invoke-direct {v9, v10}, Lqg;-><init>(I)V

    .line 77
    .line 78
    .line 79
    new-instance v11, Lqg;

    .line 80
    .line 81
    invoke-direct {v11, v10}, Lqg;-><init>(I)V

    .line 82
    .line 83
    .line 84
    new-instance v12, Lqg;

    .line 85
    .line 86
    invoke-direct {v12, v10}, Lqg;-><init>(I)V

    .line 87
    .line 88
    .line 89
    new-instance v13, Lqg;

    .line 90
    .line 91
    invoke-direct {v13, v10}, Lqg;-><init>(I)V

    .line 92
    .line 93
    .line 94
    new-instance v14, Le;

    .line 95
    .line 96
    invoke-direct {v14, v2}, Le;-><init>(F)V

    .line 97
    .line 98
    .line 99
    new-instance v15, Le;

    .line 100
    .line 101
    invoke-direct {v15, v2}, Le;-><init>(F)V

    .line 102
    .line 103
    .line 104
    new-instance v2, Le;

    .line 105
    .line 106
    invoke-direct {v2, v1}, Le;-><init>(F)V

    .line 107
    .line 108
    .line 109
    new-instance v10, Le;

    .line 110
    .line 111
    invoke-direct {v10, v1}, Le;-><init>(F)V

    .line 112
    .line 113
    .line 114
    new-instance v1, Lqz;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v5, v1, Lqz;->a:Lnm;

    .line 120
    .line 121
    iput-object v6, v1, Lqz;->b:Lnm;

    .line 122
    .line 123
    iput-object v7, v1, Lqz;->c:Lnm;

    .line 124
    .line 125
    iput-object v8, v1, Lqz;->d:Lnm;

    .line 126
    .line 127
    iput-object v14, v1, Lqz;->e:Lvc;

    .line 128
    .line 129
    iput-object v15, v1, Lqz;->f:Lvc;

    .line 130
    .line 131
    iput-object v10, v1, Lqz;->g:Lvc;

    .line 132
    .line 133
    iput-object v2, v1, Lqz;->h:Lvc;

    .line 134
    .line 135
    iput-object v9, v1, Lqz;->i:Lqg;

    .line 136
    .line 137
    iput-object v11, v1, Lqz;->j:Lqg;

    .line 138
    .line 139
    iput-object v12, v1, Lqz;->k:Lqg;

    .line 140
    .line 141
    iput-object v13, v1, Lqz;->l:Lqg;

    .line 142
    .line 143
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 144
    .line 145
    instance-of v5, v2, Leq;

    .line 146
    .line 147
    if-eqz v5, :cond_2

    .line 148
    .line 149
    check-cast v2, Leq;

    .line 150
    .line 151
    invoke-virtual {v2}, Leq;->getDropDownBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    goto :goto_2

    .line 156
    :cond_2
    const/4 v2, 0x0

    .line 157
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-nez v2, :cond_4

    .line 162
    .line 163
    sget-object v2, Lxq;->w:Landroid/graphics/Paint;

    .line 164
    .line 165
    sget v2, Ltu;->colorSurface:I

    .line 166
    .line 167
    const-class v5, Lxq;

    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-static {v2, v0, v5}, Ld40;->K(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    .line 178
    .line 179
    if-eqz v5, :cond_3

    .line 180
    .line 181
    invoke-static {v0, v5}, Ljc;->a(Landroid/content/Context;I)I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    goto :goto_3

    .line 186
    :cond_3
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 187
    .line 188
    :goto_3
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    :cond_4
    new-instance v5, Lxq;

    .line 193
    .line 194
    invoke-direct {v5}, Lxq;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v0}, Lxq;->h(Landroid/content/Context;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v2}, Lxq;->j(Landroid/content/res/ColorStateList;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5, v3}, Lxq;->i(F)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5, v1}, Lxq;->setShapeAppearanceModel(Lqz;)V

    .line 207
    .line 208
    .line 209
    iget-object v0, v5, Lxq;->a:Lwq;

    .line 210
    .line 211
    iget-object v1, v0, Lwq;->g:Landroid/graphics/Rect;

    .line 212
    .line 213
    if-nez v1, :cond_5

    .line 214
    .line 215
    new-instance v1, Landroid/graphics/Rect;

    .line 216
    .line 217
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 218
    .line 219
    .line 220
    iput-object v1, v0, Lwq;->g:Landroid/graphics/Rect;

    .line 221
    .line 222
    :cond_5
    iget-object v0, v5, Lxq;->a:Lwq;

    .line 223
    .line 224
    iget-object v0, v0, Lwq;->g:Landroid/graphics/Rect;

    .line 225
    .line 226
    const/4 v1, 0x0

    .line 227
    invoke-virtual {v0, v1, v4, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5}, Lxq;->invalidateSelf()V

    .line 231
    .line 232
    .line 233
    return-object v5
.end method

.method public final g(IZ)I
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 10
    .line 11
    invoke-virtual {p0}, Lb10;->a()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    :goto_0
    add-int/2addr p0, p1

    .line 16
    return p0

    .line 17
    :cond_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 26
    .line 27
    invoke-virtual {p0}, Lkh;->c()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    goto :goto_0
.end method

.method public getBaseline()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-int/2addr p0, v1

    .line 19
    return p0

    .line 20
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public getBoxBackground()Lxq;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p0

    .line 16
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 17
    .line 18
    return-object p0
.end method

.method public getBoxBackgroundColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 2
    .line 3
    return p0
.end method

.method public getBoxBackgroundMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 2
    .line 3
    return p0
.end method

.method public getBoxCollapsedPaddingTop()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 2
    .line 3
    return p0
.end method

.method public getBoxCornerRadiusBottomEnd()F
    .locals 2

    .line 1
    invoke-static {p0}, Lyt;->l(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v1, Lqz;->h:Lvc;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    iget-object v0, v1, Lqz;->g:Lvc;

    .line 19
    .line 20
    invoke-interface {v0, p0}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public getBoxCornerRadiusBottomStart()F
    .locals 2

    .line 1
    invoke-static {p0}, Lyt;->l(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v1, Lqz;->g:Lvc;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    iget-object v0, v1, Lqz;->h:Lvc;

    .line 19
    .line 20
    invoke-interface {v0, p0}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public getBoxCornerRadiusTopEnd()F
    .locals 2

    .line 1
    invoke-static {p0}, Lyt;->l(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v1, Lqz;->e:Lvc;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    iget-object v0, v1, Lqz;->f:Lvc;

    .line 19
    .line 20
    invoke-interface {v0, p0}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public getBoxCornerRadiusTopStart()F
    .locals 2

    .line 1
    invoke-static {p0}, Lyt;->l(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v1, Lqz;->f:Lvc;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    iget-object v0, v1, Lqz;->e:Lvc;

    .line 19
    .line 20
    invoke-interface {v0, p0}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public getBoxStrokeColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 2
    .line 3
    return p0
.end method

.method public getBoxStrokeErrorColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBoxStrokeWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 2
    .line 3
    return p0
.end method

.method public getBoxStrokeWidthFocused()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    .line 2
    .line 3
    return p0
.end method

.method public getCounterMaxLength()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 2
    .line 3
    return p0
.end method

.method public getCounterOverflowDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public getCounterOverflowTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCounterTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCursorColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCursorErrorColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEndIconContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getEndIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getEndIconMinSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget p0, p0, Lkh;->m:I

    .line 4
    .line 5
    return p0
.end method

.method public getEndIconMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget p0, p0, Lkh;->i:I

    .line 4
    .line 5
    return p0
.end method

.method public getEndIconScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object p0, p0, Lkh;->n:Landroid/widget/ImageView$ScaleType;

    .line 4
    .line 5
    return-object p0
.end method

.method public getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    return-object p0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 2
    .line 3
    iget-boolean v0, p0, Ldm;->q:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Ldm;->p:Ljava/lang/CharSequence;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public getErrorAccessibilityLiveRegion()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 2
    .line 3
    iget p0, p0, Ldm;->t:I

    .line 4
    .line 5
    return p0
.end method

.method public getErrorContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 2
    .line 3
    iget-object p0, p0, Ldm;->s:Ljava/lang/CharSequence;

    .line 4
    .line 5
    return-object p0
.end method

.method public getErrorCurrentTextColors()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 2
    .line 3
    iget-object p0, p0, Ldm;->r:Lt5;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public getErrorIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object p0, p0, Lkh;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 2
    .line 3
    iget-boolean v0, p0, Ldm;->x:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Ldm;->w:Ljava/lang/CharSequence;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public getHelperTextCurrentTextColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 2
    .line 3
    iget-object p0, p0, Ldm;->y:Lt5;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final getHintCollapsedTextHeight()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Laa;

    .line 2
    .line 3
    invoke-virtual {p0}, Laa;->d()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getHintCurrentCollapsedTextColor()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Laa;

    .line 2
    .line 3
    iget-object v0, p0, Laa;->k:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Laa;->e(Landroid/content/res/ColorStateList;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getHintTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLengthCounter()Lj20;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lj20;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMaxEms()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    .line 2
    .line 3
    return p0
.end method

.method public getMaxWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    .line 2
    .line 3
    return p0
.end method

.method public getMinEms()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public getMinWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    .line 2
    .line 3
    return p0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getPlaceholderText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Ljava/lang/CharSequence;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getPlaceholderTextAppearance()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    .line 2
    .line 3
    return p0
.end method

.method public getPlaceholderTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPrefixText()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    iget-object p0, p0, Lb10;->c:Ljava/lang/CharSequence;

    .line 4
    .line 5
    return-object p0
.end method

.method public getPrefixTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    iget-object p0, p0, Lb10;->b:Lt5;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getPrefixTextView()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    iget-object p0, p0, Lb10;->b:Lt5;

    .line 4
    .line 5
    return-object p0
.end method

.method public getShapeAppearanceModel()Lqz;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStartIconContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    iget-object p0, p0, Lb10;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getStartIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    iget-object p0, p0, Lb10;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getStartIconMinSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    iget p0, p0, Lb10;->g:I

    .line 4
    .line 5
    return p0
.end method

.method public getStartIconScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    iget-object p0, p0, Lb10;->h:Landroid/widget/ImageView$ScaleType;

    .line 4
    .line 5
    return-object p0
.end method

.method public getSuffixText()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object p0, p0, Lkh;->p:Ljava/lang/CharSequence;

    .line 4
    .line 5
    return-object p0
.end method

.method public getSuffixTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object p0, p0, Lkh;->q:Lt5;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getSuffixTextView()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object p0, p0, Lkh;->q:Lt5;

    .line 4
    .line 5
    return-object p0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/Typeface;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(IZ)I
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 10
    .line 11
    invoke-virtual {p0}, Lkh;->c()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    :goto_0
    sub-int/2addr p1, p0

    .line 16
    return p1

    .line 17
    :cond_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixText()Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 26
    .line 27
    invoke-virtual {p0}, Lb10;->a()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    goto :goto_0
.end method

.method public final i()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    if-eq v0, v2, :cond_3

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 17
    .line 18
    instance-of v0, v0, Lrd;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 23
    .line 24
    sget v4, Lrd;->y:I

    .line 25
    .line 26
    new-instance v4, Lqd;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lqz;

    .line 32
    .line 33
    invoke-direct {v0}, Lqz;-><init>()V

    .line 34
    .line 35
    .line 36
    :goto_0
    new-instance v5, Landroid/graphics/RectF;

    .line 37
    .line 38
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-direct {v4, v0, v5}, Lqd;-><init>(Lqz;Landroid/graphics/RectF;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lrd;

    .line 45
    .line 46
    invoke-direct {v0, v4}, Lxq;-><init>(Lwq;)V

    .line 47
    .line 48
    .line 49
    iput-object v4, v0, Lrd;->x:Lqd;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v0, Lxq;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 57
    .line 58
    invoke-direct {v0, v4}, Lxq;-><init>(Lqz;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 62
    .line 63
    :goto_1
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lxq;

    .line 64
    .line 65
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lxq;

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p0, " is illegal; only @BoxBackgroundMode constants are supported."

    .line 81
    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_3
    new-instance v0, Lxq;

    .line 94
    .line 95
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 96
    .line 97
    invoke-direct {v0, v3}, Lxq;-><init>(Lqz;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 101
    .line 102
    new-instance v0, Lxq;

    .line 103
    .line 104
    invoke-direct {v0}, Lxq;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lxq;

    .line 108
    .line 109
    new-instance v0, Lxq;

    .line 110
    .line 111
    invoke-direct {v0}, Lxq;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lxq;

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 118
    .line 119
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lxq;

    .line 120
    .line 121
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lxq;

    .line 122
    .line 123
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 127
    .line 128
    .line 129
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 130
    .line 131
    const/high16 v3, 0x40000000    # 2.0f

    .line 132
    .line 133
    if-ne v0, v2, :cond_6

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 148
    .line 149
    cmpl-float v0, v0, v3

    .line 150
    .line 151
    if-ltz v0, :cond_5

    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sget v4, Lzu;->material_font_2_0_box_collapsed_padding_top:I

    .line 158
    .line 159
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v0}, Lnm;->C(Landroid/content/Context;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    sget v4, Lzu;->material_font_1_3_box_collapsed_padding_top:I

    .line 181
    .line 182
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 187
    .line 188
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 189
    .line 190
    if-eqz v0, :cond_9

    .line 191
    .line 192
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 193
    .line 194
    if-eq v0, v2, :cond_7

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 210
    .line 211
    cmpl-float v0, v0, v3

    .line 212
    .line 213
    if-ltz v0, :cond_8

    .line 214
    .line 215
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 216
    .line 217
    sget-object v3, Lw50;->a:Ljava/util/WeakHashMap;

    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    sget v5, Lzu;->material_filled_edittext_font_2_0_padding_top:I

    .line 228
    .line 229
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 234
    .line 235
    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    sget v7, Lzu;->material_filled_edittext_font_2_0_padding_bottom:I

    .line 244
    .line 245
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {v0}, Lnm;->C(Landroid/content/Context;)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_9

    .line 262
    .line 263
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 264
    .line 265
    sget-object v3, Lw50;->a:Ljava/util/WeakHashMap;

    .line 266
    .line 267
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    sget v5, Lzu;->material_filled_edittext_font_1_3_padding_top:I

    .line 276
    .line 277
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 282
    .line 283
    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    sget v7, Lzu;->material_filled_edittext_font_1_3_padding_bottom:I

    .line 292
    .line 293
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 298
    .line 299
    .line 300
    :cond_9
    :goto_4
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 301
    .line 302
    if-eqz v0, :cond_a

    .line 303
    .line 304
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()V

    .line 305
    .line 306
    .line 307
    :cond_a
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 308
    .line 309
    instance-of v3, v0, Landroid/widget/AutoCompleteTextView;

    .line 310
    .line 311
    if-nez v3, :cond_b

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_b
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 315
    .line 316
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    if-nez v3, :cond_d

    .line 321
    .line 322
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 323
    .line 324
    if-ne v3, v1, :cond_c

    .line 325
    .line 326
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getOrCreateOutlinedDropDownMenuBackground()Landroid/graphics/drawable/Drawable;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :cond_c
    if-ne v3, v2, :cond_d

    .line 335
    .line 336
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getOrCreateFilledDropDownMenuBackground()Landroid/graphics/drawable/Drawable;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    .line 342
    .line 343
    :cond_d
    :goto_5
    return-void
.end method

.method public final j()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_a

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/TextView;->getGravity()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Laa;

    .line 22
    .line 23
    iget-object v3, v2, Laa;->A:Ljava/lang/CharSequence;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Laa;->b(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iput-boolean v3, v2, Laa;->C:Z

    .line 30
    .line 31
    iget-object v4, v2, Laa;->d:Landroid/graphics/Rect;

    .line 32
    .line 33
    const/high16 v5, 0x40000000    # 2.0f

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    const/4 v7, 0x5

    .line 37
    const v8, 0x800005

    .line 38
    .line 39
    .line 40
    const/16 v9, 0x11

    .line 41
    .line 42
    if-eq v1, v9, :cond_6

    .line 43
    .line 44
    and-int/lit8 v10, v1, 0x7

    .line 45
    .line 46
    if-ne v10, v6, :cond_1

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_1
    and-int v10, v1, v8

    .line 50
    .line 51
    if-eq v10, v8, :cond_4

    .line 52
    .line 53
    and-int/lit8 v10, v1, 0x5

    .line 54
    .line 55
    if-ne v10, v7, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    if-eqz v3, :cond_3

    .line 59
    .line 60
    iget v3, v4, Landroid/graphics/Rect;->right:I

    .line 61
    .line 62
    int-to-float v3, v3

    .line 63
    iget v10, v2, Laa;->Z:F

    .line 64
    .line 65
    :goto_0
    sub-float/2addr v3, v10

    .line 66
    goto :goto_4

    .line 67
    :cond_3
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 68
    .line 69
    :goto_1
    int-to-float v3, v3

    .line 70
    goto :goto_4

    .line 71
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 72
    .line 73
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    iget v3, v4, Landroid/graphics/Rect;->right:I

    .line 77
    .line 78
    int-to-float v3, v3

    .line 79
    iget v10, v2, Laa;->Z:F

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_6
    :goto_3
    int-to-float v3, v0

    .line 83
    div-float/2addr v3, v5

    .line 84
    iget v10, v2, Laa;->Z:F

    .line 85
    .line 86
    div-float/2addr v10, v5

    .line 87
    goto :goto_0

    .line 88
    :goto_4
    iget v10, v4, Landroid/graphics/Rect;->left:I

    .line 89
    .line 90
    int-to-float v10, v10

    .line 91
    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    iget-object v10, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    .line 96
    .line 97
    iput v3, v10, Landroid/graphics/RectF;->left:F

    .line 98
    .line 99
    iget v11, v4, Landroid/graphics/Rect;->top:I

    .line 100
    .line 101
    int-to-float v11, v11

    .line 102
    iput v11, v10, Landroid/graphics/RectF;->top:F

    .line 103
    .line 104
    if-eq v1, v9, :cond_c

    .line 105
    .line 106
    and-int/lit8 v9, v1, 0x7

    .line 107
    .line 108
    if-ne v9, v6, :cond_7

    .line 109
    .line 110
    goto :goto_8

    .line 111
    :cond_7
    and-int v0, v1, v8

    .line 112
    .line 113
    if-eq v0, v8, :cond_a

    .line 114
    .line 115
    and-int/lit8 v0, v1, 0x5

    .line 116
    .line 117
    if-ne v0, v7, :cond_8

    .line 118
    .line 119
    goto :goto_7

    .line 120
    :cond_8
    iget-boolean v0, v2, Laa;->C:Z

    .line 121
    .line 122
    if-eqz v0, :cond_9

    .line 123
    .line 124
    iget v0, v4, Landroid/graphics/Rect;->right:I

    .line 125
    .line 126
    :goto_5
    int-to-float v0, v0

    .line 127
    goto :goto_9

    .line 128
    :cond_9
    iget v0, v2, Laa;->Z:F

    .line 129
    .line 130
    :goto_6
    add-float/2addr v0, v3

    .line 131
    goto :goto_9

    .line 132
    :cond_a
    :goto_7
    iget-boolean v0, v2, Laa;->C:Z

    .line 133
    .line 134
    if-eqz v0, :cond_b

    .line 135
    .line 136
    iget v0, v2, Laa;->Z:F

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_b
    iget v0, v4, Landroid/graphics/Rect;->right:I

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_c
    :goto_8
    int-to-float v0, v0

    .line 143
    div-float/2addr v0, v5

    .line 144
    iget v1, v2, Laa;->Z:F

    .line 145
    .line 146
    div-float/2addr v1, v5

    .line 147
    add-float/2addr v0, v1

    .line 148
    :goto_9
    iget v1, v4, Landroid/graphics/Rect;->right:I

    .line 149
    .line 150
    int-to-float v1, v1

    .line 151
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 156
    .line 157
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 158
    .line 159
    int-to-float v0, v0

    .line 160
    invoke-virtual {v2}, Laa;->d()F

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    add-float/2addr v1, v0

    .line 165
    iput v1, v10, Landroid/graphics/RectF;->bottom:F

    .line 166
    .line 167
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    const/4 v1, 0x0

    .line 172
    cmpg-float v0, v0, v1

    .line 173
    .line 174
    if-lez v0, :cond_e

    .line 175
    .line 176
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    cmpg-float v0, v0, v1

    .line 181
    .line 182
    if-gtz v0, :cond_d

    .line 183
    .line 184
    goto :goto_a

    .line 185
    :cond_d
    iget v0, v10, Landroid/graphics/RectF;->left:F

    .line 186
    .line 187
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    .line 188
    .line 189
    int-to-float v1, v1

    .line 190
    sub-float/2addr v0, v1

    .line 191
    iput v0, v10, Landroid/graphics/RectF;->left:F

    .line 192
    .line 193
    iget v0, v10, Landroid/graphics/RectF;->right:F

    .line 194
    .line 195
    add-float/2addr v0, v1

    .line 196
    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    neg-int v0, v0

    .line 203
    int-to-float v0, v0

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    neg-int v1, v1

    .line 209
    int-to-float v1, v1

    .line 210
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    div-float/2addr v2, v5

    .line 215
    sub-float/2addr v1, v2

    .line 216
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 217
    .line 218
    int-to-float v2, v2

    .line 219
    add-float/2addr v1, v2

    .line 220
    invoke-virtual {v10, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 221
    .line 222
    .line 223
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 224
    .line 225
    check-cast p0, Lrd;

    .line 226
    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    iget v0, v10, Landroid/graphics/RectF;->left:F

    .line 231
    .line 232
    iget v1, v10, Landroid/graphics/RectF;->top:F

    .line 233
    .line 234
    iget v2, v10, Landroid/graphics/RectF;->right:F

    .line 235
    .line 236
    iget v3, v10, Landroid/graphics/RectF;->bottom:F

    .line 237
    .line 238
    invoke-virtual {p0, v0, v1, v2, v3}, Lrd;->n(FFFF)V

    .line 239
    .line 240
    .line 241
    :cond_e
    :goto_a
    return-void
.end method

.method public final l(Lt5;I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 9
    .line 10
    .line 11
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const v0, -0xff01

    .line 13
    .line 14
    .line 15
    if-ne p2, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :catch_0
    :goto_0
    sget p2, Lzv;->TextAppearance_AppCompat_Caption:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sget p2, Lwu;->design_error:I

    .line 29
    .line 30
    invoke-static {p0, p2}, Ljc;->a(Landroid/content/Context;I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final m()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 2
    .line 3
    iget v0, p0, Ldm;->o:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Ldm;->r:Lt5;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Ldm;->p:Ljava/lang/CharSequence;

    .line 13
    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final n(Landroid/text/Editable;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lj20;

    .line 2
    .line 3
    check-cast v0, Lg9;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p1, v0

    .line 17
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 18
    .line 19
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 35
    .line 36
    invoke-virtual {p1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 40
    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :cond_1
    const/4 v3, 0x1

    .line 44
    if-le p1, v2, :cond_2

    .line 45
    .line 46
    move v2, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v2, v0

    .line 49
    :goto_1
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 56
    .line 57
    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 58
    .line 59
    iget-boolean v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 60
    .line 61
    if-eqz v7, :cond_3

    .line 62
    .line 63
    sget v7, Lvv;->character_counter_overflowed_content_description:I

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    sget v7, Lvv;->character_counter_content_description:I

    .line 67
    .line 68
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    filled-new-array {v8, v6}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v2, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v5, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 88
    .line 89
    if-eq v1, v2, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 92
    .line 93
    .line 94
    :cond_4
    sget-object v2, Ln7;->b:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-ne v2, v3, :cond_5

    .line 105
    .line 106
    sget-object v2, Ln7;->e:Ln7;

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    sget-object v2, Ln7;->d:Ln7;

    .line 110
    .line 111
    :goto_3
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    sget v6, Lvv;->character_counter_pattern:I

    .line 118
    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 124
    .line 125
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    filled-new-array {p1, v7}, [Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v5, v6, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    sget-object v5, Lf20;->a:Ls7;

    .line 141
    .line 142
    if-nez p1, :cond_6

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_6
    invoke-virtual {v2, p1}, Ln7;->c(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    :goto_5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 157
    .line 158
    if-eqz p1, :cond_7

    .line 159
    .line 160
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 161
    .line 162
    if-eq v1, p1, :cond_7

    .line 163
    .line 164
    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->u(ZZ)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 171
    .line 172
    .line 173
    :cond_7
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lt5;I)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/content/res/ColorStateList;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/content/res/ColorStateList;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Laa;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Laa;->g(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ge v2, v0, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    return-void

    .line 56
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 57
    .line 58
    new-instance v1, Lr1;

    .line 59
    .line 60
    const/16 v2, 0xa

    .line 61
    .line 62
    invoke-direct {v1, v2, p0}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 5
    .line 6
    if-eqz p1, :cond_f

    .line 7
    .line 8
    sget-object p2, Lve;->a:Ljava/lang/ThreadLocal;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/Rect;

    .line 19
    .line 20
    const/4 p5, 0x0

    .line 21
    invoke-virtual {p4, p5, p5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 22
    .line 23
    .line 24
    sget-object p2, Lve;->a:Ljava/lang/ThreadLocal;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    check-cast p3, Landroid/graphics/Matrix;

    .line 31
    .line 32
    if-nez p3, :cond_0

    .line 33
    .line 34
    new-instance p3, Landroid/graphics/Matrix;

    .line 35
    .line 36
    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {p0, p1, p3}, Lve;->a(Lcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lve;->b:Ljava/lang/ThreadLocal;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Landroid/graphics/RectF;

    .line 56
    .line 57
    if-nez p2, :cond_1

    .line 58
    .line 59
    new-instance p2, Landroid/graphics/RectF;

    .line 60
    .line 61
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {p2, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 71
    .line 72
    .line 73
    iget p1, p2, Landroid/graphics/RectF;->left:F

    .line 74
    .line 75
    const/high16 p3, 0x3f000000    # 0.5f

    .line 76
    .line 77
    add-float/2addr p1, p3

    .line 78
    float-to-int p1, p1

    .line 79
    iget v0, p2, Landroid/graphics/RectF;->top:F

    .line 80
    .line 81
    add-float/2addr v0, p3

    .line 82
    float-to-int v0, v0

    .line 83
    iget v1, p2, Landroid/graphics/RectF;->right:F

    .line 84
    .line 85
    add-float/2addr v1, p3

    .line 86
    float-to-int v1, v1

    .line 87
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 88
    .line 89
    add-float/2addr p2, p3

    .line 90
    float-to-int p2, p2

    .line 91
    invoke-virtual {p4, p1, v0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lxq;

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    iget p2, p4, Landroid/graphics/Rect;->bottom:I

    .line 99
    .line 100
    iget p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 101
    .line 102
    sub-int p3, p2, p3

    .line 103
    .line 104
    iget v0, p4, Landroid/graphics/Rect;->left:I

    .line 105
    .line 106
    iget v1, p4, Landroid/graphics/Rect;->right:I

    .line 107
    .line 108
    invoke-virtual {p1, v0, p3, v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    .line 110
    .line 111
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lxq;

    .line 112
    .line 113
    if-eqz p1, :cond_3

    .line 114
    .line 115
    iget p2, p4, Landroid/graphics/Rect;->bottom:I

    .line 116
    .line 117
    iget p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    .line 118
    .line 119
    sub-int p3, p2, p3

    .line 120
    .line 121
    iget v0, p4, Landroid/graphics/Rect;->left:I

    .line 122
    .line 123
    iget v1, p4, Landroid/graphics/Rect;->right:I

    .line 124
    .line 125
    invoke-virtual {p1, v0, p3, v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    .line 127
    .line 128
    :cond_3
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 129
    .line 130
    if-eqz p1, :cond_f

    .line 131
    .line 132
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Laa;

    .line 139
    .line 140
    iget p3, p2, Laa;->h:F

    .line 141
    .line 142
    cmpl-float p3, p3, p1

    .line 143
    .line 144
    if-eqz p3, :cond_4

    .line 145
    .line 146
    iput p1, p2, Laa;->h:F

    .line 147
    .line 148
    invoke-virtual {p2, p5}, Laa;->h(Z)V

    .line 149
    .line 150
    .line 151
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    and-int/lit8 p3, p1, -0x71

    .line 158
    .line 159
    or-int/lit8 p3, p3, 0x30

    .line 160
    .line 161
    iget v0, p2, Laa;->g:I

    .line 162
    .line 163
    if-eq v0, p3, :cond_5

    .line 164
    .line 165
    iput p3, p2, Laa;->g:I

    .line 166
    .line 167
    invoke-virtual {p2, p5}, Laa;->h(Z)V

    .line 168
    .line 169
    .line 170
    :cond_5
    iget p3, p2, Laa;->f:I

    .line 171
    .line 172
    if-eq p3, p1, :cond_6

    .line 173
    .line 174
    iput p1, p2, Laa;->f:I

    .line 175
    .line 176
    invoke-virtual {p2, p5}, Laa;->h(Z)V

    .line 177
    .line 178
    .line 179
    :cond_6
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 180
    .line 181
    if-eqz p1, :cond_e

    .line 182
    .line 183
    invoke-static {p0}, Lyt;->l(Landroid/view/View;)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    iget p3, p4, Landroid/graphics/Rect;->bottom:I

    .line 188
    .line 189
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Landroid/graphics/Rect;

    .line 190
    .line 191
    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    .line 192
    .line 193
    iget p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 194
    .line 195
    iget v1, p4, Landroid/graphics/Rect;->left:I

    .line 196
    .line 197
    const/4 v2, 0x1

    .line 198
    if-eq p3, v2, :cond_8

    .line 199
    .line 200
    const/4 v3, 0x2

    .line 201
    if-eq p3, v3, :cond_7

    .line 202
    .line 203
    invoke-virtual {p0, v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->g(IZ)I

    .line 204
    .line 205
    .line 206
    move-result p3

    .line 207
    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 210
    .line 211
    .line 212
    move-result p3

    .line 213
    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 214
    .line 215
    iget p3, p4, Landroid/graphics/Rect;->right:I

    .line 216
    .line 217
    invoke-virtual {p0, p3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->h(IZ)I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_7
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 225
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    add-int/2addr p1, v1

    .line 231
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 232
    .line 233
    iget p1, p4, Landroid/graphics/Rect;->top:I

    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()I

    .line 236
    .line 237
    .line 238
    move-result p3

    .line 239
    sub-int/2addr p1, p3

    .line 240
    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 241
    .line 242
    iget p1, p4, Landroid/graphics/Rect;->right:I

    .line 243
    .line 244
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 245
    .line 246
    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    .line 247
    .line 248
    .line 249
    move-result p3

    .line 250
    sub-int/2addr p1, p3

    .line 251
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_8
    invoke-virtual {p0, v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->g(IZ)I

    .line 255
    .line 256
    .line 257
    move-result p3

    .line 258
    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 259
    .line 260
    iget p3, p4, Landroid/graphics/Rect;->top:I

    .line 261
    .line 262
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 263
    .line 264
    add-int/2addr p3, v1

    .line 265
    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 266
    .line 267
    iget p3, p4, Landroid/graphics/Rect;->right:I

    .line 268
    .line 269
    invoke-virtual {p0, p3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->h(IZ)I

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 274
    .line 275
    :goto_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 276
    .line 277
    iget p3, v0, Landroid/graphics/Rect;->top:I

    .line 278
    .line 279
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 280
    .line 281
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 282
    .line 283
    iget-object v4, p2, Laa;->d:Landroid/graphics/Rect;

    .line 284
    .line 285
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 286
    .line 287
    if-ne v5, p1, :cond_9

    .line 288
    .line 289
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 290
    .line 291
    if-ne v5, p3, :cond_9

    .line 292
    .line 293
    iget v5, v4, Landroid/graphics/Rect;->right:I

    .line 294
    .line 295
    if-ne v5, v1, :cond_9

    .line 296
    .line 297
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 298
    .line 299
    if-ne v5, v3, :cond_9

    .line 300
    .line 301
    goto :goto_2

    .line 302
    :cond_9
    invoke-virtual {v4, p1, p3, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 303
    .line 304
    .line 305
    iput-boolean v2, p2, Laa;->M:Z

    .line 306
    .line 307
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 308
    .line 309
    if-eqz p1, :cond_d

    .line 310
    .line 311
    iget-object p1, p2, Laa;->O:Landroid/text/TextPaint;

    .line 312
    .line 313
    iget p3, p2, Laa;->h:F

    .line 314
    .line 315
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 316
    .line 317
    .line 318
    iget-object p3, p2, Laa;->u:Landroid/graphics/Typeface;

    .line 319
    .line 320
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 321
    .line 322
    .line 323
    iget p3, p2, Laa;->W:F

    .line 324
    .line 325
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    neg-float p1, p1

    .line 333
    iget p3, p4, Landroid/graphics/Rect;->left:I

    .line 334
    .line 335
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 336
    .line 337
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    add-int/2addr v1, p3

    .line 342
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 343
    .line 344
    iget p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 345
    .line 346
    if-ne p3, v2, :cond_a

    .line 347
    .line 348
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 349
    .line 350
    invoke-virtual {p3}, Landroid/widget/TextView;->getMinLines()I

    .line 351
    .line 352
    .line 353
    move-result p3

    .line 354
    if-gt p3, v2, :cond_a

    .line 355
    .line 356
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    .line 357
    .line 358
    .line 359
    move-result p3

    .line 360
    int-to-float p3, p3

    .line 361
    const/high16 v1, 0x40000000    # 2.0f

    .line 362
    .line 363
    div-float v1, p1, v1

    .line 364
    .line 365
    sub-float/2addr p3, v1

    .line 366
    float-to-int p3, p3

    .line 367
    goto :goto_3

    .line 368
    :cond_a
    iget p3, p4, Landroid/graphics/Rect;->top:I

    .line 369
    .line 370
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 371
    .line 372
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    add-int/2addr p3, v1

    .line 377
    :goto_3
    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 378
    .line 379
    iget p3, p4, Landroid/graphics/Rect;->right:I

    .line 380
    .line 381
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 382
    .line 383
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    sub-int/2addr p3, v1

    .line 388
    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 389
    .line 390
    iget p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 391
    .line 392
    if-ne p3, v2, :cond_b

    .line 393
    .line 394
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 395
    .line 396
    invoke-virtual {p3}, Landroid/widget/TextView;->getMinLines()I

    .line 397
    .line 398
    .line 399
    move-result p3

    .line 400
    if-gt p3, v2, :cond_b

    .line 401
    .line 402
    iget p3, v0, Landroid/graphics/Rect;->top:I

    .line 403
    .line 404
    int-to-float p3, p3

    .line 405
    add-float/2addr p3, p1

    .line 406
    float-to-int p1, p3

    .line 407
    goto :goto_4

    .line 408
    :cond_b
    iget p1, p4, Landroid/graphics/Rect;->bottom:I

    .line 409
    .line 410
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 411
    .line 412
    invoke-virtual {p3}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 413
    .line 414
    .line 415
    move-result p3

    .line 416
    sub-int/2addr p1, p3

    .line 417
    :goto_4
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 418
    .line 419
    iget p3, v0, Landroid/graphics/Rect;->left:I

    .line 420
    .line 421
    iget p4, v0, Landroid/graphics/Rect;->top:I

    .line 422
    .line 423
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 424
    .line 425
    iget-object v1, p2, Laa;->c:Landroid/graphics/Rect;

    .line 426
    .line 427
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 428
    .line 429
    if-ne v3, p3, :cond_c

    .line 430
    .line 431
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 432
    .line 433
    if-ne v3, p4, :cond_c

    .line 434
    .line 435
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 436
    .line 437
    if-ne v3, v0, :cond_c

    .line 438
    .line 439
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 440
    .line 441
    if-ne v3, p1, :cond_c

    .line 442
    .line 443
    goto :goto_5

    .line 444
    :cond_c
    invoke-virtual {v1, p3, p4, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 445
    .line 446
    .line 447
    iput-boolean v2, p2, Laa;->M:Z

    .line 448
    .line 449
    :goto_5
    invoke-virtual {p2, p5}, Laa;->h(Z)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    if-eqz p1, :cond_f

    .line 457
    .line 458
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Z

    .line 459
    .line 460
    if-nez p1, :cond_f

    .line 461
    .line 462
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    .line 463
    .line 464
    .line 465
    return-void

    .line 466
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 467
    .line 468
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 469
    .line 470
    .line 471
    throw p0

    .line 472
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 473
    .line 474
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 475
    .line 476
    .line 477
    throw p0

    .line 478
    :cond_f
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p2}, Lkh;->m()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lk20;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lk20;

    .line 10
    .line 11
    iget-object v0, p1, Ld;->a:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Lk20;->c:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-boolean p1, p1, Lk20;->d:Z

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    new-instance p1, Lu6;

    .line 26
    .line 27
    const/16 v0, 0xb

    .line 28
    .line 29
    invoke-direct {p1, v0, p0}, Lu6;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Z

    .line 10
    .line 11
    if-eq v0, p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 14
    .line 15
    iget-object p1, p1, Lqz;->e:Lvc;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    .line 18
    .line 19
    invoke-interface {p1, v1}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 24
    .line 25
    iget-object v2, v2, Lqz;->f:Lvc;

    .line 26
    .line 27
    invoke-interface {v2, v1}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 32
    .line 33
    iget-object v3, v3, Lqz;->h:Lvc;

    .line 34
    .line 35
    invoke-interface {v3, v1}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 40
    .line 41
    iget-object v4, v4, Lqz;->g:Lvc;

    .line 42
    .line 43
    invoke-interface {v4, v1}, Lvc;->a(Landroid/graphics/RectF;)F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 48
    .line 49
    iget-object v5, v4, Lqz;->a:Lnm;

    .line 50
    .line 51
    iget-object v6, v4, Lqz;->b:Lnm;

    .line 52
    .line 53
    iget-object v7, v4, Lqz;->d:Lnm;

    .line 54
    .line 55
    iget-object v4, v4, Lqz;->c:Lnm;

    .line 56
    .line 57
    new-instance v8, Lqg;

    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    invoke-direct {v8, v9}, Lqg;-><init>(I)V

    .line 61
    .line 62
    .line 63
    new-instance v9, Lqg;

    .line 64
    .line 65
    const/4 v10, 0x0

    .line 66
    invoke-direct {v9, v10}, Lqg;-><init>(I)V

    .line 67
    .line 68
    .line 69
    new-instance v10, Lqg;

    .line 70
    .line 71
    const/4 v11, 0x0

    .line 72
    invoke-direct {v10, v11}, Lqg;-><init>(I)V

    .line 73
    .line 74
    .line 75
    new-instance v11, Lqg;

    .line 76
    .line 77
    const/4 v12, 0x0

    .line 78
    invoke-direct {v11, v12}, Lqg;-><init>(I)V

    .line 79
    .line 80
    .line 81
    new-instance v12, Le;

    .line 82
    .line 83
    invoke-direct {v12, v2}, Le;-><init>(F)V

    .line 84
    .line 85
    .line 86
    new-instance v2, Le;

    .line 87
    .line 88
    invoke-direct {v2, p1}, Le;-><init>(F)V

    .line 89
    .line 90
    .line 91
    new-instance p1, Le;

    .line 92
    .line 93
    invoke-direct {p1, v1}, Le;-><init>(F)V

    .line 94
    .line 95
    .line 96
    new-instance v1, Le;

    .line 97
    .line 98
    invoke-direct {v1, v3}, Le;-><init>(F)V

    .line 99
    .line 100
    .line 101
    new-instance v3, Lqz;

    .line 102
    .line 103
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v6, v3, Lqz;->a:Lnm;

    .line 107
    .line 108
    iput-object v5, v3, Lqz;->b:Lnm;

    .line 109
    .line 110
    iput-object v7, v3, Lqz;->c:Lnm;

    .line 111
    .line 112
    iput-object v4, v3, Lqz;->d:Lnm;

    .line 113
    .line 114
    iput-object v12, v3, Lqz;->e:Lvc;

    .line 115
    .line 116
    iput-object v2, v3, Lqz;->f:Lvc;

    .line 117
    .line 118
    iput-object v1, v3, Lqz;->g:Lvc;

    .line 119
    .line 120
    iput-object p1, v3, Lqz;->h:Lvc;

    .line 121
    .line 122
    iput-object v8, v3, Lqz;->i:Lqg;

    .line 123
    .line 124
    iput-object v9, v3, Lqz;->j:Lqg;

    .line 125
    .line 126
    iput-object v10, v3, Lqz;->k:Lqg;

    .line 127
    .line 128
    iput-object v11, v3, Lqz;->l:Lqg;

    .line 129
    .line 130
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Z

    .line 131
    .line 132
    invoke-virtual {p0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setShapeAppearanceModel(Lqz;)V

    .line 133
    .line 134
    .line 135
    :cond_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lk20;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ld;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, v1, Lk20;->c:Ljava/lang/CharSequence;

    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 23
    .line 24
    iget v0, p0, Lkh;->i:I

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 29
    .line 30
    iget-boolean p0, p0, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    :goto_0
    iput-boolean p0, v1, Lk20;->d:Z

    .line 38
    .line 39
    return-object v1
.end method

.method public final p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget v1, Ltu;->colorControlActivated:I

    .line 11
    .line 12
    invoke-static {v0, v1}, Ld40;->G(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    :cond_1
    move-object v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    .line 22
    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    invoke-static {v0, v3}, Lvd;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_3
    iget v0, v1, Landroid/util/TypedValue;->data:I

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 39
    .line 40
    if-eqz v1, :cond_7

    .line 41
    .line 42
    invoke-static {v1}, Ld0;->e(Landroid/widget/EditText;)Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_4

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 50
    .line 51
    invoke-static {v1}, Ld0;->e(Landroid/widget/EditText;)Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_5

    .line 64
    .line 65
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 66
    .line 67
    if-eqz v2, :cond_6

    .line 68
    .line 69
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 70
    .line 71
    if-eqz v2, :cond_6

    .line 72
    .line 73
    :cond_5
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 74
    .line 75
    if-eqz p0, :cond_6

    .line 76
    .line 77
    move-object v0, p0

    .line 78
    :cond_6
    invoke-static {v1, v0}, Lqf;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 79
    .line 80
    .line 81
    :cond_7
    :goto_1
    return-void
.end method

.method public final q()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x1

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixText()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixTextView()Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_4

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-lez v6, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 46
    .line 47
    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    sub-int/2addr v0, v6

    .line 52
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/ColorDrawable;

    .line 53
    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:I

    .line 57
    .line 58
    if-eq v6, v0, :cond_3

    .line 59
    .line 60
    :cond_2
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .line 61
    .line 62
    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/ColorDrawable;

    .line 66
    .line 67
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:I

    .line 68
    .line 69
    invoke-virtual {v6, v1, v1, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    aget-object v6, v0, v1

    .line 79
    .line 80
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/ColorDrawable;

    .line 81
    .line 82
    if-eq v6, v7, :cond_5

    .line 83
    .line 84
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 85
    .line 86
    aget-object v8, v0, v5

    .line 87
    .line 88
    aget-object v9, v0, v3

    .line 89
    .line 90
    aget-object v0, v0, v4

    .line 91
    .line 92
    invoke-virtual {v6, v7, v8, v9, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/ColorDrawable;

    .line 97
    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 107
    .line 108
    aget-object v7, v0, v5

    .line 109
    .line 110
    aget-object v8, v0, v3

    .line 111
    .line 112
    aget-object v0, v0, v4

    .line 113
    .line 114
    invoke-virtual {v6, v2, v7, v8, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 115
    .line 116
    .line 117
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/ColorDrawable;

    .line 118
    .line 119
    :goto_0
    move v0, v5

    .line 120
    goto :goto_1

    .line 121
    :cond_5
    move v0, v1

    .line 122
    :goto_1
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 123
    .line 124
    invoke-virtual {v6}, Lkh;->e()Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-nez v7, :cond_7

    .line 129
    .line 130
    iget v7, v6, Lkh;->i:I

    .line 131
    .line 132
    if-eqz v7, :cond_6

    .line 133
    .line 134
    invoke-virtual {v6}, Lkh;->d()Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-nez v7, :cond_7

    .line 139
    .line 140
    :cond_6
    iget-object v7, v6, Lkh;->p:Ljava/lang/CharSequence;

    .line 141
    .line 142
    if-eqz v7, :cond_d

    .line 143
    .line 144
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-lez v7, :cond_d

    .line 149
    .line 150
    iget-object v7, v6, Lkh;->q:Lt5;

    .line 151
    .line 152
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    iget-object v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 157
    .line 158
    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    sub-int/2addr v7, v8

    .line 163
    invoke-virtual {v6}, Lkh;->e()Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-eqz v8, :cond_8

    .line 168
    .line 169
    iget-object v2, v6, Lkh;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_8
    iget v8, v6, Lkh;->i:I

    .line 173
    .line 174
    if-eqz v8, :cond_9

    .line 175
    .line 176
    invoke-virtual {v6}, Lkh;->d()Z

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    if-eqz v8, :cond_9

    .line 181
    .line 182
    iget-object v2, v6, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 183
    .line 184
    :cond_9
    :goto_2
    if-eqz v2, :cond_a

    .line 185
    .line 186
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    add-int/2addr v6, v7

    .line 191
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 196
    .line 197
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    add-int v7, v2, v6

    .line 202
    .line 203
    :cond_a
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 204
    .line 205
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/ColorDrawable;

    .line 210
    .line 211
    if-eqz v6, :cond_b

    .line 212
    .line 213
    iget v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    .line 214
    .line 215
    if-eq v8, v7, :cond_b

    .line 216
    .line 217
    iput v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    .line 218
    .line 219
    invoke-virtual {v6, v1, v1, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 223
    .line 224
    aget-object v1, v2, v1

    .line 225
    .line 226
    aget-object v3, v2, v5

    .line 227
    .line 228
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/ColorDrawable;

    .line 229
    .line 230
    aget-object v2, v2, v4

    .line 231
    .line 232
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 233
    .line 234
    .line 235
    return v5

    .line 236
    :cond_b
    if-nez v6, :cond_c

    .line 237
    .line 238
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .line 239
    .line 240
    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 241
    .line 242
    .line 243
    iput-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/ColorDrawable;

    .line 244
    .line 245
    iput v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    .line 246
    .line 247
    invoke-virtual {v6, v1, v1, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 248
    .line 249
    .line 250
    :cond_c
    aget-object v3, v2, v3

    .line 251
    .line 252
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/ColorDrawable;

    .line 253
    .line 254
    if-eq v3, v6, :cond_f

    .line 255
    .line 256
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/graphics/drawable/Drawable;

    .line 257
    .line 258
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 259
    .line 260
    aget-object v0, v2, v1

    .line 261
    .line 262
    aget-object v1, v2, v5

    .line 263
    .line 264
    aget-object v2, v2, v4

    .line 265
    .line 266
    invoke-virtual {p0, v0, v1, v6, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 267
    .line 268
    .line 269
    return v5

    .line 270
    :cond_d
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/ColorDrawable;

    .line 271
    .line 272
    if-eqz v6, :cond_f

    .line 273
    .line 274
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 275
    .line 276
    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    aget-object v3, v6, v3

    .line 281
    .line 282
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/ColorDrawable;

    .line 283
    .line 284
    if-ne v3, v7, :cond_e

    .line 285
    .line 286
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 287
    .line 288
    aget-object v1, v6, v1

    .line 289
    .line 290
    aget-object v3, v6, v5

    .line 291
    .line 292
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/graphics/drawable/Drawable;

    .line 293
    .line 294
    aget-object v4, v6, v4

    .line 295
    .line 296
    invoke-virtual {v0, v1, v3, v7, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_e
    move v5, v0

    .line 301
    :goto_3
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/ColorDrawable;

    .line 302
    .line 303
    return v5

    .line 304
    :cond_f
    return v0
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget-object v1, Lwf;->a:[I

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorCurrentTextColors()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 34
    .line 35
    invoke-static {p0, v1}, Lj4;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 56
    .line 57
    invoke-static {p0, v1}, Lj4;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_0
    return-void
.end method

.method public final s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditTextBoxBackground()Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 29
    .line 30
    sget-object v2, Lw50;->a:Ljava/util/WeakHashMap;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Z

    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method

.method public setBoxBackgroundColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 8
    .line 9
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    .line 10
    .line 11
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r0:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Ljc;->a(Landroid/content/Context;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setBoxBackgroundColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 6
    .line 7
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 8
    .line 9
    const v0, -0x101009e

    .line 10
    .line 11
    .line 12
    filled-new-array {v0}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    .line 22
    .line 23
    const v0, 0x101009c

    .line 24
    .line 25
    .line 26
    const v2, 0x101009e

    .line 27
    .line 28
    .line 29
    filled-new-array {v0, v2}, [I

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    .line 38
    .line 39
    const v0, 0x1010367

    .line 40
    .line 41
    .line 42
    filled-new-array {v0, v2}, [I

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r0:I

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public setBoxCollapsedPaddingTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 2
    .line 3
    return-void
.end method

.method public setBoxCornerFamily(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqz;->e()Lpz;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 8
    .line 9
    iget-object v1, v1, Lqz;->e:Lvc;

    .line 10
    .line 11
    invoke-static {p1}, Ld40;->l(I)Lnm;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iput-object v2, v0, Lpz;->a:Lnm;

    .line 16
    .line 17
    iput-object v1, v0, Lpz;->e:Lvc;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 20
    .line 21
    iget-object v1, v1, Lqz;->f:Lvc;

    .line 22
    .line 23
    invoke-static {p1}, Ld40;->l(I)Lnm;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, v0, Lpz;->b:Lnm;

    .line 28
    .line 29
    iput-object v1, v0, Lpz;->f:Lvc;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 32
    .line 33
    iget-object v1, v1, Lqz;->h:Lvc;

    .line 34
    .line 35
    invoke-static {p1}, Ld40;->l(I)Lnm;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, v0, Lpz;->d:Lnm;

    .line 40
    .line 41
    iput-object v1, v0, Lpz;->h:Lvc;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 44
    .line 45
    iget-object v1, v1, Lqz;->g:Lvc;

    .line 46
    .line 47
    invoke-static {p1}, Ld40;->l(I)Lnm;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, v0, Lpz;->c:Lnm;

    .line 52
    .line 53
    iput-object v1, v0, Lpz;->g:Lvc;

    .line 54
    .line 55
    invoke-virtual {v0}, Lpz;->a()Lqz;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    .line 12
    .line 13
    const v0, -0x101009e

    .line 14
    .line 15
    .line 16
    filled-new-array {v0}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    .line 26
    .line 27
    const v0, 0x1010367

    .line 28
    .line 29
    .line 30
    const v2, 0x101009e

    .line 31
    .line 32
    .line 33
    filled-new-array {v0, v2}, [I

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:I

    .line 42
    .line 43
    const v0, 0x101009c

    .line 44
    .line 45
    .line 46
    filled-new-array {v0, v2}, [I

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eq v0, v1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 70
    .line 71
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setBoxStrokeWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBoxStrokeWidthFocused(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBoxStrokeWidthFocusedResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidthFocused(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setBoxStrokeWidthResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidth(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    new-instance v3, Lt5;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-direct {v3, v4, v2}, Lt5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    .line 19
    .line 20
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 21
    .line 22
    sget v4, Lnv;->textinput_counter:I

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/Typeface;

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 43
    .line 44
    invoke-virtual {v1, v3, v0}, Ldm;->a(Lt5;I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sget v3, Lzu;->mtrl_textinput_counter_margin_start:I

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 76
    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->n(Landroid/text/Editable;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 89
    .line 90
    invoke-virtual {v1, v3, v0}, Ldm;->g(Lt5;I)V

    .line 91
    .line 92
    .line 93
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 94
    .line 95
    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Z

    .line 96
    .line 97
    :cond_4
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 12
    .line 13
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Z

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->n(Landroid/text/Editable;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public setCounterOverflowTextAppearance(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCounterTextAppearance(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCounterTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCursorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCursorErrorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->u(ZZ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->k(Landroid/view/ViewGroup;Z)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setEndIconActivated(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setEndIconCheckable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setEndIconContentDescription(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eq v0, p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public setEndIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 27
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 28
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEndIconDrawable(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lvd;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iget-object v0, p0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 16
    .line 17
    iget-object v1, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ln4;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lkh;->k:Landroid/content/res/ColorStateList;

    .line 25
    .line 26
    iget-object v2, p0, Lkh;->l:Landroid/graphics/PorterDuff$Mode;

    .line 27
    .line 28
    invoke-static {v0, v1, p1, v2}, Ld40;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lkh;->k:Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    invoke-static {v0, v1, p0}, Ld40;->F(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 37
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    iget-object v0, p0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 38
    iget-object v1, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, p1}, Ln4;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lkh;->k:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lkh;->l:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1, p1, v2}, Ld40;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 40
    iget-object p0, p0, Lkh;->k:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1, p0}, Ld40;->F(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setEndIconMinSize(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    if-ltz p1, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lkh;->m:I

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lkh;->m:I

    .line 10
    .line 11
    iget-object v0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lkh;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string p0, "endIconSize cannot be less than 0"

    .line 32
    .line 33
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setEndIconMode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkh;->g(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object v0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    iget-object p0, p0, Lkh;->o:Landroid/view/View$OnLongClickListener;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p0}, Ld40;->Q(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iput-object p1, p0, Lkh;->o:Landroid/view/View$OnLongClickListener;

    .line 4
    .line 5
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Ld40;->Q(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setEndIconScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iput-object p1, p0, Lkh;->n:Landroid/widget/ImageView$ScaleType;

    .line 4
    .line 5
    iget-object v0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lkh;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setEndIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object v0, p0, Lkh;->k:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lkh;->k:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iget-object v0, p0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    .line 11
    iget-object v1, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 12
    .line 13
    iget-object p0, p0, Lkh;->l:Landroid/graphics/PorterDuff$Mode;

    .line 14
    .line 15
    invoke-static {v0, v1, p1, p0}, Ld40;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object v0, p0, Lkh;->l:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lkh;->l:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    iget-object v0, p0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    .line 11
    iget-object v1, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 12
    .line 13
    iget-object p0, p0, Lkh;->k:Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    invoke-static {v0, v1, p0, p1}, Ld40;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setEndIconVisible(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkh;->h(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 2
    .line 3
    iget-boolean v1, v0, Ldm;->q:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Ldm;->c()V

    .line 25
    .line 26
    .line 27
    iput-object p1, v0, Ldm;->p:Ljava/lang/CharSequence;

    .line 28
    .line 29
    iget-object p0, v0, Ldm;->r:Lt5;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget p0, v0, Ldm;->n:I

    .line 35
    .line 36
    if-eq p0, v2, :cond_2

    .line 37
    .line 38
    iput v2, v0, Ldm;->o:I

    .line 39
    .line 40
    :cond_2
    iget v1, v0, Ldm;->o:I

    .line 41
    .line 42
    iget-object v2, v0, Ldm;->r:Lt5;

    .line 43
    .line 44
    invoke-virtual {v0, v2, p1}, Ldm;->h(Lt5;Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {v0, p0, v1, p1}, Ldm;->i(IIZ)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    invoke-virtual {v0}, Ldm;->f()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public setErrorAccessibilityLiveRegion(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 2
    .line 3
    iput p1, p0, Ldm;->t:I

    .line 4
    .line 5
    iget-object p0, p0, Ldm;->r:Lt5;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lw50;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setErrorContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 2
    .line 3
    iput-object p1, p0, Ldm;->s:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget-object p0, p0, Ldm;->r:Lt5;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 2
    .line 3
    iget-object v0, p0, Ldm;->h:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    iget-boolean v1, p0, Ldm;->q:Z

    .line 6
    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Ldm;->c()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz p1, :cond_6

    .line 16
    .line 17
    new-instance v0, Lt5;

    .line 18
    .line 19
    iget-object v3, p0, Ldm;->g:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v0, v3, v2}, Lt5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Ldm;->r:Lt5;

    .line 25
    .line 26
    sget v2, Lnv;->textinput_error:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Ldm;->r:Lt5;

    .line 32
    .line 33
    const/4 v2, 0x5

    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setTextAlignment(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Ldm;->B:Landroid/graphics/Typeface;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v2, p0, Ldm;->r:Lt5;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget v0, p0, Ldm;->u:I

    .line 47
    .line 48
    iput v0, p0, Ldm;->u:I

    .line 49
    .line 50
    iget-object v2, p0, Ldm;->r:Lt5;

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget-object v3, p0, Ldm;->h:Lcom/google/android/material/textfield/TextInputLayout;

    .line 55
    .line 56
    invoke-virtual {v3, v2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lt5;I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Ldm;->v:Landroid/content/res/ColorStateList;

    .line 60
    .line 61
    iput-object v0, p0, Ldm;->v:Landroid/content/res/ColorStateList;

    .line 62
    .line 63
    iget-object v2, p0, Ldm;->r:Lt5;

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object v0, p0, Ldm;->s:Ljava/lang/CharSequence;

    .line 73
    .line 74
    iput-object v0, p0, Ldm;->s:Ljava/lang/CharSequence;

    .line 75
    .line 76
    iget-object v2, p0, Ldm;->r:Lt5;

    .line 77
    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget v0, p0, Ldm;->t:I

    .line 84
    .line 85
    iput v0, p0, Ldm;->t:I

    .line 86
    .line 87
    iget-object v2, p0, Ldm;->r:Lt5;

    .line 88
    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    sget-object v3, Lw50;->a:Ljava/util/WeakHashMap;

    .line 92
    .line 93
    invoke-virtual {v2, v0}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 94
    .line 95
    .line 96
    :cond_5
    iget-object v0, p0, Ldm;->r:Lt5;

    .line 97
    .line 98
    const/4 v2, 0x4

    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Ldm;->r:Lt5;

    .line 103
    .line 104
    invoke-virtual {p0, v0, v1}, Ldm;->a(Lt5;I)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    invoke-virtual {p0}, Ldm;->f()V

    .line 109
    .line 110
    .line 111
    iget-object v3, p0, Ldm;->r:Lt5;

    .line 112
    .line 113
    invoke-virtual {p0, v3, v1}, Ldm;->g(Lt5;I)V

    .line 114
    .line 115
    .line 116
    iput-object v2, p0, Ldm;->r:Lt5;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 122
    .line 123
    .line 124
    :goto_0
    iput-boolean p1, p0, Ldm;->q:Z

    .line 125
    .line 126
    return-void
.end method

.method public setErrorIconDrawable(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lvd;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Lkh;->i(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 19
    .line 20
    iget-object v0, p0, Lkh;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 21
    .line 22
    iget-object p0, p0, Lkh;->d:Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    invoke-static {p1, v0, p0}, Ld40;->F(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    invoke-virtual {p0, p1}, Lkh;->i(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setErrorIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object v0, p0, Lkh;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    iget-object p0, p0, Lkh;->f:Landroid/view/View$OnLongClickListener;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p0}, Ld40;->Q(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setErrorIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iput-object p1, p0, Lkh;->f:Landroid/view/View$OnLongClickListener;

    .line 4
    .line 5
    iget-object p0, p0, Lkh;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Ld40;->Q(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setErrorIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object v0, p0, Lkh;->d:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lkh;->d:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iget-object v0, p0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    .line 11
    iget-object v1, p0, Lkh;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 12
    .line 13
    iget-object p0, p0, Lkh;->e:Landroid/graphics/PorterDuff$Mode;

    .line 14
    .line 15
    invoke-static {v0, v1, p1, p0}, Ld40;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object v0, p0, Lkh;->e:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lkh;->e:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    iget-object v0, p0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    .line 11
    iget-object v1, p0, Lkh;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 12
    .line 13
    iget-object p0, p0, Lkh;->d:Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    invoke-static {v0, v1, p0, p1}, Ld40;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 2
    .line 3
    iput p1, p0, Ldm;->u:I

    .line 4
    .line 5
    iget-object v0, p0, Ldm;->r:Lt5;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Ldm;->h:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lt5;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 2
    .line 3
    iput-object p1, p0, Ldm;->v:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    iget-object p0, p0, Ldm;->r:Lt5;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setExpandedHintEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->u(ZZ)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean p1, v1, Ldm;->x:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    iget-boolean v0, v1, Ldm;->x:Z

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {v1}, Ldm;->c()V

    .line 27
    .line 28
    .line 29
    iput-object p1, v1, Ldm;->w:Ljava/lang/CharSequence;

    .line 30
    .line 31
    iget-object p0, v1, Ldm;->y:Lt5;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget p0, v1, Ldm;->n:I

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    if-eq p0, v0, :cond_3

    .line 40
    .line 41
    iput v0, v1, Ldm;->o:I

    .line 42
    .line 43
    :cond_3
    iget v0, v1, Ldm;->o:I

    .line 44
    .line 45
    iget-object v2, v1, Ldm;->y:Lt5;

    .line 46
    .line 47
    invoke-virtual {v1, v2, p1}, Ldm;->h(Lt5;Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {v1, p0, v0, p1}, Ldm;->i(IIZ)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 2
    .line 3
    iput-object p1, p0, Ldm;->A:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    iget-object p0, p0, Ldm;->y:Lt5;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 2
    .line 3
    iget-object v0, p0, Ldm;->h:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    iget-boolean v1, p0, Ldm;->x:Z

    .line 6
    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Ldm;->c()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz p1, :cond_4

    .line 16
    .line 17
    new-instance v0, Lt5;

    .line 18
    .line 19
    iget-object v3, p0, Ldm;->g:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v0, v3, v1}, Lt5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Ldm;->y:Lt5;

    .line 25
    .line 26
    sget v1, Lnv;->textinput_helper_text:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Ldm;->y:Lt5;

    .line 32
    .line 33
    const/4 v1, 0x5

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setTextAlignment(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Ldm;->B:Landroid/graphics/Typeface;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Ldm;->y:Lt5;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Ldm;->y:Lt5;

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Ldm;->y:Lt5;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 55
    .line 56
    .line 57
    iget v0, p0, Ldm;->z:I

    .line 58
    .line 59
    iput v0, p0, Ldm;->z:I

    .line 60
    .line 61
    iget-object v1, p0, Ldm;->y:Lt5;

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object v0, p0, Ldm;->A:Landroid/content/res/ColorStateList;

    .line 69
    .line 70
    iput-object v0, p0, Ldm;->A:Landroid/content/res/ColorStateList;

    .line 71
    .line 72
    iget-object v1, p0, Ldm;->y:Lt5;

    .line 73
    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    iget-object v0, p0, Ldm;->y:Lt5;

    .line 82
    .line 83
    invoke-virtual {p0, v0, v2}, Ldm;->a(Lt5;I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Ldm;->y:Lt5;

    .line 87
    .line 88
    new-instance v1, Lcm;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcm;-><init>(Ldm;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {p0}, Ldm;->c()V

    .line 98
    .line 99
    .line 100
    iget v3, p0, Ldm;->n:I

    .line 101
    .line 102
    const/4 v4, 0x2

    .line 103
    if-ne v3, v4, :cond_5

    .line 104
    .line 105
    const/4 v4, 0x0

    .line 106
    iput v4, p0, Ldm;->o:I

    .line 107
    .line 108
    :cond_5
    iget v4, p0, Ldm;->o:I

    .line 109
    .line 110
    iget-object v5, p0, Ldm;->y:Lt5;

    .line 111
    .line 112
    const-string v6, ""

    .line 113
    .line 114
    invoke-virtual {p0, v5, v6}, Ldm;->h(Lt5;Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    invoke-virtual {p0, v3, v4, v5}, Ldm;->i(IIZ)V

    .line 119
    .line 120
    .line 121
    iget-object v3, p0, Ldm;->y:Lt5;

    .line 122
    .line 123
    invoke-virtual {p0, v3, v2}, Ldm;->g(Lt5;I)V

    .line 124
    .line 125
    .line 126
    iput-object v1, p0, Ldm;->y:Lt5;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 132
    .line 133
    .line 134
    :goto_0
    iput-boolean p1, p0, Ldm;->x:Z

    .line 135
    .line 136
    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 2
    .line 3
    iput p1, p0, Ldm;->z:I

    .line 4
    .line 5
    iget-object p0, p0, Ldm;->y:Lt5;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setHint(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_4

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    .line 57
    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    .line 74
    .line 75
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 76
    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()V

    .line 80
    .line 81
    .line 82
    :cond_4
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 5

    .line 1
    new-instance v0, Le20;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Laa;

    .line 4
    .line 5
    iget-object v2, v1, Laa;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v0, v3, p1}, Le20;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Le20;->j:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iput-object p1, v1, Laa;->k:Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    :cond_0
    iget p1, v0, Le20;->k:F

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    cmpl-float v3, p1, v3

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iput p1, v1, Laa;->i:F

    .line 28
    .line 29
    :cond_1
    iget-object p1, v0, Le20;->a:Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iput-object p1, v1, Laa;->U:Landroid/content/res/ColorStateList;

    .line 34
    .line 35
    :cond_2
    iget p1, v0, Le20;->e:F

    .line 36
    .line 37
    iput p1, v1, Laa;->S:F

    .line 38
    .line 39
    iget p1, v0, Le20;->f:F

    .line 40
    .line 41
    iput p1, v1, Laa;->T:F

    .line 42
    .line 43
    iget p1, v0, Le20;->g:F

    .line 44
    .line 45
    iput p1, v1, Laa;->R:F

    .line 46
    .line 47
    iget p1, v0, Le20;->i:F

    .line 48
    .line 49
    iput p1, v1, Laa;->V:F

    .line 50
    .line 51
    iget-object p1, v1, Laa;->y:Ld8;

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    iput-boolean v3, p1, Ld8;->c:Z

    .line 57
    .line 58
    :cond_3
    new-instance p1, Ld8;

    .line 59
    .line 60
    new-instance v3, Lo0;

    .line 61
    .line 62
    const/4 v4, 0x6

    .line 63
    invoke-direct {v3, v4, v1}, Lo0;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Le20;->a()V

    .line 67
    .line 68
    .line 69
    iget-object v4, v0, Le20;->n:Landroid/graphics/Typeface;

    .line 70
    .line 71
    invoke-direct {p1, v3, v4}, Ld8;-><init>(Lo0;Landroid/graphics/Typeface;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, v1, Laa;->y:Ld8;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v2, v1, Laa;->y:Ld8;

    .line 81
    .line 82
    invoke-virtual {v0, p1, v2}, Le20;->c(Landroid/content/Context;Lns;)V

    .line 83
    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    invoke-virtual {v1, p1}, Laa;->h(Z)V

    .line 87
    .line 88
    .line 89
    iget-object v0, v1, Laa;->k:Landroid/content/res/ColorStateList;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->u(ZZ)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()V

    .line 101
    .line 102
    .line 103
    :cond_4
    return-void
.end method

.method public setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Laa;

    .line 11
    .line 12
    iget-object v2, v0, Laa;->k:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    if-eq v2, p1, :cond_0

    .line 15
    .line 16
    iput-object p1, v0, Laa;->k:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Laa;->h(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->u(ZZ)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public setLengthCounter(Lj20;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lj20;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxEms(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setMaxWidthResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setMinEms(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinEms(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setMinWidthResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 22
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lvd;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ln4;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 22
    iget-object p0, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 23
    invoke-virtual {p0, p1}, Ln4;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lkh;->i:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lkh;->g(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lkh;->g(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iput-object p1, p0, Lkh;->k:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    iget-object v0, p0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 6
    .line 7
    iget-object v1, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 8
    .line 9
    iget-object p0, p0, Lkh;->l:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    invoke-static {v0, v1, p1, p0}, Ld40;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iput-object p1, p0, Lkh;->l:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    iget-object v0, p0, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 6
    .line 7
    iget-object v1, p0, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 8
    .line 9
    iget-object p0, p0, Lkh;->k:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    invoke-static {v0, v1, p0, p1}, Ld40;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setPlaceholderText(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lt5;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v0, v2, v1}, Lt5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 16
    .line 17
    sget v2, Lnv;->textinput_placeholder:I

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()Luh;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Luh;

    .line 33
    .line 34
    const-wide/16 v2, 0x43

    .line 35
    .line 36
    iput-wide v2, v0, Ls30;->b:J

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()Luh;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Luh;

    .line 43
    .line 44
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Landroid/content/res/ColorStateList;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Ljava/lang/CharSequence;

    .line 74
    .line 75
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 76
    .line 77
    if-nez p1, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->v(Landroid/text/Editable;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public setPlaceholderTextAppearance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setPrefixText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, p1

    .line 15
    :goto_0
    iput-object v0, p0, Lb10;->c:Ljava/lang/CharSequence;

    .line 16
    .line 17
    iget-object v0, p0, Lb10;->b:Lt5;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lb10;->e()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setPrefixTextAppearance(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    iget-object p0, p0, Lb10;->b:Lt5;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPrefixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    iget-object p0, p0, Lb10;->b:Lt5;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setShapeAppearanceModel(Lqz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lxq;->a:Lwq;

    .line 6
    .line 7
    iget-object v0, v0, Lwq;->a:Lqz;

    .line 8
    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lqz;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setStartIconCheckable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    iget-object p0, p0, Lb10;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setStartIconContentDescription(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setStartIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 17
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 18
    iget-object p0, p0, Lb10;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setStartIconDrawable(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lvd;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    invoke-virtual {p0, p1}, Lb10;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStartIconMinSize(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    if-ltz p1, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lb10;->g:I

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lb10;->g:I

    .line 10
    .line 11
    iget-object p0, p0, Lb10;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string p0, "startIconSize cannot be less than 0"

    .line 24
    .line 25
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    iget-object v0, p0, Lb10;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    iget-object p0, p0, Lb10;->i:Landroid/view/View$OnLongClickListener;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p0}, Ld40;->Q(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    iput-object p1, p0, Lb10;->i:Landroid/view/View$OnLongClickListener;

    .line 4
    .line 5
    iget-object p0, p0, Lb10;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Ld40;->Q(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setStartIconScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    iput-object p1, p0, Lb10;->h:Landroid/widget/ImageView$ScaleType;

    .line 4
    .line 5
    iget-object p0, p0, Lb10;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setStartIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    iget-object v0, p0, Lb10;->e:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lb10;->e:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iget-object v0, p0, Lb10;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    .line 11
    iget-object v1, p0, Lb10;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 12
    .line 13
    iget-object p0, p0, Lb10;->f:Landroid/graphics/PorterDuff$Mode;

    .line 14
    .line 15
    invoke-static {v0, v1, p1, p0}, Ld40;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    iget-object v0, p0, Lb10;->f:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lb10;->f:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    iget-object v0, p0, Lb10;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    .line 11
    iget-object v1, p0, Lb10;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 12
    .line 13
    iget-object p0, p0, Lb10;->e:Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    invoke-static {v0, v1, p0, p1}, Ld40;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setStartIconVisible(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lb10;->c(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSuffixText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, p1

    .line 15
    :goto_0
    iput-object v0, p0, Lkh;->p:Ljava/lang/CharSequence;

    .line 16
    .line 17
    iget-object v0, p0, Lkh;->q:Lt5;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lkh;->n()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setSuffixTextAppearance(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object p0, p0, Lkh;->q:Lt5;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setSuffixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 2
    .line 3
    iget-object p0, p0, Lkh;->q:Lt5;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTextInputAccessibilityDelegate(Li20;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1}, Lw50;->l(Landroid/view/View;La0;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/Typeface;

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/Typeface;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Laa;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Laa;->m(Landroid/graphics/Typeface;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 13
    .line 14
    iget-object v1, v0, Ldm;->B:Landroid/graphics/Typeface;

    .line 15
    .line 16
    if-eq p1, v1, :cond_1

    .line 17
    .line 18
    iput-object p1, v0, Ldm;->B:Landroid/graphics/Typeface;

    .line 19
    .line 20
    iget-object v1, v0, Ldm;->r:Lt5;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, v0, Ldm;->y:Lt5;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 19
    .line 20
    if-eq p0, v2, :cond_0

    .line 21
    .line 22
    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final u(ZZ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    move v1, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v2

    .line 24
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    move v4, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v4, v2

    .line 37
    :goto_1
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    .line 38
    .line 39
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Laa;

    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    invoke-virtual {v6, v5}, Laa;->i(Landroid/content/res/ColorStateList;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    const/4 v5, 0x0

    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    .line 50
    .line 51
    iget v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    const v8, -0x101009e

    .line 56
    .line 57
    .line 58
    filled-new-array {v8}, [I

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-virtual {v0, v8, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    :cond_3
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v6, v0}, Laa;->i(Landroid/content/res/ColorStateList;)V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Ldm;

    .line 81
    .line 82
    iget-object v0, v0, Ldm;->r:Lt5;

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    move-object v0, v5

    .line 92
    :goto_2
    invoke-virtual {v6, v0}, Laa;->i(Landroid/content/res/ColorStateList;)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 97
    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 101
    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v6, v0}, Laa;->i(Landroid/content/res/ColorStateList;)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_7
    if-eqz v4, :cond_8

    .line 113
    .line 114
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    .line 115
    .line 116
    if-eqz v0, :cond_8

    .line 117
    .line 118
    iget-object v7, v6, Laa;->k:Landroid/content/res/ColorStateList;

    .line 119
    .line 120
    if-eq v7, v0, :cond_8

    .line 121
    .line 122
    iput-object v0, v6, Laa;->k:Landroid/content/res/ColorStateList;

    .line 123
    .line 124
    invoke-virtual {v6, v2}, Laa;->h(Z)V

    .line 125
    .line 126
    .line 127
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 128
    .line 129
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 130
    .line 131
    if-nez v1, :cond_f

    .line 132
    .line 133
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Z

    .line 134
    .line 135
    if-eqz v1, :cond_f

    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_9

    .line 142
    .line 143
    if-eqz v4, :cond_9

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_9
    if-nez p2, :cond_a

    .line 147
    .line 148
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Z

    .line 149
    .line 150
    if-nez p2, :cond_10

    .line 151
    .line 152
    :cond_a
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 153
    .line 154
    if-eqz p2, :cond_b

    .line 155
    .line 156
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-eqz p2, :cond_b

    .line 161
    .line 162
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 163
    .line 164
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 165
    .line 166
    .line 167
    :cond_b
    const/4 p2, 0x0

    .line 168
    if-eqz p1, :cond_c

    .line 169
    .line 170
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Z

    .line 171
    .line 172
    if-eqz p1, :cond_c

    .line 173
    .line 174
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_c
    invoke-virtual {v6, p2}, Laa;->k(F)V

    .line 179
    .line 180
    .line 181
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_d

    .line 186
    .line 187
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 188
    .line 189
    check-cast p1, Lrd;

    .line 190
    .line 191
    iget-object p1, p1, Lrd;->x:Lqd;

    .line 192
    .line 193
    iget-object p1, p1, Lqd;->q:Landroid/graphics/RectF;

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-nez p1, :cond_d

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_d

    .line 206
    .line 207
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 208
    .line 209
    check-cast p1, Lrd;

    .line 210
    .line 211
    invoke-virtual {p1, p2, p2, p2, p2}, Lrd;->n(FFFF)V

    .line 212
    .line 213
    .line 214
    :cond_d
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Z

    .line 215
    .line 216
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 217
    .line 218
    if-eqz p1, :cond_e

    .line 219
    .line 220
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 221
    .line 222
    if-eqz p2, :cond_e

    .line 223
    .line 224
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    .line 228
    .line 229
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Luh;

    .line 230
    .line 231
    invoke-static {p1, p2}, Lw30;->a(Landroid/widget/FrameLayout;Ls30;)V

    .line 232
    .line 233
    .line 234
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 235
    .line 236
    const/4 p1, 0x4

    .line 237
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    :cond_e
    iput-boolean v3, v7, Lb10;->j:Z

    .line 241
    .line 242
    invoke-virtual {v7}, Lb10;->e()V

    .line 243
    .line 244
    .line 245
    iput-boolean v3, v0, Lkh;->r:Z

    .line 246
    .line 247
    invoke-virtual {v0}, Lkh;->n()V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :cond_f
    :goto_5
    if-nez p2, :cond_11

    .line 252
    .line 253
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Z

    .line 254
    .line 255
    if-eqz p2, :cond_10

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_10
    return-void

    .line 259
    :cond_11
    :goto_6
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 260
    .line 261
    if-eqz p2, :cond_12

    .line 262
    .line 263
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    if-eqz p2, :cond_12

    .line 268
    .line 269
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 270
    .line 271
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 272
    .line 273
    .line 274
    :cond_12
    const/high16 p2, 0x3f800000    # 1.0f

    .line 275
    .line 276
    if-eqz p1, :cond_13

    .line 277
    .line 278
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Z

    .line 279
    .line 280
    if-eqz p1, :cond_13

    .line 281
    .line 282
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    .line 283
    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_13
    invoke-virtual {v6, p2}, Laa;->k(F)V

    .line 287
    .line 288
    .line 289
    :goto_7
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Z

    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-eqz p1, :cond_14

    .line 296
    .line 297
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    .line 298
    .line 299
    .line 300
    :cond_14
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 301
    .line 302
    if-nez p1, :cond_15

    .line 303
    .line 304
    goto :goto_8

    .line 305
    :cond_15
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    :goto_8
    invoke-virtual {p0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->v(Landroid/text/Editable;)V

    .line 310
    .line 311
    .line 312
    iput-boolean v2, v7, Lb10;->j:Z

    .line 313
    .line 314
    invoke-virtual {v7}, Lb10;->e()V

    .line 315
    .line 316
    .line 317
    iput-boolean v2, v0, Lkh;->r:Z

    .line 318
    .line 319
    invoke-virtual {v0}, Lkh;->n()V

    .line 320
    .line 321
    .line 322
    return-void
.end method

.method public final v(Landroid/text/Editable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lj20;

    .line 2
    .line 3
    check-cast v0, Lg9;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p1, v0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Z

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Ljava/lang/CharSequence;

    .line 34
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Ljava/lang/CharSequence;

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Luh;

    .line 49
    .line 50
    invoke-static {v1, p1}, Lw30;->a(Landroid/widget/FrameLayout;Ls30;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Ljava/lang/CharSequence;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Luh;

    .line 82
    .line 83
    invoke-static {v1, p1}, Lw30;->a(Landroid/widget/FrameLayout;Ls30;)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lt5;

    .line 87
    .line 88
    const/4 p1, 0x4

    .line 89
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    :cond_2
    return-void
.end method

.method public final w(ZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    const v2, 0x1010367

    .line 10
    .line 11
    .line 12
    const v3, 0x101009e

    .line 13
    .line 14
    .line 15
    filled-new-array {v2, v3}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 24
    .line 25
    const v4, 0x10102fe

    .line 26
    .line 27
    .line 28
    filled-new-array {v4, v3}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    if-eqz p2, :cond_1

    .line 42
    .line 43
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 47
    .line 48
    return-void
.end method

.method public final x()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 2
    .line 3
    if-eqz v0, :cond_16

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    move v0, v2

    .line 33
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 40
    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/view/View;->isHovered()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    :cond_3
    move v1, v2

    .line 50
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_5

    .line 55
    .line 56
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    .line 57
    .line 58
    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_7

    .line 66
    .line 67
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 68
    .line 69
    if-eqz v3, :cond_6

    .line 70
    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->w(ZZ)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorCurrentTextColors()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_7
    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 83
    .line 84
    if-eqz v3, :cond_9

    .line 85
    .line 86
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lt5;

    .line 87
    .line 88
    if-eqz v3, :cond_9

    .line 89
    .line 90
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 91
    .line 92
    if-eqz v4, :cond_8

    .line 93
    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->w(ZZ)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_8
    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_9
    if-eqz v0, :cond_a

    .line 106
    .line 107
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 108
    .line 109
    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_a
    if-eqz v1, :cond_b

    .line 113
    .line 114
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:I

    .line 115
    .line 116
    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_b
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    .line 120
    .line 121
    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 122
    .line 123
    :goto_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 124
    .line 125
    const/16 v4, 0x1d

    .line 126
    .line 127
    if-lt v3, v4, :cond_c

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 130
    .line 131
    .line 132
    :cond_c
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lkh;

    .line 133
    .line 134
    iget-object v4, v3, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 135
    .line 136
    iget-object v5, v3, Lkh;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 137
    .line 138
    iget-object v6, v3, Lkh;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 139
    .line 140
    invoke-virtual {v3}, Lkh;->l()V

    .line 141
    .line 142
    .line 143
    iget-object v7, v3, Lkh;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 144
    .line 145
    iget-object v8, v3, Lkh;->d:Landroid/content/res/ColorStateList;

    .line 146
    .line 147
    invoke-static {v6, v7, v8}, Ld40;->F(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 148
    .line 149
    .line 150
    iget-object v7, v3, Lkh;->k:Landroid/content/res/ColorStateList;

    .line 151
    .line 152
    invoke-static {v6, v5, v7}, Ld40;->F(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Lkh;->b()Llh;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    instance-of v6, v6, Llg;

    .line 160
    .line 161
    if-eqz v6, :cond_e

    .line 162
    .line 163
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_d

    .line 168
    .line 169
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    if-eqz v6, :cond_d

    .line 174
    .line 175
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorCurrentTextColors()I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    invoke-static {v3, v4}, Lqf;->g(Landroid/graphics/drawable/Drawable;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5, v3}, Ln4;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_d
    iget-object v6, v3, Lkh;->k:Landroid/content/res/ColorStateList;

    .line 195
    .line 196
    iget-object v3, v3, Lkh;->l:Landroid/graphics/PorterDuff$Mode;

    .line 197
    .line 198
    invoke-static {v4, v5, v6, v3}, Ld40;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 199
    .line 200
    .line 201
    :cond_e
    :goto_3
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lb10;

    .line 202
    .line 203
    iget-object v4, v3, Lb10;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 204
    .line 205
    iget-object v5, v3, Lb10;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 206
    .line 207
    iget-object v3, v3, Lb10;->e:Landroid/content/res/ColorStateList;

    .line 208
    .line 209
    invoke-static {v4, v5, v3}, Ld40;->F(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 210
    .line 211
    .line 212
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 213
    .line 214
    const/4 v4, 0x2

    .line 215
    if-ne v3, v4, :cond_11

    .line 216
    .line 217
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 218
    .line 219
    if-eqz v0, :cond_f

    .line 220
    .line 221
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-eqz v4, :cond_f

    .line 226
    .line 227
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    .line 228
    .line 229
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_f
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 233
    .line 234
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 235
    .line 236
    :goto_4
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 237
    .line 238
    if-eq v4, v3, :cond_11

    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-eqz v3, :cond_11

    .line 245
    .line 246
    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Z

    .line 247
    .line 248
    if-nez v3, :cond_11

    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_10

    .line 255
    .line 256
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lxq;

    .line 257
    .line 258
    check-cast v3, Lrd;

    .line 259
    .line 260
    const/4 v4, 0x0

    .line 261
    invoke-virtual {v3, v4, v4, v4, v4}, Lrd;->n(FFFF)V

    .line 262
    .line 263
    .line 264
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    .line 265
    .line 266
    .line 267
    :cond_11
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 268
    .line 269
    if-ne v3, v2, :cond_15

    .line 270
    .line 271
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-nez v2, :cond_12

    .line 276
    .line 277
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    .line 278
    .line 279
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_12
    if-eqz v1, :cond_13

    .line 283
    .line 284
    if-nez v0, :cond_13

    .line 285
    .line 286
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r0:I

    .line 287
    .line 288
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_13
    if-eqz v0, :cond_14

    .line 292
    .line 293
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    .line 294
    .line 295
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_14
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 299
    .line 300
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 301
    .line 302
    :cond_15
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    .line 303
    .line 304
    .line 305
    :cond_16
    :goto_6
    return-void
.end method
