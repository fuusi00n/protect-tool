.class public Landroidx/recyclerview/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public static final s0:[I

.field public static final t0:[Ljava/lang/Class;

.field public static final u0:Lmw;

.field public A:I

.field public B:I

.field public C:Lrw;

.field public D:Landroid/widget/EdgeEffect;

.field public E:Landroid/widget/EdgeEffect;

.field public F:Landroid/widget/EdgeEffect;

.field public G:Landroid/widget/EdgeEffect;

.field public H:Lsw;

.field public I:I

.field public J:I

.field public K:Landroid/view/VelocityTracker;

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:Lyw;

.field public final R:I

.field public final S:I

.field public final T:F

.field public final U:F

.field public V:Z

.field public final W:Ljx;

.field public final a:Lqg;

.field public a0:Lel;

.field public final b:Lcx;

.field public final b0:Lcl;

.field public c:Lex;

.field public final c0:Lhx;

.field public final d:Lh2;

.field public d0:Lzw;

.field public final e:Ly2;

.field public e0:Ljava/util/ArrayList;

.field public final f:Ls4;

.field public f0:Z

.field public g:Z

.field public g0:Z

.field public final h:Landroid/graphics/Rect;

.field public final h0:Lnw;

.field public final i:Landroid/graphics/Rect;

.field public i0:Z

.field public final j:Landroid/graphics/RectF;

.field public j0:Lmx;

.field public k:Low;

.field public final k0:[I

.field public l:Lww;

.field public l0:Lrs;

.field public final m:Ljava/util/ArrayList;

.field public final m0:[I

.field public final n:Ljava/util/ArrayList;

.field public final n0:[I

.field public o:Lbi;

.field public final o0:[I

.field public p:Z

.field public final p0:Ljava/util/ArrayList;

.field public q:Z

.field public final q0:Lu6;

.field public r:Z

.field public final r0:Lnw;

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:I

.field public final x:Landroid/view/accessibility/AccessibilityManager;

.field public y:Z

.field public z:Z

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const v0, 0x1010436

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->s0:[I

    .line 9
    .line 10
    const-class v0, Landroid/util/AttributeSet;

    .line 11
    .line 12
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    const-class v2, Landroid/content/Context;

    .line 15
    .line 16
    filled-new-array {v2, v0, v1, v1}, [Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->t0:[Ljava/lang/Class;

    .line 21
    .line 22
    new-instance v0, Lmw;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Lmw;-><init>(I)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->u0:Lmw;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 866
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 865
    sget v0, Lsu;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    move/from16 v6, p3

    .line 8
    .line 9
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lqg;

    .line 13
    .line 14
    const/16 v3, 0x16

    .line 15
    .line 16
    invoke-direct {v0, v1, v3}, Lqg;-><init>(Landroid/view/View;I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->a:Lqg;

    .line 20
    .line 21
    new-instance v0, Lcx;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcx;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 27
    .line 28
    new-instance v0, Ls4;

    .line 29
    .line 30
    const/16 v3, 0x11

    .line 31
    .line 32
    invoke-direct {v0, v3}, Ls4;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->f:Ls4;

    .line 36
    .line 37
    new-instance v0, Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 43
    .line 44
    new-instance v0, Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 50
    .line 51
    new-instance v0, Landroid/graphics/RectF;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->j:Landroid/graphics/RectF;

    .line 57
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 64
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 71
    .line 72
    const/4 v9, 0x0

    .line 73
    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 74
    .line 75
    iput-boolean v9, v1, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 76
    .line 77
    iput-boolean v9, v1, Landroidx/recyclerview/widget/RecyclerView;->z:Z

    .line 78
    .line 79
    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->A:I

    .line 80
    .line 81
    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->B:I

    .line 82
    .line 83
    new-instance v0, Lrw;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->C:Lrw;

    .line 89
    .line 90
    new-instance v0, Lhe;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    const/4 v10, 0x0

    .line 96
    iput-object v10, v0, Lsw;->a:Lnw;

    .line 97
    .line 98
    new-instance v3, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v3, v0, Lsw;->b:Ljava/util/ArrayList;

    .line 104
    .line 105
    const-wide/16 v7, 0x78

    .line 106
    .line 107
    iput-wide v7, v0, Lsw;->c:J

    .line 108
    .line 109
    iput-wide v7, v0, Lsw;->d:J

    .line 110
    .line 111
    const-wide/16 v7, 0xfa

    .line 112
    .line 113
    iput-wide v7, v0, Lsw;->e:J

    .line 114
    .line 115
    iput-wide v7, v0, Lsw;->f:J

    .line 116
    .line 117
    const/4 v11, 0x1

    .line 118
    iput-boolean v11, v0, Lhe;->g:Z

    .line 119
    .line 120
    new-instance v3, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v3, v0, Lhe;->h:Ljava/util/ArrayList;

    .line 126
    .line 127
    new-instance v3, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object v3, v0, Lhe;->i:Ljava/util/ArrayList;

    .line 133
    .line 134
    new-instance v3, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v3, v0, Lhe;->j:Ljava/util/ArrayList;

    .line 140
    .line 141
    new-instance v3, Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object v3, v0, Lhe;->k:Ljava/util/ArrayList;

    .line 147
    .line 148
    new-instance v3, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object v3, v0, Lhe;->l:Ljava/util/ArrayList;

    .line 154
    .line 155
    new-instance v3, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v3, v0, Lhe;->m:Ljava/util/ArrayList;

    .line 161
    .line 162
    new-instance v3, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-object v3, v0, Lhe;->n:Ljava/util/ArrayList;

    .line 168
    .line 169
    new-instance v3, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object v3, v0, Lhe;->o:Ljava/util/ArrayList;

    .line 175
    .line 176
    new-instance v3, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    iput-object v3, v0, Lhe;->p:Ljava/util/ArrayList;

    .line 182
    .line 183
    new-instance v3, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    iput-object v3, v0, Lhe;->q:Ljava/util/ArrayList;

    .line 189
    .line 190
    new-instance v3, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .line 194
    .line 195
    iput-object v3, v0, Lhe;->r:Ljava/util/ArrayList;

    .line 196
    .line 197
    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 198
    .line 199
    iput v9, v1, Landroidx/recyclerview/widget/RecyclerView;->I:I

    .line 200
    .line 201
    const/4 v0, -0x1

    .line 202
    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 203
    .line 204
    const/4 v3, 0x1

    .line 205
    iput v3, v1, Landroidx/recyclerview/widget/RecyclerView;->T:F

    .line 206
    .line 207
    iput v3, v1, Landroidx/recyclerview/widget/RecyclerView;->U:F

    .line 208
    .line 209
    iput-boolean v11, v1, Landroidx/recyclerview/widget/RecyclerView;->V:Z

    .line 210
    .line 211
    new-instance v3, Ljx;

    .line 212
    .line 213
    invoke-direct {v3, v1}, Ljx;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 214
    .line 215
    .line 216
    iput-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->W:Ljx;

    .line 217
    .line 218
    new-instance v3, Lcl;

    .line 219
    .line 220
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 221
    .line 222
    .line 223
    iput-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->b0:Lcl;

    .line 224
    .line 225
    new-instance v3, Lhx;

    .line 226
    .line 227
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 228
    .line 229
    .line 230
    iput v0, v3, Lhx;->a:I

    .line 231
    .line 232
    iput v9, v3, Lhx;->b:I

    .line 233
    .line 234
    iput v9, v3, Lhx;->c:I

    .line 235
    .line 236
    iput v11, v3, Lhx;->d:I

    .line 237
    .line 238
    iput v9, v3, Lhx;->e:I

    .line 239
    .line 240
    iput-boolean v9, v3, Lhx;->f:Z

    .line 241
    .line 242
    iput-boolean v9, v3, Lhx;->g:Z

    .line 243
    .line 244
    iput-boolean v9, v3, Lhx;->h:Z

    .line 245
    .line 246
    iput-boolean v9, v3, Lhx;->i:Z

    .line 247
    .line 248
    iput-boolean v9, v3, Lhx;->j:Z

    .line 249
    .line 250
    iput-boolean v9, v3, Lhx;->k:Z

    .line 251
    .line 252
    iput-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 253
    .line 254
    iput-boolean v9, v1, Landroidx/recyclerview/widget/RecyclerView;->f0:Z

    .line 255
    .line 256
    iput-boolean v9, v1, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    .line 257
    .line 258
    new-instance v3, Lnw;

    .line 259
    .line 260
    invoke-direct {v3, v1}, Lnw;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 261
    .line 262
    .line 263
    iput-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->h0:Lnw;

    .line 264
    .line 265
    iput-boolean v9, v1, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    .line 266
    .line 267
    const/4 v12, 0x2

    .line 268
    new-array v5, v12, [I

    .line 269
    .line 270
    iput-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->k0:[I

    .line 271
    .line 272
    new-array v5, v12, [I

    .line 273
    .line 274
    iput-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->m0:[I

    .line 275
    .line 276
    new-array v5, v12, [I

    .line 277
    .line 278
    iput-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    .line 279
    .line 280
    new-array v5, v12, [I

    .line 281
    .line 282
    iput-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    .line 283
    .line 284
    new-instance v5, Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .line 288
    .line 289
    iput-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->p0:Ljava/util/ArrayList;

    .line 290
    .line 291
    new-instance v5, Lu6;

    .line 292
    .line 293
    const/16 v7, 0x8

    .line 294
    .line 295
    invoke-direct {v5, v7, v1}, Lu6;-><init>(ILjava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    iput-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->q0:Lu6;

    .line 299
    .line 300
    new-instance v5, Lnw;

    .line 301
    .line 302
    invoke-direct {v5, v1}, Lnw;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 303
    .line 304
    .line 305
    iput-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->r0:Lnw;

    .line 306
    .line 307
    invoke-virtual {v1, v11}, Landroid/view/View;->setScrollContainer(Z)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v11}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 311
    .line 312
    .line 313
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 318
    .line 319
    .line 320
    move-result v8

    .line 321
    iput v8, v1, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 322
    .line 323
    invoke-static {v5}, Lx50;->a(Landroid/view/ViewConfiguration;)F

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    iput v8, v1, Landroidx/recyclerview/widget/RecyclerView;->T:F

    .line 328
    .line 329
    invoke-static {v5}, Lx50;->b(Landroid/view/ViewConfiguration;)F

    .line 330
    .line 331
    .line 332
    move-result v8

    .line 333
    iput v8, v1, Landroidx/recyclerview/widget/RecyclerView;->U:F

    .line 334
    .line 335
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 336
    .line 337
    .line 338
    move-result v8

    .line 339
    iput v8, v1, Landroidx/recyclerview/widget/RecyclerView;->R:I

    .line 340
    .line 341
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    iput v5, v1, Landroidx/recyclerview/widget/RecyclerView;->S:I

    .line 346
    .line 347
    invoke-virtual {v1}, Landroid/view/View;->getOverScrollMode()I

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    if-ne v5, v12, :cond_0

    .line 352
    .line 353
    move v5, v11

    .line 354
    goto :goto_0

    .line 355
    :cond_0
    move v5, v9

    .line 356
    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 357
    .line 358
    .line 359
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 360
    .line 361
    iput-object v3, v5, Lsw;->a:Lnw;

    .line 362
    .line 363
    new-instance v3, Lh2;

    .line 364
    .line 365
    new-instance v5, Lnw;

    .line 366
    .line 367
    invoke-direct {v5, v1}, Lnw;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 368
    .line 369
    .line 370
    invoke-direct {v3, v5}, Lh2;-><init>(Lnw;)V

    .line 371
    .line 372
    .line 373
    iput-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->d:Lh2;

    .line 374
    .line 375
    new-instance v3, Ly2;

    .line 376
    .line 377
    new-instance v5, Lnw;

    .line 378
    .line 379
    invoke-direct {v5, v1}, Lnw;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 380
    .line 381
    .line 382
    invoke-direct {v3, v5}, Ly2;-><init>(Lnw;)V

    .line 383
    .line 384
    .line 385
    iput-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->e:Ly2;

    .line 386
    .line 387
    sget-object v3, Lw50;->a:Ljava/util/WeakHashMap;

    .line 388
    .line 389
    invoke-static {v1}, Ln50;->c(Landroid/view/View;)I

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-nez v3, :cond_1

    .line 394
    .line 395
    invoke-static {v1, v7}, Ln50;->m(Landroid/view/View;I)V

    .line 396
    .line 397
    .line 398
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    .line 399
    .line 400
    .line 401
    move-result v3

    .line 402
    if-nez v3, :cond_2

    .line 403
    .line 404
    invoke-virtual {v1, v11}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 405
    .line 406
    .line 407
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    const-string v5, "accessibility"

    .line 412
    .line 413
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 418
    .line 419
    iput-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->x:Landroid/view/accessibility/AccessibilityManager;

    .line 420
    .line 421
    new-instance v3, Lmx;

    .line 422
    .line 423
    invoke-direct {v3, v1}, Lmx;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Lmx;)V

    .line 427
    .line 428
    .line 429
    sget-object v3, Lgw;->RecyclerView:[I

    .line 430
    .line 431
    invoke-virtual {v2, v4, v3, v6, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 436
    .line 437
    const/16 v13, 0x1d

    .line 438
    .line 439
    if-lt v3, v13, :cond_3

    .line 440
    .line 441
    sget-object v3, Lgw;->RecyclerView:[I

    .line 442
    .line 443
    invoke-static/range {v1 .. v6}, Ld0;->m(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 444
    .line 445
    .line 446
    :cond_3
    move-object v14, v2

    .line 447
    move-object v15, v4

    .line 448
    move-object v2, v5

    .line 449
    sget v3, Lgw;->RecyclerView_layoutManager:I

    .line 450
    .line 451
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v16

    .line 455
    sget v3, Lgw;->RecyclerView_android_descendantFocusability:I

    .line 456
    .line 457
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    if-ne v3, v0, :cond_4

    .line 462
    .line 463
    const/high16 v0, 0x40000

    .line 464
    .line 465
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 466
    .line 467
    .line 468
    :cond_4
    sget v0, Lgw;->RecyclerView_android_clipToPadding:I

    .line 469
    .line 470
    invoke-virtual {v2, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 475
    .line 476
    sget v0, Lgw;->RecyclerView_fastScrollEnabled:I

    .line 477
    .line 478
    invoke-virtual {v2, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-eqz v0, :cond_6

    .line 483
    .line 484
    sget v0, Lgw;->RecyclerView_fastScrollVerticalThumbDrawable:I

    .line 485
    .line 486
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 491
    .line 492
    sget v3, Lgw;->RecyclerView_fastScrollVerticalTrackDrawable:I

    .line 493
    .line 494
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    sget v4, Lgw;->RecyclerView_fastScrollHorizontalThumbDrawable:I

    .line 499
    .line 500
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    .line 505
    .line 506
    sget v5, Lgw;->RecyclerView_fastScrollHorizontalTrackDrawable:I

    .line 507
    .line 508
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 509
    .line 510
    .line 511
    move-result-object v5

    .line 512
    if-eqz v0, :cond_5

    .line 513
    .line 514
    if-eqz v3, :cond_5

    .line 515
    .line 516
    if-eqz v4, :cond_5

    .line 517
    .line 518
    if-eqz v5, :cond_5

    .line 519
    .line 520
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 521
    .line 522
    .line 523
    move-result-object v6

    .line 524
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 525
    .line 526
    .line 527
    move-result-object v6

    .line 528
    move-object v7, v2

    .line 529
    move-object v2, v0

    .line 530
    new-instance v0, Lbi;

    .line 531
    .line 532
    sget v8, Lyu;->fastscroll_default_thickness:I

    .line 533
    .line 534
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 535
    .line 536
    .line 537
    move-result v8

    .line 538
    move/from16 v17, v12

    .line 539
    .line 540
    sget v12, Lyu;->fastscroll_minimum_range:I

    .line 541
    .line 542
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 543
    .line 544
    .line 545
    move-result v12

    .line 546
    sget v13, Lyu;->fastscroll_margin:I

    .line 547
    .line 548
    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 549
    .line 550
    .line 551
    move-result v6

    .line 552
    move v13, v8

    .line 553
    move v8, v6

    .line 554
    move v6, v13

    .line 555
    move-object v13, v7

    .line 556
    move v7, v12

    .line 557
    move/from16 v12, p3

    .line 558
    .line 559
    invoke-direct/range {v0 .. v8}, Lbi;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    .line 560
    .line 561
    .line 562
    goto :goto_1

    .line 563
    :cond_5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    const-string v1, "Trying to set fast scroller without both required drawables."

    .line 568
    .line 569
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-static {v0}, Lg9;->j(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    throw v10

    .line 577
    :cond_6
    move-object v13, v2

    .line 578
    move/from16 v17, v12

    .line 579
    .line 580
    move/from16 v12, p3

    .line 581
    .line 582
    :goto_1
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 583
    .line 584
    .line 585
    const-string v2, ": Could not instantiate the LayoutManager: "

    .line 586
    .line 587
    if-eqz v16, :cond_a

    .line 588
    .line 589
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    if-nez v3, :cond_a

    .line 598
    .line 599
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 600
    .line 601
    .line 602
    move-result v3

    .line 603
    const/16 v4, 0x2e

    .line 604
    .line 605
    if-ne v3, v4, :cond_7

    .line 606
    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    .line 608
    .line 609
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v4

    .line 616
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    :goto_2
    move-object v3, v0

    .line 627
    goto :goto_3

    .line 628
    :cond_7
    const-string v3, "."

    .line 629
    .line 630
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 631
    .line 632
    .line 633
    move-result v3

    .line 634
    if-eqz v3, :cond_8

    .line 635
    .line 636
    goto :goto_2

    .line 637
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 638
    .line 639
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    .line 641
    .line 642
    const-class v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 643
    .line 644
    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 645
    .line 646
    .line 647
    move-result-object v5

    .line 648
    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v5

    .line 652
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    goto :goto_2

    .line 666
    :goto_3
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    .line 667
    .line 668
    .line 669
    move-result v0

    .line 670
    if-eqz v0, :cond_9

    .line 671
    .line 672
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    goto :goto_4

    .line 681
    :catch_0
    move-exception v0

    .line 682
    goto :goto_6

    .line 683
    :catch_1
    move-exception v0

    .line 684
    goto/16 :goto_7

    .line 685
    .line 686
    :catch_2
    move-exception v0

    .line 687
    goto/16 :goto_8

    .line 688
    .line 689
    :catch_3
    move-exception v0

    .line 690
    goto/16 :goto_9

    .line 691
    .line 692
    :catch_4
    move-exception v0

    .line 693
    goto/16 :goto_a

    .line 694
    .line 695
    :cond_9
    invoke-virtual {v14}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    :goto_4
    invoke-static {v3, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    const-class v4, Lww;

    .line 704
    .line 705
    invoke-virtual {v0, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 706
    .line 707
    .line 708
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :try_start_1
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->t0:[Ljava/lang/Class;

    .line 710
    .line 711
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    const/4 v5, 0x4

    .line 716
    new-array v5, v5, [Ljava/lang/Object;

    .line 717
    .line 718
    aput-object v14, v5, v9

    .line 719
    .line 720
    aput-object v15, v5, v11

    .line 721
    .line 722
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 723
    .line 724
    .line 725
    move-result-object v6

    .line 726
    aput-object v6, v5, v17

    .line 727
    .line 728
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 729
    .line 730
    .line 731
    move-result-object v6

    .line 732
    const/4 v7, 0x3

    .line 733
    aput-object v6, v5, v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 734
    .line 735
    goto :goto_5

    .line 736
    :catch_5
    move-exception v0

    .line 737
    move-object v5, v0

    .line 738
    :try_start_2
    invoke-virtual {v4, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 739
    .line 740
    .line 741
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    .line 742
    move-object v5, v10

    .line 743
    :goto_5
    :try_start_3
    invoke-virtual {v0, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    check-cast v0, Lww;

    .line 751
    .line 752
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lww;)V

    .line 753
    .line 754
    .line 755
    goto :goto_b

    .line 756
    :catch_6
    move-exception v0

    .line 757
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 758
    .line 759
    .line 760
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 761
    .line 762
    new-instance v4, Ljava/lang/StringBuilder;

    .line 763
    .line 764
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    .line 766
    .line 767
    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v5

    .line 771
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    const-string v5, ": Error creating LayoutManager "

    .line 775
    .line 776
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    .line 778
    .line 779
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v4

    .line 786
    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 787
    .line 788
    .line 789
    throw v1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    .line 790
    :goto_6
    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    const-string v2, ": Class is not a LayoutManager "

    .line 795
    .line 796
    invoke-static {v1, v2, v3, v0}, Lg9;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 797
    .line 798
    .line 799
    throw v10

    .line 800
    :goto_7
    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v1

    .line 804
    const-string v2, ": Cannot access non-public constructor "

    .line 805
    .line 806
    invoke-static {v1, v2, v3, v0}, Lg9;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 807
    .line 808
    .line 809
    throw v10

    .line 810
    :goto_8
    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    invoke-static {v1, v2, v3, v0}, Lg9;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 815
    .line 816
    .line 817
    throw v10

    .line 818
    :goto_9
    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v1

    .line 822
    invoke-static {v1, v2, v3, v0}, Lg9;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 823
    .line 824
    .line 825
    throw v10

    .line 826
    :goto_a
    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v1

    .line 830
    const-string v2, ": Unable to find LayoutManager "

    .line 831
    .line 832
    invoke-static {v1, v2, v3, v0}, Lg9;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 833
    .line 834
    .line 835
    throw v10

    .line 836
    :cond_a
    :goto_b
    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->s0:[I

    .line 837
    .line 838
    invoke-virtual {v14, v15, v3, v12, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 839
    .line 840
    .line 841
    move-result-object v5

    .line 842
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 843
    .line 844
    const/16 v2, 0x1d

    .line 845
    .line 846
    if-lt v0, v2, :cond_b

    .line 847
    .line 848
    move v6, v12

    .line 849
    move-object v2, v14

    .line 850
    move-object v4, v15

    .line 851
    invoke-static/range {v1 .. v6}, Ld0;->t(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 852
    .line 853
    .line 854
    :cond_b
    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 855
    .line 856
    .line 857
    move-result v0

    .line 858
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 859
    .line 860
    .line 861
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 862
    .line 863
    .line 864
    return-void
.end method

.method public static D(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 4

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->D(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    return-object v3

    .line 34
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    return-object v1
.end method

.method public static I(Landroid/view/View;)Lkx;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lxw;

    .line 10
    .line 11
    iget-object p0, p0, Lxw;->a:Lkx;

    .line 12
    .line 13
    return-object p0
.end method

.method public static synthetic a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic e(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getScrollingChildHelper()Lrs;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l0:Lrs;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lrs;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lrs;-><init>(Landroid/view/ViewGroup;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l0:Lrs;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->l0:Lrs;

    .line 13
    .line 14
    return-object p0
.end method

.method public static j(Lkx;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkx;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    :goto_0
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lkx;->a:Landroid/view/View;

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v2, v0, Landroid/view/View;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    check-cast v0, Landroid/view/View;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iput-object v1, p0, Lkx;->b:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    :cond_3
    :goto_1
    return-void
.end method

.method public final A(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eq v0, p0, :cond_0

    .line 8
    .line 9
    instance-of v1, v0, Landroid/view/View;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move-object p1, v0

    .line 14
    check-cast p1, Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-ne v0, p0, :cond_1

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final B(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v4, v2, :cond_5

    .line 14
    .line 15
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Lbi;

    .line 20
    .line 21
    iget v6, v5, Lbi;->v:I

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    const/4 v8, 0x2

    .line 25
    if-ne v6, v7, :cond_3

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    invoke-virtual {v5, v6, v9}, Lbi;->d(FF)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    invoke-virtual {v5, v9, v10}, Lbi;->c(FF)Z

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    if-nez v10, :cond_4

    .line 56
    .line 57
    if-nez v6, :cond_0

    .line 58
    .line 59
    if-eqz v9, :cond_4

    .line 60
    .line 61
    :cond_0
    if-eqz v9, :cond_1

    .line 62
    .line 63
    iput v7, v5, Lbi;->w:I

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    float-to-int v6, v6

    .line 70
    int-to-float v6, v6

    .line 71
    iput v6, v5, Lbi;->p:F

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    if-eqz v6, :cond_2

    .line 75
    .line 76
    iput v8, v5, Lbi;->w:I

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    float-to-int v6, v6

    .line 83
    int-to-float v6, v6

    .line 84
    iput v6, v5, Lbi;->m:F

    .line 85
    .line 86
    :cond_2
    :goto_1
    invoke-virtual {v5, v8}, Lbi;->f(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    if-ne v6, v8, :cond_4

    .line 91
    .line 92
    :goto_2
    const/4 v6, 0x3

    .line 93
    if-eq v0, v6, :cond_4

    .line 94
    .line 95
    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Lbi;

    .line 96
    .line 97
    return v7

    .line 98
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    return v3
.end method

.method public final C([I)V
    .locals 8

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Ly2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ly2;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    aput p0, p1, v2

    .line 13
    .line 14
    aput p0, p1, v1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const v3, 0x7fffffff

    .line 18
    .line 19
    .line 20
    const/high16 v4, -0x80000000

    .line 21
    .line 22
    move v5, v2

    .line 23
    :goto_0
    if-ge v5, v0, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, v5}, Ly2;->d(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v6}, Lkx;->o()Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v6}, Lkx;->b()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-ge v6, v3, :cond_2

    .line 45
    .line 46
    move v3, v6

    .line 47
    :cond_2
    if-le v6, v4, :cond_3

    .line 48
    .line 49
    move v4, v6

    .line 50
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    aput v3, p1, v2

    .line 54
    .line 55
    aput v4, p1, v1

    .line 56
    .line 57
    return-void
.end method

.method public final E(I)Lkx;
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Ly2;

    .line 8
    .line 9
    invoke-virtual {v0}, Ly2;->l()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_3

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ly2;->k(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    invoke-virtual {v4}, Lkx;->h()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->F(Lkx;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-ne v5, p1, :cond_2

    .line 37
    .line 38
    iget-object v1, v4, Lkx;->a:Landroid/view/View;

    .line 39
    .line 40
    iget-object v5, v0, Ly2;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v5, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    move-object v1, v4

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    return-object v4

    .line 53
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    return-object v1
.end method

.method public final F(Lkx;)I
    .locals 6

    .line 1
    iget v0, p1, Lkx;->j:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x20c

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lkx;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget p1, p1, Lkx;->c:I

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Lh2;

    .line 19
    .line 20
    iget-object p0, p0, Lh2;->c:Ljava/io/Serializable;

    .line 21
    .line 22
    check-cast p0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-ge v2, v0, :cond_9

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lg2;

    .line 36
    .line 37
    iget v4, v3, Lg2;->a:I

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    if-eq v4, v5, :cond_7

    .line 41
    .line 42
    const/4 v5, 0x2

    .line 43
    if-eq v4, v5, :cond_5

    .line 44
    .line 45
    const/16 v5, 0x8

    .line 46
    .line 47
    if-eq v4, v5, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    iget v4, v3, Lg2;->b:I

    .line 51
    .line 52
    if-ne v4, p1, :cond_3

    .line 53
    .line 54
    iget p1, v3, Lg2;->c:I

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    if-ge v4, p1, :cond_4

    .line 58
    .line 59
    add-int/lit8 p1, p1, -0x1

    .line 60
    .line 61
    :cond_4
    iget v3, v3, Lg2;->c:I

    .line 62
    .line 63
    if-gt v3, p1, :cond_8

    .line 64
    .line 65
    add-int/lit8 p1, p1, 0x1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_5
    iget v4, v3, Lg2;->b:I

    .line 69
    .line 70
    if-gt v4, p1, :cond_8

    .line 71
    .line 72
    iget v3, v3, Lg2;->c:I

    .line 73
    .line 74
    add-int/2addr v4, v3

    .line 75
    if-le v4, p1, :cond_6

    .line 76
    .line 77
    :goto_1
    return v1

    .line 78
    :cond_6
    sub-int/2addr p1, v3

    .line 79
    goto :goto_2

    .line 80
    :cond_7
    iget v4, v3, Lg2;->b:I

    .line 81
    .line 82
    if-gt v4, p1, :cond_8

    .line 83
    .line 84
    iget v3, v3, Lg2;->c:I

    .line 85
    .line 86
    add-int/2addr p1, v3

    .line 87
    :cond_8
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_9
    return p1
.end method

.method public final G(Lkx;)J
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 2
    .line 3
    iget-boolean p0, p0, Low;->b:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-wide p0, p1, Lkx;->e:J

    .line 8
    .line 9
    return-wide p0

    .line 10
    :cond_0
    iget p0, p1, Lkx;->c:I

    .line 11
    .line 12
    int-to-long p0, p0

    .line 13
    return-wide p0
.end method

.method public final H(Landroid/view/View;)Lkx;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "View "

    .line 11
    .line 12
    const-string v1, " is not a direct child of "

    .line 13
    .line 14
    invoke-static {v0, p1, v1, p0}, Lg9;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final J(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxw;

    .line 6
    .line 7
    iget-boolean v1, v0, Lxw;->c:Z

    .line 8
    .line 9
    iget-object v2, v0, Lxw;->b:Landroid/graphics/Rect;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 15
    .line 16
    iget-boolean v1, v1, Lhx;->g:Z

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-object v1, v0, Lxw;->a:Lkx;

    .line 21
    .line 22
    invoke-virtual {v1}, Lkx;->k()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v1, v0, Lxw;->a:Lkx;

    .line 29
    .line 30
    invoke-virtual {v1}, Lkx;->f()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    :cond_1
    :goto_0
    return-object v2

    .line 37
    :cond_2
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    move v5, v1

    .line 48
    :goto_1
    if-ge v5, v4, :cond_3

    .line 49
    .line 50
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-virtual {v6, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Ltw;

    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Lxw;

    .line 69
    .line 70
    iget-object v7, v7, Lxw;->a:Lkx;

    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 76
    .line 77
    .line 78
    iget v7, v2, Landroid/graphics/Rect;->left:I

    .line 79
    .line 80
    iget v8, v6, Landroid/graphics/Rect;->left:I

    .line 81
    .line 82
    add-int/2addr v7, v8

    .line 83
    iput v7, v2, Landroid/graphics/Rect;->left:I

    .line 84
    .line 85
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 86
    .line 87
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 88
    .line 89
    add-int/2addr v7, v8

    .line 90
    iput v7, v2, Landroid/graphics/Rect;->top:I

    .line 91
    .line 92
    iget v7, v2, Landroid/graphics/Rect;->right:I

    .line 93
    .line 94
    iget v8, v6, Landroid/graphics/Rect;->right:I

    .line 95
    .line 96
    add-int/2addr v7, v8

    .line 97
    iput v7, v2, Landroid/graphics/Rect;->right:I

    .line 98
    .line 99
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 100
    .line 101
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 102
    .line 103
    add-int/2addr v7, v6

    .line 104
    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 105
    .line 106
    add-int/lit8 v5, v5, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    iput-boolean v1, v0, Lxw;->c:Z

    .line 110
    .line 111
    return-object v2
.end method

.method public final K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Lh2;

    .line 10
    .line 11
    invoke-virtual {p0}, Lh2;->f()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final L()Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:I

    .line 2
    .line 3
    if-lez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final M(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lww;->n0(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final N()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Ly2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly2;->l()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    const/4 v4, 0x1

    .line 10
    if-ge v3, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ly2;->k(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    check-cast v5, Lxw;

    .line 21
    .line 22
    iput-boolean v4, v5, Lxw;->c:Z

    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 28
    .line 29
    iget-object p0, p0, Lcx;->c:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :goto_1
    if-ge v2, v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lkx;

    .line 42
    .line 43
    iget-object v1, v1, Lkx;->a:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lxw;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iput-boolean v4, v1, Lxw;->c:Z

    .line 54
    .line 55
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    return-void
.end method

.method public final O(IIZ)V
    .locals 10

    .line 1
    add-int v0, p1, p2

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Ly2;

    .line 4
    .line 5
    invoke-virtual {v1}, Ly2;->l()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    const/16 v4, 0x8

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    if-ge v3, v2, :cond_2

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Ly2;->k(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    if-eqz v6, :cond_1

    .line 24
    .line 25
    invoke-virtual {v6}, Lkx;->o()Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-nez v7, :cond_1

    .line 30
    .line 31
    iget v7, v6, Lkx;->c:I

    .line 32
    .line 33
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 34
    .line 35
    if-lt v7, v0, :cond_0

    .line 36
    .line 37
    neg-int v4, p2

    .line 38
    invoke-virtual {v6, v4, p3}, Lkx;->l(IZ)V

    .line 39
    .line 40
    .line 41
    iput-boolean v5, v8, Lhx;->f:Z

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    if-lt v7, p1, :cond_1

    .line 45
    .line 46
    add-int/lit8 v7, p1, -0x1

    .line 47
    .line 48
    neg-int v9, p2

    .line 49
    invoke-virtual {v6, v4}, Lkx;->a(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v9, p3}, Lkx;->l(IZ)V

    .line 53
    .line 54
    .line 55
    iput v7, v6, Lkx;->c:I

    .line 56
    .line 57
    iput-boolean v5, v8, Lhx;->f:Z

    .line 58
    .line 59
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 63
    .line 64
    iget-object v2, v1, Lcx;->c:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    sub-int/2addr v3, v5

    .line 71
    :goto_2
    if-ltz v3, :cond_5

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Lkx;

    .line 78
    .line 79
    if-eqz v5, :cond_4

    .line 80
    .line 81
    iget v6, v5, Lkx;->c:I

    .line 82
    .line 83
    if-lt v6, v0, :cond_3

    .line 84
    .line 85
    neg-int v6, p2

    .line 86
    invoke-virtual {v5, v6, p3}, Lkx;->l(IZ)V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    if-lt v6, p1, :cond_4

    .line 91
    .line 92
    invoke-virtual {v5, v4}, Lkx;->a(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v3}, Lcx;->e(I)V

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final P()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:I

    .line 6
    .line 7
    return-void
.end method

.method public final Q(Z)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_4

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:I

    .line 11
    .line 12
    if-eqz p1, :cond_4

    .line 13
    .line 14
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:I

    .line 15
    .line 16
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w:I

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Landroid/view/accessibility/AccessibilityManager;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/16 v2, 0x800

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->p0:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sub-int/2addr v0, v1

    .line 52
    :goto_0
    if-ltz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lkx;

    .line 59
    .line 60
    iget-object v2, v1, Lkx;->a:Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-ne v2, p0, :cond_2

    .line 67
    .line 68
    invoke-virtual {v1}, Lkx;->o()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    iget v2, v1, Lkx;->q:I

    .line 76
    .line 77
    const/4 v3, -0x1

    .line 78
    if-eq v2, v3, :cond_2

    .line 79
    .line 80
    iget-object v4, v1, Lkx;->a:Landroid/view/View;

    .line 81
    .line 82
    sget-object v5, Lw50;->a:Ljava/util/WeakHashMap;

    .line 83
    .line 84
    invoke-virtual {v4, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 85
    .line 86
    .line 87
    iput v3, v1, Lkx;->q:I

    .line 88
    .line 89
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 93
    .line 94
    .line 95
    :cond_4
    return-void
.end method

.method public final R(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/high16 v2, 0x3f000000

    .line 29
    .line 30
    add-float/2addr v1, v2

    .line 31
    float-to-int v1, v1

    .line 32
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 33
    .line 34
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    add-float/2addr p1, v2

    .line 41
    float-to-int p1, p1

    .line 42
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 43
    .line 44
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final S()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lw50;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->q0:Lu6;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final T(Lkx;Lus;)V
    .locals 4

    .line 1
    iget v0, p1, Lkx;->j:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x2001

    .line 4
    .line 5
    iput v0, p1, Lkx;->j:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 8
    .line 9
    iget-boolean v0, v0, Lhx;->h:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Ls4;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lkx;->k()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lkx;->h()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lkx;->o()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Lkx;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    iget-object p0, v1, Ls4;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Ljp;

    .line 40
    .line 41
    invoke-virtual {p0, v2, v3, p1}, Ljp;->d(JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p0, v1, Ls4;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lg00;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Lg00;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ld60;

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    invoke-static {}, Ld60;->a()Ld60;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0, p1, v0}, Lg00;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_1
    iput-object p2, v0, Ld60;->b:Lus;

    .line 65
    .line 66
    iget p0, v0, Ld60;->a:I

    .line 67
    .line 68
    or-int/lit8 p0, p0, 0x4

    .line 69
    .line 70
    iput p0, v0, Ld60;->a:I

    .line 71
    .line 72
    return-void
.end method

.method public final U(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    move-object v0, p2

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    move-object v0, p1

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Lxw;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, Lxw;

    .line 29
    .line 30
    iget-boolean v1, v0, Lxw;->c:Z

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    iget-object v0, v0, Lxw;->b:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 37
    .line 38
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 39
    .line 40
    sub-int/2addr v1, v2

    .line 41
    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    iget v1, v3, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 46
    .line 47
    add-int/2addr v1, v2

    .line 48
    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 51
    .line 52
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 53
    .line 54
    sub-int/2addr v1, v2

    .line 55
    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 56
    .line 57
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 58
    .line 59
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 60
    .line 61
    add-int/2addr v1, v0

    .line 62
    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 63
    .line 64
    :cond_1
    if-eqz p2, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0, p2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 73
    .line 74
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    xor-int/lit8 v9, v0, 0x1

    .line 78
    .line 79
    if-nez p2, :cond_3

    .line 80
    .line 81
    move v10, v1

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move v10, v4

    .line 84
    :goto_1
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 85
    .line 86
    move-object v6, p0

    .line 87
    move-object v7, p1

    .line 88
    invoke-virtual/range {v5 .. v10}, Lww;->k0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final V()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->c0(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    or-int/2addr v0, v1

    .line 39
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    or-int/2addr v0, v1

    .line 53
    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    or-int/2addr v0, v1

    .line 67
    :cond_4
    if-eqz v0, :cond_5

    .line 68
    .line 69
    sget-object v0, Lw50;->a:Ljava/util/WeakHashMap;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 72
    .line 73
    .line 74
    :cond_5
    return-void
.end method

.method public final W(IILandroid/view/MotionEvent;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 11
    .line 12
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    .line 13
    .line 14
    const/4 v10, 0x1

    .line 15
    const/4 v11, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    aput v11, v7, v11

    .line 19
    .line 20
    aput v11, v7, v10

    .line 21
    .line 22
    invoke-virtual {v0, v8, v9, v7}, Landroidx/recyclerview/widget/RecyclerView;->X(II[I)V

    .line 23
    .line 24
    .line 25
    aget v1, v7, v11

    .line 26
    .line 27
    aget v2, v7, v10

    .line 28
    .line 29
    sub-int v3, v8, v1

    .line 30
    .line 31
    sub-int v4, v9, v2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v1, v11

    .line 35
    move v2, v1

    .line 36
    move v3, v2

    .line 37
    move v4, v3

    .line 38
    :goto_0
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 47
    .line 48
    .line 49
    :cond_1
    aput v11, v7, v11

    .line 50
    .line 51
    aput v11, v7, v10

    .line 52
    .line 53
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->m0:[I

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->s(IIII[II[I)V

    .line 57
    .line 58
    .line 59
    aget v5, v7, v11

    .line 60
    .line 61
    sub-int/2addr v3, v5

    .line 62
    aget v6, v7, v10

    .line 63
    .line 64
    sub-int/2addr v4, v6

    .line 65
    if-nez v5, :cond_3

    .line 66
    .line 67
    if-eqz v6, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v5, v11

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    :goto_1
    move v5, v10

    .line 73
    :goto_2
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 74
    .line 75
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->m0:[I

    .line 76
    .line 77
    aget v12, v7, v11

    .line 78
    .line 79
    sub-int/2addr v6, v12

    .line 80
    iput v6, v0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 81
    .line 82
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 83
    .line 84
    aget v7, v7, v10

    .line 85
    .line 86
    sub-int/2addr v6, v7

    .line 87
    iput v6, v0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 88
    .line 89
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    .line 90
    .line 91
    aget v13, v6, v11

    .line 92
    .line 93
    add-int/2addr v13, v12

    .line 94
    aput v13, v6, v11

    .line 95
    .line 96
    aget v12, v6, v10

    .line 97
    .line 98
    add-int/2addr v12, v7

    .line 99
    aput v12, v6, v10

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    const/4 v7, 0x2

    .line 106
    if-eq v6, v7, :cond_c

    .line 107
    .line 108
    if-eqz p3, :cond_4

    .line 109
    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getSource()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    const/16 v7, 0x2002

    .line 115
    .line 116
    and-int/2addr v6, v7

    .line 117
    if-ne v6, v7, :cond_5

    .line 118
    .line 119
    :cond_4
    move/from16 v16, v10

    .line 120
    .line 121
    goto/16 :goto_7

    .line 122
    .line 123
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    int-to-float v3, v3

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    int-to-float v4, v4

    .line 133
    const/4 v12, 0x0

    .line 134
    cmpg-float v13, v3, v12

    .line 135
    .line 136
    const/high16 v14, 0x3f800000

    .line 137
    .line 138
    if-gez v13, :cond_6

    .line 139
    .line 140
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->v()V

    .line 141
    .line 142
    .line 143
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 144
    .line 145
    neg-float v15, v3

    .line 146
    move/from16 v16, v10

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    int-to-float v10, v10

    .line 153
    div-float/2addr v15, v10

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    int-to-float v10, v10

    .line 159
    div-float/2addr v7, v10

    .line 160
    sub-float v7, v14, v7

    .line 161
    .line 162
    invoke-static {v13, v15, v7}, Log;->a(Landroid/widget/EdgeEffect;FF)V

    .line 163
    .line 164
    .line 165
    :goto_3
    move/from16 v7, v16

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_6
    move/from16 v16, v10

    .line 169
    .line 170
    cmpl-float v10, v3, v12

    .line 171
    .line 172
    if-lez v10, :cond_7

    .line 173
    .line 174
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()V

    .line 175
    .line 176
    .line 177
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 180
    .line 181
    .line 182
    move-result v13

    .line 183
    int-to-float v13, v13

    .line 184
    div-float v13, v3, v13

    .line 185
    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 187
    .line 188
    .line 189
    move-result v15

    .line 190
    int-to-float v15, v15

    .line 191
    div-float/2addr v7, v15

    .line 192
    invoke-static {v10, v13, v7}, Log;->a(Landroid/widget/EdgeEffect;FF)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_7
    move v7, v11

    .line 197
    :goto_4
    cmpg-float v10, v4, v12

    .line 198
    .line 199
    if-gez v10, :cond_8

    .line 200
    .line 201
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->x()V

    .line 202
    .line 203
    .line 204
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 205
    .line 206
    neg-float v10, v4

    .line 207
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 208
    .line 209
    .line 210
    move-result v13

    .line 211
    int-to-float v13, v13

    .line 212
    div-float/2addr v10, v13

    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    int-to-float v13, v13

    .line 218
    div-float/2addr v6, v13

    .line 219
    invoke-static {v7, v10, v6}, Log;->a(Landroid/widget/EdgeEffect;FF)V

    .line 220
    .line 221
    .line 222
    :goto_5
    move/from16 v7, v16

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_8
    cmpl-float v10, v4, v12

    .line 226
    .line 227
    if-lez v10, :cond_9

    .line 228
    .line 229
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->u()V

    .line 230
    .line 231
    .line 232
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 233
    .line 234
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    int-to-float v10, v10

    .line 239
    div-float v10, v4, v10

    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 242
    .line 243
    .line 244
    move-result v13

    .line 245
    int-to-float v13, v13

    .line 246
    div-float/2addr v6, v13

    .line 247
    sub-float/2addr v14, v6

    .line 248
    invoke-static {v7, v10, v14}, Log;->a(Landroid/widget/EdgeEffect;FF)V

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_9
    :goto_6
    if-nez v7, :cond_a

    .line 253
    .line 254
    cmpl-float v3, v3, v12

    .line 255
    .line 256
    if-nez v3, :cond_a

    .line 257
    .line 258
    cmpl-float v3, v4, v12

    .line 259
    .line 260
    if-eqz v3, :cond_b

    .line 261
    .line 262
    :cond_a
    sget-object v3, Lw50;->a:Ljava/util/WeakHashMap;

    .line 263
    .line 264
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 265
    .line 266
    .line 267
    :cond_b
    :goto_7
    invoke-virtual/range {p0 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->l(II)V

    .line 268
    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_c
    move/from16 v16, v10

    .line 272
    .line 273
    :goto_8
    if-nez v1, :cond_d

    .line 274
    .line 275
    if-eqz v2, :cond_e

    .line 276
    .line 277
    :cond_d
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->t(II)V

    .line 278
    .line 279
    .line 280
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->awakenScrollBars()Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-nez v3, :cond_f

    .line 285
    .line 286
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 287
    .line 288
    .line 289
    :cond_f
    if-nez v5, :cond_11

    .line 290
    .line 291
    if-nez v1, :cond_11

    .line 292
    .line 293
    if-eqz v2, :cond_10

    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_10
    return v11

    .line 297
    :cond_11
    :goto_9
    return v16
.end method

.method public final X(II[I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->a0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->P()V

    .line 5
    .line 6
    .line 7
    sget v0, Lo30;->a:I

    .line 8
    .line 9
    const-string v0, "RV Scroll"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->z(Lhx;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 25
    .line 26
    invoke-virtual {v3, p1, v1, v0}, Lww;->m0(ILcx;Lhx;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move p1, v2

    .line 32
    :goto_0
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 35
    .line 36
    invoke-virtual {v3, p2, v1, v0}, Lww;->o0(ILcx;Lhx;)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move p2, v2

    .line 42
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Ly2;

    .line 46
    .line 47
    invoke-virtual {v0}, Ly2;->e()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    move v3, v2

    .line 52
    :goto_2
    if-ge v3, v1, :cond_4

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ly2;->d(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->H(Landroid/view/View;)Lkx;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    if-eqz v5, :cond_3

    .line 63
    .line 64
    iget-object v5, v5, Lkx;->i:Lkx;

    .line 65
    .line 66
    if-eqz v5, :cond_3

    .line 67
    .line 68
    iget-object v5, v5, Lkx;->a:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-ne v6, v7, :cond_2

    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eq v4, v7, :cond_3

    .line 89
    .line 90
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    add-int/2addr v7, v6

    .line 95
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    add-int/2addr v8, v4

    .line 100
    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 101
    .line 102
    .line 103
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->Q(Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->b0(Z)V

    .line 111
    .line 112
    .line 113
    if-eqz p3, :cond_5

    .line 114
    .line 115
    aput p1, p3, v2

    .line 116
    .line 117
    aput p2, p3, v0

    .line 118
    .line 119
    :cond_5
    return-void
.end method

.method public final Y(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Ljx;

    .line 11
    .line 12
    iget-object v1, v0, Ljx;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Ljx;->c:Landroid/widget/OverScroller;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, v0, Lww;->e:Ljo;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Ljo;->i()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_2
    invoke-virtual {v0, p1}, Lww;->n0(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final Z(IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Lww;->d()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    move p1, v1

    .line 19
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 20
    .line 21
    invoke-virtual {v0}, Lww;->e()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    move p2, v1

    .line 28
    :cond_3
    if-nez p1, :cond_5

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_4
    :goto_0
    return-void

    .line 34
    :cond_5
    :goto_1
    if-eqz p3, :cond_8

    .line 35
    .line 36
    const/4 p3, 0x1

    .line 37
    if-eqz p1, :cond_6

    .line 38
    .line 39
    move v1, p3

    .line 40
    :cond_6
    if-eqz p2, :cond_7

    .line 41
    .line 42
    or-int/lit8 v1, v1, 0x2

    .line 43
    .line 44
    :cond_7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lrs;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v1, p3}, Lrs;->f(II)Z

    .line 49
    .line 50
    .line 51
    :cond_8
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Ljx;

    .line 52
    .line 53
    const/high16 p3, -0x80000000

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, p2, p3, v0}, Ljx;->b(IIILandroid/view/animation/Interpolator;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final a0()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b0(Z)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 16
    .line 17
    :cond_1
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 18
    .line 19
    if-ne v2, v1, :cond_3

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 43
    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 47
    .line 48
    :cond_3
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 49
    .line 50
    sub-int/2addr p1, v1

    .line 51
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 52
    .line 53
    return-void
.end method

.method public final c0(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lrs;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lrs;->g(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lxw;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 6
    .line 7
    check-cast p1, Lxw;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lww;->f(Lxw;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lww;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lww;->j(Lhx;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lww;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lww;->k(Lhx;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final computeHorizontalScrollRange()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lww;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lww;->l(Lhx;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final computeVerticalScrollExtent()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lww;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lww;->m(Lhx;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final computeVerticalScrollOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lww;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lww;->n(Lhx;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final computeVerticalScrollRange()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lww;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lww;->o(Lhx;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lrs;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean v0, p0, Lrs;->d:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lrs;->d(I)Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lrs;->c:Landroid/view/ViewGroup;

    .line 17
    .line 18
    :try_start_0
    invoke-static {v0, p0, p1, p2, p3}, Ll60;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    :cond_0
    return v1
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lrs;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2}, Lrs;->a(FF)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lrs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v5, 0x0

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    invoke-virtual/range {v0 .. v5}, Lrs;->b(II[I[II)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 8

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lrs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v7, 0x0

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    move v3, p3

    .line 10
    move v4, p4

    .line 11
    move-object v5, p5

    .line 12
    invoke-virtual/range {v0 .. v7}, Lrs;->c(IIII[II[I)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Ltw;

    .line 19
    .line 20
    invoke-virtual {v4, p1, p0}, Ltw;->b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v4, v2

    .line 51
    :goto_1
    const/high16 v5, 0x43870000

    .line 52
    .line 53
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    neg-int v5, v5

    .line 61
    add-int/2addr v5, v4

    .line 62
    int-to-float v4, v5

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 68
    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    move v4, v3

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    move v4, v2

    .line 80
    :goto_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    move v4, v2

    .line 85
    :goto_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 86
    .line 87
    if-eqz v1, :cond_6

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_6

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 100
    .line 101
    if-eqz v5, :cond_4

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    int-to-float v5, v5

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    int-to-float v6, v6

    .line 113
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 114
    .line 115
    .line 116
    :cond_4
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 117
    .line 118
    if-eqz v5, :cond_5

    .line 119
    .line 120
    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_5

    .line 125
    .line 126
    move v5, v3

    .line 127
    goto :goto_4

    .line 128
    :cond_5
    move v5, v2

    .line 129
    :goto_4
    or-int/2addr v4, v5

    .line 130
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 131
    .line 132
    .line 133
    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 134
    .line 135
    if-eqz v1, :cond_9

    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_9

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    iget-boolean v6, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 152
    .line 153
    if-eqz v6, :cond_7

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    goto :goto_5

    .line 160
    :cond_7
    move v6, v2

    .line 161
    :goto_5
    const/high16 v7, 0x42b40000

    .line 162
    .line 163
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 164
    .line 165
    .line 166
    neg-int v6, v6

    .line 167
    int-to-float v6, v6

    .line 168
    neg-int v5, v5

    .line 169
    int-to-float v5, v5

    .line 170
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    .line 172
    .line 173
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 174
    .line 175
    if-eqz v5, :cond_8

    .line 176
    .line 177
    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_8

    .line 182
    .line 183
    move v5, v3

    .line 184
    goto :goto_6

    .line 185
    :cond_8
    move v5, v2

    .line 186
    :goto_6
    or-int/2addr v4, v5

    .line 187
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 188
    .line 189
    .line 190
    :cond_9
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 191
    .line 192
    if-eqz v1, :cond_c

    .line 193
    .line 194
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-nez v1, :cond_c

    .line 199
    .line 200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    const/high16 v5, 0x43340000

    .line 205
    .line 206
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 207
    .line 208
    .line 209
    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 210
    .line 211
    if-eqz v5, :cond_a

    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    neg-int v5, v5

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    add-int/2addr v6, v5

    .line 223
    int-to-float v5, v6

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    neg-int v6, v6

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    add-int/2addr v7, v6

    .line 234
    int-to-float v6, v7

    .line 235
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 236
    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    neg-int v5, v5

    .line 244
    int-to-float v5, v5

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    neg-int v6, v6

    .line 250
    int-to-float v6, v6

    .line 251
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 252
    .line 253
    .line 254
    :goto_7
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 255
    .line 256
    if-eqz v5, :cond_b

    .line 257
    .line 258
    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    if-eqz v5, :cond_b

    .line 263
    .line 264
    move v2, v3

    .line 265
    :cond_b
    or-int/2addr v4, v2

    .line 266
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 267
    .line 268
    .line 269
    :cond_c
    if-nez v4, :cond_d

    .line 270
    .line 271
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 272
    .line 273
    if-eqz p1, :cond_d

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-lez p1, :cond_d

    .line 280
    .line 281
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 282
    .line 283
    invoke-virtual {p1}, Lsw;->f()Z

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    if-eqz p1, :cond_d

    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_d
    move v3, v4

    .line 291
    :goto_8
    if-eqz v3, :cond_e

    .line 292
    .line 293
    sget-object p1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 294
    .line 295
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 296
    .line 297
    .line 298
    :cond_e
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final f(Lkx;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lkx;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, p0, :cond_0

    .line 9
    .line 10
    move v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->H(Landroid/view/View;)Lkx;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3, v4}, Lcx;->j(Lkx;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lkx;->j()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v3, -0x1

    .line 27
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Ly2;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, v0, v3, p1, v2}, Ly2;->b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    if-nez v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, v0, v3, v2}, Ly2;->a(Landroid/view/View;IZ)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iget-object p1, p0, Ly2;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Lnw;

    .line 48
    .line 49
    iget-object p1, p1, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-ltz p1, :cond_3

    .line 56
    .line 57
    iget-object v1, p0, Ly2;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Lf9;

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Lf9;->h(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ly2;->n(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    const-string p0, "view is not a child, cannot hide "

    .line 69
    .line 70
    invoke-static {v0, p0}, Lg9;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 29
    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    move v3, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v3, v5

    .line 35
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 40
    .line 41
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 42
    .line 43
    const/16 v9, 0x11

    .line 44
    .line 45
    const/16 v11, 0x21

    .line 46
    .line 47
    const/4 v13, 0x0

    .line 48
    const/4 v14, 0x2

    .line 49
    if-eqz v3, :cond_b

    .line 50
    .line 51
    if-eq v2, v14, :cond_1

    .line 52
    .line 53
    if-ne v2, v4, :cond_b

    .line 54
    .line 55
    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 56
    .line 57
    invoke-virtual {v3}, Lww;->e()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    if-ne v2, v14, :cond_2

    .line 64
    .line 65
    const/16 v3, 0x82

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v3, v11

    .line 69
    :goto_1
    invoke-virtual {v6, v0, v1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-nez v3, :cond_3

    .line 74
    .line 75
    move v3, v4

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move v3, v5

    .line 78
    :goto_2
    if-nez v3, :cond_8

    .line 79
    .line 80
    iget-object v15, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 81
    .line 82
    invoke-virtual {v15}, Lww;->d()Z

    .line 83
    .line 84
    .line 85
    move-result v15

    .line 86
    if-eqz v15, :cond_8

    .line 87
    .line 88
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 89
    .line 90
    invoke-virtual {v3}, Lww;->C()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-ne v3, v4, :cond_4

    .line 95
    .line 96
    move v3, v4

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    move v3, v5

    .line 99
    :goto_3
    if-ne v2, v14, :cond_5

    .line 100
    .line 101
    move v15, v4

    .line 102
    goto :goto_4

    .line 103
    :cond_5
    move v15, v5

    .line 104
    :goto_4
    xor-int/2addr v3, v15

    .line 105
    if-eqz v3, :cond_6

    .line 106
    .line 107
    const/16 v3, 0x42

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_6
    move v3, v9

    .line 111
    :goto_5
    invoke-virtual {v6, v0, v1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-nez v3, :cond_7

    .line 116
    .line 117
    move v3, v4

    .line 118
    goto :goto_6

    .line 119
    :cond_7
    move v3, v5

    .line 120
    :cond_8
    :goto_6
    if-eqz v3, :cond_a

    .line 121
    .line 122
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    .line 123
    .line 124
    .line 125
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->A(Landroid/view/View;)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    if-nez v3, :cond_9

    .line 130
    .line 131
    goto :goto_7

    .line 132
    :cond_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->a0()V

    .line 133
    .line 134
    .line 135
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 136
    .line 137
    invoke-virtual {v3, v1, v2, v8, v7}, Lww;->S(Landroid/view/View;ILcx;Lhx;)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->b0(Z)V

    .line 141
    .line 142
    .line 143
    :cond_a
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    goto :goto_8

    .line 148
    :cond_b
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    if-nez v6, :cond_d

    .line 153
    .line 154
    if-eqz v3, :cond_d

    .line 155
    .line 156
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    .line 157
    .line 158
    .line 159
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->A(Landroid/view/View;)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    if-nez v3, :cond_c

    .line 164
    .line 165
    :goto_7
    return-object v13

    .line 166
    :cond_c
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->a0()V

    .line 167
    .line 168
    .line 169
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 170
    .line 171
    invoke-virtual {v3, v1, v2, v8, v7}, Lww;->S(Landroid/view/View;ILcx;Lhx;)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->b0(Z)V

    .line 176
    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_d
    move-object v3, v6

    .line 180
    :goto_8
    if-eqz v3, :cond_f

    .line 181
    .line 182
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-nez v6, :cond_f

    .line 187
    .line 188
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    if-nez v4, :cond_e

    .line 193
    .line 194
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    return-object v0

    .line 199
    :cond_e
    invoke-virtual {v0, v3, v13}, Landroidx/recyclerview/widget/RecyclerView;->U(Landroid/view/View;Landroid/view/View;)V

    .line 200
    .line 201
    .line 202
    return-object v1

    .line 203
    :cond_f
    if-eqz v3, :cond_24

    .line 204
    .line 205
    if-ne v3, v0, :cond_10

    .line 206
    .line 207
    goto/16 :goto_d

    .line 208
    .line 209
    :cond_10
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->A(Landroid/view/View;)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    if-nez v6, :cond_11

    .line 214
    .line 215
    goto/16 :goto_d

    .line 216
    .line 217
    :cond_11
    if-nez v1, :cond_12

    .line 218
    .line 219
    goto/16 :goto_c

    .line 220
    .line 221
    :cond_12
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->A(Landroid/view/View;)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    if-nez v6, :cond_13

    .line 226
    .line 227
    goto/16 :goto_c

    .line 228
    .line 229
    :cond_13
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 238
    .line 239
    invoke-virtual {v8, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 251
    .line 252
    invoke-virtual {v13, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v3, v13}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 259
    .line 260
    .line 261
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 262
    .line 263
    invoke-virtual {v6}, Lww;->C()I

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-ne v6, v4, :cond_14

    .line 268
    .line 269
    const/4 v6, -0x1

    .line 270
    goto :goto_9

    .line 271
    :cond_14
    move v6, v4

    .line 272
    :goto_9
    iget v15, v8, Landroid/graphics/Rect;->left:I

    .line 273
    .line 274
    iget v5, v13, Landroid/graphics/Rect;->left:I

    .line 275
    .line 276
    if-lt v15, v5, :cond_15

    .line 277
    .line 278
    iget v7, v8, Landroid/graphics/Rect;->right:I

    .line 279
    .line 280
    if-gt v7, v5, :cond_16

    .line 281
    .line 282
    :cond_15
    iget v7, v8, Landroid/graphics/Rect;->right:I

    .line 283
    .line 284
    iget v12, v13, Landroid/graphics/Rect;->right:I

    .line 285
    .line 286
    if-ge v7, v12, :cond_16

    .line 287
    .line 288
    move v5, v4

    .line 289
    goto :goto_a

    .line 290
    :cond_16
    iget v7, v8, Landroid/graphics/Rect;->right:I

    .line 291
    .line 292
    iget v12, v13, Landroid/graphics/Rect;->right:I

    .line 293
    .line 294
    if-gt v7, v12, :cond_17

    .line 295
    .line 296
    if-lt v15, v12, :cond_18

    .line 297
    .line 298
    :cond_17
    if-le v15, v5, :cond_18

    .line 299
    .line 300
    const/4 v5, -0x1

    .line 301
    goto :goto_a

    .line 302
    :cond_18
    const/4 v5, 0x0

    .line 303
    :goto_a
    iget v7, v8, Landroid/graphics/Rect;->top:I

    .line 304
    .line 305
    iget v12, v13, Landroid/graphics/Rect;->top:I

    .line 306
    .line 307
    if-lt v7, v12, :cond_19

    .line 308
    .line 309
    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    .line 310
    .line 311
    if-gt v15, v12, :cond_1a

    .line 312
    .line 313
    :cond_19
    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    .line 314
    .line 315
    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    .line 316
    .line 317
    if-ge v15, v10, :cond_1a

    .line 318
    .line 319
    move/from16 v16, v4

    .line 320
    .line 321
    goto :goto_b

    .line 322
    :cond_1a
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 323
    .line 324
    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    .line 325
    .line 326
    if-gt v8, v10, :cond_1b

    .line 327
    .line 328
    if-lt v7, v10, :cond_1c

    .line 329
    .line 330
    :cond_1b
    if-le v7, v12, :cond_1c

    .line 331
    .line 332
    const/16 v16, -0x1

    .line 333
    .line 334
    goto :goto_b

    .line 335
    :cond_1c
    const/16 v16, 0x0

    .line 336
    .line 337
    :goto_b
    if-eq v2, v4, :cond_22

    .line 338
    .line 339
    if-eq v2, v14, :cond_21

    .line 340
    .line 341
    if-eq v2, v9, :cond_20

    .line 342
    .line 343
    if-eq v2, v11, :cond_1f

    .line 344
    .line 345
    const/16 v4, 0x42

    .line 346
    .line 347
    if-eq v2, v4, :cond_1e

    .line 348
    .line 349
    const/16 v4, 0x82

    .line 350
    .line 351
    if-ne v2, v4, :cond_1d

    .line 352
    .line 353
    if-lez v16, :cond_24

    .line 354
    .line 355
    goto :goto_c

    .line 356
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 357
    .line 358
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    const-string v4, "Invalid direction: "

    .line 365
    .line 366
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    throw v1

    .line 383
    :cond_1e
    if-lez v5, :cond_24

    .line 384
    .line 385
    goto :goto_c

    .line 386
    :cond_1f
    if-gez v16, :cond_24

    .line 387
    .line 388
    goto :goto_c

    .line 389
    :cond_20
    if-gez v5, :cond_24

    .line 390
    .line 391
    goto :goto_c

    .line 392
    :cond_21
    if-gtz v16, :cond_23

    .line 393
    .line 394
    if-nez v16, :cond_24

    .line 395
    .line 396
    mul-int/2addr v5, v6

    .line 397
    if-ltz v5, :cond_24

    .line 398
    .line 399
    goto :goto_c

    .line 400
    :cond_22
    if-ltz v16, :cond_23

    .line 401
    .line 402
    if-nez v16, :cond_24

    .line 403
    .line 404
    mul-int/2addr v5, v6

    .line 405
    if-gtz v5, :cond_24

    .line 406
    .line 407
    :cond_23
    :goto_c
    return-object v3

    .line 408
    :cond_24
    :goto_d
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    return-object v0
.end method

.method public final g(Ltw;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "Cannot add item decoration during a scroll  or layout"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lww;->c(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->N()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lww;->r()Lxw;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "RecyclerView has no LayoutManager"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0, p1}, Lww;->s(Landroid/content/Context;Landroid/util/AttributeSet;)Lxw;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p1, "RecyclerView has no LayoutManager"

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 29
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1}, Lww;->t(Landroid/view/ViewGroup$LayoutParams;)Lxw;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecyclerView has no LayoutManager"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    const-string p0, "androidx.recyclerview.widget.RecyclerView"

    .line 2
    .line 3
    return-object p0
.end method

.method public getAdapter()Low;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBaseline()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p0, -0x1

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public getClipToPadding()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public getCompatAccessibilityDelegate()Lmx;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->j0:Lmx;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEdgeEffectFactory()Lrw;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Lrw;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItemAnimator()Lsw;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItemDecorationCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getLayoutManager()Lww;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMaxFlingVelocity()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->S:I

    .line 2
    .line 3
    return p0
.end method

.method public getMinFlingVelocity()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    .line 2
    .line 3
    return p0
.end method

.method public getNanoTime()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getOnFlingListener()Lyw;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:Lyw;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->V:Z

    .line 2
    .line 3
    return p0
.end method

.method public getRecycledViewPool()Lbx;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcx;->c()Lbx;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getScrollState()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:I

    .line 2
    .line 3
    return p0
.end method

.method public final h(Lzw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final hasNestedScrollingParent()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lrs;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lrs;->e(I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {p1}, Lg9;->k(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->B:I

    .line 28
    .line 29
    if-lez p1, :cond_2

    .line 30
    .line 31
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final isAttachedToWindow()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isLayoutSuppressed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lrs;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean p0, p0, Lrs;->d:Z

    .line 6
    .line 7
    return p0
.end method

.method public final k()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Ly2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly2;->l()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    const/4 v4, -0x1

    .line 10
    if-ge v3, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ly2;->k(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v5}, Lkx;->o()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-nez v6, :cond_0

    .line 25
    .line 26
    iput v4, v5, Lkx;->d:I

    .line 27
    .line 28
    iput v4, v5, Lkx;->g:I

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 34
    .line 35
    iget-object v0, p0, Lcx;->a:Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object v1, p0, Lcx;->c:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    move v5, v2

    .line 44
    :goto_1
    if-ge v5, v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lkx;

    .line 51
    .line 52
    iput v4, v6, Lkx;->d:I

    .line 53
    .line 54
    iput v4, v6, Lkx;->g:I

    .line 55
    .line 56
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    move v3, v2

    .line 64
    :goto_2
    if-ge v3, v1, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Lkx;

    .line 71
    .line 72
    iput v4, v5, Lkx;->d:I

    .line 73
    .line 74
    iput v4, v5, Lkx;->g:I

    .line 75
    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    iget-object v0, p0, Lcx;->b:Ljava/util/ArrayList;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    :goto_3
    if-ge v2, v0, :cond_4

    .line 88
    .line 89
    iget-object v1, p0, Lcx;->b:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lkx;

    .line 96
    .line 97
    iput v4, v1, Lkx;->d:I

    .line 98
    .line 99
    iput v4, v1, Lkx;->g:I

    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    return-void
.end method

.method public final l(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-lez p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    if-gez p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    or-int/2addr v0, p1

    .line 50
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    if-lez p2, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    or-int/2addr v0, p1

    .line 74
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    if-gez p2, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    or-int/2addr v0, p1

    .line 98
    :cond_3
    if-eqz v0, :cond_4

    .line 99
    .line 100
    sget-object p1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 103
    .line 104
    .line 105
    :cond_4
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 2
    .line 3
    const-string v1, "RV FullInvalidate"

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Lh2;

    .line 13
    .line 14
    invoke-virtual {v0}, Lh2;->f()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lh2;->f()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    sget v0, Lo30;->a:I

    .line 31
    .line 32
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void

    .line 42
    :cond_3
    :goto_1
    sget v0, Lo30;->a:I

    .line 43
    .line 44
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final n(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    sget-object v0, Lw50;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {p1, v1, v0}, Lww;->g(III)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {p2, v1, v0}, Lww;->g(III)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final o()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput-boolean v2, v1, Lhx;->i:Z

    .line 17
    .line 18
    iget v3, v1, Lhx;->d:I

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    if-ne v3, v4, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 24
    .line 25
    .line 26
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 27
    .line 28
    invoke-virtual {v3, v0}, Lww;->p0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->q()V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->d:Lh2;

    .line 36
    .line 37
    iget-object v5, v3, Lh2;->d:Ljava/io/Serializable;

    .line 38
    .line 39
    check-cast v5, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_3

    .line 46
    .line 47
    iget-object v3, v3, Lh2;->c:Ljava/io/Serializable;

    .line 48
    .line 49
    check-cast v3, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 59
    .line 60
    iget v3, v3, Lww;->n:I

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-ne v3, v5, :cond_5

    .line 67
    .line 68
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 69
    .line 70
    iget v3, v3, Lww;->o:I

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eq v3, v5, :cond_4

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 80
    .line 81
    invoke-virtual {v3, v0}, Lww;->p0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    :goto_1
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 86
    .line 87
    invoke-virtual {v3, v0}, Lww;->p0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->q()V

    .line 91
    .line 92
    .line 93
    :goto_2
    const/4 v3, 0x4

    .line 94
    invoke-virtual {v1, v3}, Lhx;->a(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->a0()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->P()V

    .line 101
    .line 102
    .line 103
    iput v4, v1, Lhx;->d:I

    .line 104
    .line 105
    iget-boolean v5, v1, Lhx;->j:Z

    .line 106
    .line 107
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Ly2;

    .line 108
    .line 109
    const/4 v7, 0x0

    .line 110
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 111
    .line 112
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Ls4;

    .line 113
    .line 114
    if-eqz v5, :cond_22

    .line 115
    .line 116
    invoke-virtual {v6}, Ly2;->e()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    sub-int/2addr v5, v4

    .line 121
    :goto_3
    if-ltz v5, :cond_14

    .line 122
    .line 123
    invoke-virtual {v6, v5}, Ly2;->d(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    invoke-virtual {v10}, Lkx;->o()Z

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    if-eqz v11, :cond_6

    .line 136
    .line 137
    move/from16 v17, v4

    .line 138
    .line 139
    goto/16 :goto_8

    .line 140
    .line 141
    :cond_6
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->G(Lkx;)J

    .line 142
    .line 143
    .line 144
    move-result-wide v11

    .line 145
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 146
    .line 147
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    new-instance v13, Lus;

    .line 151
    .line 152
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v13, v10}, Lus;->a(Lkx;)V

    .line 156
    .line 157
    .line 158
    iget-object v14, v9, Ls4;->c:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v14, Ljp;

    .line 161
    .line 162
    iget-object v15, v9, Ls4;->b:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v15, Lg00;

    .line 165
    .line 166
    invoke-virtual {v14, v11, v12}, Ljp;->c(J)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v14

    .line 170
    check-cast v14, Lkx;

    .line 171
    .line 172
    if-eqz v14, :cond_12

    .line 173
    .line 174
    invoke-virtual {v14}, Lkx;->o()Z

    .line 175
    .line 176
    .line 177
    move-result v16

    .line 178
    if-nez v16, :cond_12

    .line 179
    .line 180
    invoke-virtual {v15, v14, v7}, Lg00;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v16

    .line 184
    move/from16 v17, v4

    .line 185
    .line 186
    move-object/from16 v4, v16

    .line 187
    .line 188
    check-cast v4, Ld60;

    .line 189
    .line 190
    if-eqz v4, :cond_7

    .line 191
    .line 192
    iget v4, v4, Ld60;->a:I

    .line 193
    .line 194
    and-int/lit8 v4, v4, 0x1

    .line 195
    .line 196
    if-eqz v4, :cond_7

    .line 197
    .line 198
    move/from16 v4, v17

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_7
    move v4, v2

    .line 202
    :goto_4
    invoke-virtual {v15, v10, v7}, Lg00;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v15

    .line 206
    check-cast v15, Ld60;

    .line 207
    .line 208
    if-eqz v15, :cond_8

    .line 209
    .line 210
    iget v15, v15, Ld60;->a:I

    .line 211
    .line 212
    and-int/lit8 v15, v15, 0x1

    .line 213
    .line 214
    if-eqz v15, :cond_8

    .line 215
    .line 216
    move/from16 v15, v17

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_8
    move v15, v2

    .line 220
    :goto_5
    if-eqz v4, :cond_9

    .line 221
    .line 222
    if-ne v14, v10, :cond_9

    .line 223
    .line 224
    invoke-virtual {v9, v10, v13}, Ls4;->a(Lkx;Lus;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_8

    .line 228
    .line 229
    :cond_9
    invoke-virtual {v9, v14, v3}, Ls4;->F(Lkx;I)Lus;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    invoke-virtual {v9, v10, v13}, Ls4;->a(Lkx;Lus;)V

    .line 234
    .line 235
    .line 236
    const/16 v13, 0x8

    .line 237
    .line 238
    invoke-virtual {v9, v10, v13}, Ls4;->F(Lkx;I)Lus;

    .line 239
    .line 240
    .line 241
    move-result-object v13

    .line 242
    if-nez v7, :cond_e

    .line 243
    .line 244
    invoke-virtual {v6}, Ly2;->e()I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    move v7, v2

    .line 249
    :goto_6
    if-ge v7, v4, :cond_d

    .line 250
    .line 251
    invoke-virtual {v6, v7}, Ly2;->d(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    invoke-static {v13}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 256
    .line 257
    .line 258
    move-result-object v13

    .line 259
    if-ne v13, v10, :cond_a

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_a
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->G(Lkx;)J

    .line 263
    .line 264
    .line 265
    move-result-wide v18

    .line 266
    cmp-long v15, v18, v11

    .line 267
    .line 268
    if-nez v15, :cond_c

    .line 269
    .line 270
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 271
    .line 272
    const-string v2, " \n View Holder 2:"

    .line 273
    .line 274
    if-eqz v1, :cond_b

    .line 275
    .line 276
    iget-boolean v1, v1, Low;->b:Z

    .line 277
    .line 278
    if-eqz v1, :cond_b

    .line 279
    .line 280
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 281
    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v4, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    .line 285
    .line 286
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw v1

    .line 313
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 314
    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    const-string v4, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    .line 318
    .line 319
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    throw v1

    .line 346
    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 347
    .line 348
    goto :goto_6

    .line 349
    :cond_d
    invoke-static {v14}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    invoke-static {v10}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    goto :goto_8

    .line 359
    :cond_e
    invoke-virtual {v14, v2}, Lkx;->n(Z)V

    .line 360
    .line 361
    .line 362
    if-eqz v4, :cond_f

    .line 363
    .line 364
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->f(Lkx;)V

    .line 365
    .line 366
    .line 367
    :cond_f
    if-eq v14, v10, :cond_11

    .line 368
    .line 369
    if-eqz v15, :cond_10

    .line 370
    .line 371
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->f(Lkx;)V

    .line 372
    .line 373
    .line 374
    :cond_10
    iput-object v10, v14, Lkx;->h:Lkx;

    .line 375
    .line 376
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->f(Lkx;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v8, v14}, Lcx;->j(Lkx;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v10, v2}, Lkx;->n(Z)V

    .line 383
    .line 384
    .line 385
    iput-object v14, v10, Lkx;->i:Lkx;

    .line 386
    .line 387
    :cond_11
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 388
    .line 389
    invoke-virtual {v4, v14, v10, v7, v13}, Lsw;->a(Lkx;Lkx;Lus;Lus;)Z

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    if-eqz v4, :cond_13

    .line 394
    .line 395
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->S()V

    .line 396
    .line 397
    .line 398
    goto :goto_8

    .line 399
    :cond_12
    move/from16 v17, v4

    .line 400
    .line 401
    invoke-virtual {v9, v10, v13}, Ls4;->a(Lkx;Lus;)V

    .line 402
    .line 403
    .line 404
    :cond_13
    :goto_8
    add-int/lit8 v5, v5, -0x1

    .line 405
    .line 406
    move/from16 v4, v17

    .line 407
    .line 408
    const/4 v7, 0x0

    .line 409
    goto/16 :goto_3

    .line 410
    .line 411
    :cond_14
    move/from16 v17, v4

    .line 412
    .line 413
    iget-object v3, v9, Ls4;->b:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast v3, Lg00;

    .line 416
    .line 417
    iget v4, v3, Lg00;->c:I

    .line 418
    .line 419
    add-int/lit8 v4, v4, -0x1

    .line 420
    .line 421
    :goto_9
    if-ltz v4, :cond_21

    .line 422
    .line 423
    invoke-virtual {v3, v4}, Lg00;->h(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    move-object v11, v5

    .line 428
    check-cast v11, Lkx;

    .line 429
    .line 430
    invoke-virtual {v3, v4}, Lg00;->i(I)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    check-cast v5, Ld60;

    .line 435
    .line 436
    iget v7, v5, Ld60;->a:I

    .line 437
    .line 438
    and-int/lit8 v10, v7, 0x3

    .line 439
    .line 440
    iget-object v12, v0, Landroidx/recyclerview/widget/RecyclerView;->r0:Lnw;

    .line 441
    .line 442
    const/4 v13, 0x3

    .line 443
    if-ne v10, v13, :cond_15

    .line 444
    .line 445
    iget-object v7, v12, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 446
    .line 447
    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 448
    .line 449
    iget-object v11, v11, Lkx;->a:Landroid/view/View;

    .line 450
    .line 451
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 452
    .line 453
    invoke-virtual {v10, v11, v7}, Lww;->i0(Landroid/view/View;Lcx;)V

    .line 454
    .line 455
    .line 456
    :goto_a
    move-object/from16 v19, v3

    .line 457
    .line 458
    :goto_b
    const/4 v3, 0x0

    .line 459
    goto/16 :goto_10

    .line 460
    .line 461
    :cond_15
    and-int/lit8 v10, v7, 0x1

    .line 462
    .line 463
    if-eqz v10, :cond_17

    .line 464
    .line 465
    iget-object v7, v5, Ld60;->b:Lus;

    .line 466
    .line 467
    if-nez v7, :cond_16

    .line 468
    .line 469
    iget-object v7, v12, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 470
    .line 471
    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 472
    .line 473
    iget-object v11, v11, Lkx;->a:Landroid/view/View;

    .line 474
    .line 475
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 476
    .line 477
    invoke-virtual {v10, v11, v7}, Lww;->i0(Landroid/view/View;Lcx;)V

    .line 478
    .line 479
    .line 480
    goto :goto_a

    .line 481
    :cond_16
    iget-object v10, v5, Ld60;->c:Lus;

    .line 482
    .line 483
    invoke-virtual {v12, v11, v7, v10}, Lnw;->g(Lkx;Lus;Lus;)V

    .line 484
    .line 485
    .line 486
    goto :goto_a

    .line 487
    :cond_17
    and-int/lit8 v10, v7, 0xe

    .line 488
    .line 489
    const/16 v13, 0xe

    .line 490
    .line 491
    if-ne v10, v13, :cond_18

    .line 492
    .line 493
    iget-object v7, v5, Ld60;->b:Lus;

    .line 494
    .line 495
    iget-object v10, v5, Ld60;->c:Lus;

    .line 496
    .line 497
    invoke-virtual {v12, v11, v7, v10}, Lnw;->f(Lkx;Lus;Lus;)V

    .line 498
    .line 499
    .line 500
    goto :goto_a

    .line 501
    :cond_18
    and-int/lit8 v10, v7, 0xc

    .line 502
    .line 503
    const/16 v13, 0xc

    .line 504
    .line 505
    if-ne v10, v13, :cond_1e

    .line 506
    .line 507
    iget-object v7, v5, Ld60;->b:Lus;

    .line 508
    .line 509
    iget-object v10, v5, Ld60;->c:Lus;

    .line 510
    .line 511
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v11, v2}, Lkx;->n(Z)V

    .line 515
    .line 516
    .line 517
    iget-object v12, v12, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 518
    .line 519
    iget-boolean v13, v12, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 520
    .line 521
    iget-object v14, v12, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 522
    .line 523
    if-eqz v13, :cond_1a

    .line 524
    .line 525
    invoke-virtual {v14, v11, v11, v7, v10}, Lsw;->a(Lkx;Lkx;Lus;Lus;)Z

    .line 526
    .line 527
    .line 528
    move-result v7

    .line 529
    if-eqz v7, :cond_19

    .line 530
    .line 531
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->S()V

    .line 532
    .line 533
    .line 534
    :cond_19
    move-object/from16 v19, v3

    .line 535
    .line 536
    goto :goto_e

    .line 537
    :cond_1a
    check-cast v14, Lhe;

    .line 538
    .line 539
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    .line 541
    .line 542
    move-object v13, v12

    .line 543
    iget v12, v7, Lus;->a:I

    .line 544
    .line 545
    iget v15, v10, Lus;->a:I

    .line 546
    .line 547
    if-ne v12, v15, :cond_1c

    .line 548
    .line 549
    iget v2, v7, Lus;->b:I

    .line 550
    .line 551
    move-object/from16 v19, v3

    .line 552
    .line 553
    iget v3, v10, Lus;->b:I

    .line 554
    .line 555
    if-eq v2, v3, :cond_1b

    .line 556
    .line 557
    goto :goto_c

    .line 558
    :cond_1b
    invoke-virtual {v14, v11}, Lsw;->c(Lkx;)V

    .line 559
    .line 560
    .line 561
    move-object v2, v13

    .line 562
    const/4 v3, 0x0

    .line 563
    goto :goto_d

    .line 564
    :cond_1c
    move-object/from16 v19, v3

    .line 565
    .line 566
    :goto_c
    iget v2, v7, Lus;->b:I

    .line 567
    .line 568
    iget v3, v10, Lus;->b:I

    .line 569
    .line 570
    move-object v10, v13

    .line 571
    move v13, v2

    .line 572
    move-object v2, v10

    .line 573
    move-object v10, v14

    .line 574
    move v14, v15

    .line 575
    move v15, v3

    .line 576
    invoke-virtual/range {v10 .. v15}, Lhe;->g(Lkx;IIII)Z

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    :goto_d
    if-eqz v3, :cond_1d

    .line 581
    .line 582
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->S()V

    .line 583
    .line 584
    .line 585
    :cond_1d
    :goto_e
    const/4 v2, 0x0

    .line 586
    goto/16 :goto_b

    .line 587
    .line 588
    :cond_1e
    move-object/from16 v19, v3

    .line 589
    .line 590
    and-int/lit8 v2, v7, 0x4

    .line 591
    .line 592
    if-eqz v2, :cond_20

    .line 593
    .line 594
    iget-object v2, v5, Ld60;->b:Lus;

    .line 595
    .line 596
    const/4 v3, 0x0

    .line 597
    invoke-virtual {v12, v11, v2, v3}, Lnw;->g(Lkx;Lus;Lus;)V

    .line 598
    .line 599
    .line 600
    :cond_1f
    :goto_f
    const/4 v2, 0x0

    .line 601
    goto :goto_10

    .line 602
    :cond_20
    const/4 v3, 0x0

    .line 603
    and-int/lit8 v2, v7, 0x8

    .line 604
    .line 605
    if-eqz v2, :cond_1f

    .line 606
    .line 607
    iget-object v2, v5, Ld60;->b:Lus;

    .line 608
    .line 609
    iget-object v7, v5, Ld60;->c:Lus;

    .line 610
    .line 611
    invoke-virtual {v12, v11, v2, v7}, Lnw;->f(Lkx;Lus;Lus;)V

    .line 612
    .line 613
    .line 614
    goto :goto_f

    .line 615
    :goto_10
    iput v2, v5, Ld60;->a:I

    .line 616
    .line 617
    iput-object v3, v5, Ld60;->b:Lus;

    .line 618
    .line 619
    iput-object v3, v5, Ld60;->c:Lus;

    .line 620
    .line 621
    sget-object v2, Ld60;->d:Leu;

    .line 622
    .line 623
    invoke-virtual {v2, v5}, Leu;->c(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    add-int/lit8 v4, v4, -0x1

    .line 627
    .line 628
    move-object/from16 v3, v19

    .line 629
    .line 630
    const/4 v2, 0x0

    .line 631
    goto/16 :goto_9

    .line 632
    .line 633
    :cond_21
    const/4 v3, 0x0

    .line 634
    goto :goto_11

    .line 635
    :cond_22
    move/from16 v17, v4

    .line 636
    .line 637
    move-object v3, v7

    .line 638
    :goto_11
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 639
    .line 640
    invoke-virtual {v2, v8}, Lww;->h0(Lcx;)V

    .line 641
    .line 642
    .line 643
    iget v2, v1, Lhx;->e:I

    .line 644
    .line 645
    iput v2, v1, Lhx;->b:I

    .line 646
    .line 647
    const/4 v2, 0x0

    .line 648
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 649
    .line 650
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->z:Z

    .line 651
    .line 652
    iput-boolean v2, v1, Lhx;->j:Z

    .line 653
    .line 654
    iput-boolean v2, v1, Lhx;->k:Z

    .line 655
    .line 656
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 657
    .line 658
    iput-boolean v2, v4, Lww;->f:Z

    .line 659
    .line 660
    iget-object v4, v8, Lcx;->b:Ljava/util/ArrayList;

    .line 661
    .line 662
    if-eqz v4, :cond_23

    .line 663
    .line 664
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 665
    .line 666
    .line 667
    :cond_23
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 668
    .line 669
    iget-boolean v5, v4, Lww;->k:Z

    .line 670
    .line 671
    if-eqz v5, :cond_24

    .line 672
    .line 673
    iput v2, v4, Lww;->j:I

    .line 674
    .line 675
    iput-boolean v2, v4, Lww;->k:Z

    .line 676
    .line 677
    invoke-virtual {v8}, Lcx;->k()V

    .line 678
    .line 679
    .line 680
    :cond_24
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 681
    .line 682
    invoke-virtual {v4, v1}, Lww;->c0(Lhx;)V

    .line 683
    .line 684
    .line 685
    move/from16 v4, v17

    .line 686
    .line 687
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->Q(Z)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->b0(Z)V

    .line 691
    .line 692
    .line 693
    iget-object v5, v9, Ls4;->b:Ljava/lang/Object;

    .line 694
    .line 695
    check-cast v5, Lg00;

    .line 696
    .line 697
    invoke-virtual {v5}, Lg00;->clear()V

    .line 698
    .line 699
    .line 700
    iget-object v5, v9, Ls4;->c:Ljava/lang/Object;

    .line 701
    .line 702
    check-cast v5, Ljp;

    .line 703
    .line 704
    invoke-virtual {v5}, Ljp;->a()V

    .line 705
    .line 706
    .line 707
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->k0:[I

    .line 708
    .line 709
    aget v7, v5, v2

    .line 710
    .line 711
    aget v8, v5, v4

    .line 712
    .line 713
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->C([I)V

    .line 714
    .line 715
    .line 716
    aget v9, v5, v2

    .line 717
    .line 718
    if-ne v9, v7, :cond_25

    .line 719
    .line 720
    aget v5, v5, v4

    .line 721
    .line 722
    if-eq v5, v8, :cond_26

    .line 723
    .line 724
    :cond_25
    invoke-virtual {v0, v2, v2}, Landroidx/recyclerview/widget/RecyclerView;->t(II)V

    .line 725
    .line 726
    .line 727
    :cond_26
    iget-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->V:Z

    .line 728
    .line 729
    const-wide/16 v7, -0x1

    .line 730
    .line 731
    const/4 v5, -0x1

    .line 732
    if-eqz v4, :cond_38

    .line 733
    .line 734
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 735
    .line 736
    if-eqz v4, :cond_38

    .line 737
    .line 738
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 739
    .line 740
    .line 741
    move-result v4

    .line 742
    if-eqz v4, :cond_38

    .line 743
    .line 744
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 745
    .line 746
    .line 747
    move-result v4

    .line 748
    const/high16 v9, 0x60000

    .line 749
    .line 750
    if-eq v4, v9, :cond_38

    .line 751
    .line 752
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 753
    .line 754
    .line 755
    move-result v4

    .line 756
    const/high16 v9, 0x20000

    .line 757
    .line 758
    if-ne v4, v9, :cond_27

    .line 759
    .line 760
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 761
    .line 762
    .line 763
    move-result v4

    .line 764
    if-eqz v4, :cond_27

    .line 765
    .line 766
    goto/16 :goto_1c

    .line 767
    .line 768
    :cond_27
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 769
    .line 770
    .line 771
    move-result v4

    .line 772
    if-nez v4, :cond_28

    .line 773
    .line 774
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 775
    .line 776
    .line 777
    move-result-object v4

    .line 778
    iget-object v9, v6, Ly2;->d:Ljava/lang/Object;

    .line 779
    .line 780
    check-cast v9, Ljava/util/ArrayList;

    .line 781
    .line 782
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 783
    .line 784
    .line 785
    move-result v4

    .line 786
    if-nez v4, :cond_28

    .line 787
    .line 788
    goto/16 :goto_1c

    .line 789
    .line 790
    :cond_28
    iget-wide v9, v1, Lhx;->m:J

    .line 791
    .line 792
    cmp-long v4, v9, v7

    .line 793
    .line 794
    if-eqz v4, :cond_2c

    .line 795
    .line 796
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 797
    .line 798
    iget-boolean v4, v4, Low;->b:Z

    .line 799
    .line 800
    if-eqz v4, :cond_2c

    .line 801
    .line 802
    if-nez v4, :cond_29

    .line 803
    .line 804
    goto :goto_14

    .line 805
    :cond_29
    invoke-virtual {v6}, Ly2;->l()I

    .line 806
    .line 807
    .line 808
    move-result v4

    .line 809
    move v11, v2

    .line 810
    move-object v12, v3

    .line 811
    :goto_12
    if-ge v11, v4, :cond_2d

    .line 812
    .line 813
    invoke-virtual {v6, v11}, Ly2;->k(I)Landroid/view/View;

    .line 814
    .line 815
    .line 816
    move-result-object v13

    .line 817
    invoke-static {v13}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 818
    .line 819
    .line 820
    move-result-object v13

    .line 821
    if-eqz v13, :cond_2b

    .line 822
    .line 823
    invoke-virtual {v13}, Lkx;->h()Z

    .line 824
    .line 825
    .line 826
    move-result v14

    .line 827
    if-nez v14, :cond_2b

    .line 828
    .line 829
    iget-wide v14, v13, Lkx;->e:J

    .line 830
    .line 831
    cmp-long v14, v14, v9

    .line 832
    .line 833
    if-nez v14, :cond_2b

    .line 834
    .line 835
    iget-object v12, v13, Lkx;->a:Landroid/view/View;

    .line 836
    .line 837
    iget-object v14, v6, Ly2;->d:Ljava/lang/Object;

    .line 838
    .line 839
    check-cast v14, Ljava/util/ArrayList;

    .line 840
    .line 841
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    move-result v12

    .line 845
    if-eqz v12, :cond_2a

    .line 846
    .line 847
    move-object v12, v13

    .line 848
    goto :goto_13

    .line 849
    :cond_2a
    move-object v12, v13

    .line 850
    goto :goto_15

    .line 851
    :cond_2b
    :goto_13
    add-int/lit8 v11, v11, 0x1

    .line 852
    .line 853
    goto :goto_12

    .line 854
    :cond_2c
    :goto_14
    move-object v12, v3

    .line 855
    :cond_2d
    :goto_15
    if-eqz v12, :cond_2f

    .line 856
    .line 857
    iget-object v4, v12, Lkx;->a:Landroid/view/View;

    .line 858
    .line 859
    iget-object v9, v6, Ly2;->d:Ljava/lang/Object;

    .line 860
    .line 861
    check-cast v9, Ljava/util/ArrayList;

    .line 862
    .line 863
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 864
    .line 865
    .line 866
    move-result v9

    .line 867
    if-nez v9, :cond_2f

    .line 868
    .line 869
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    .line 870
    .line 871
    .line 872
    move-result v9

    .line 873
    if-nez v9, :cond_2e

    .line 874
    .line 875
    goto :goto_17

    .line 876
    :cond_2e
    :goto_16
    move-object v3, v4

    .line 877
    goto :goto_1b

    .line 878
    :cond_2f
    :goto_17
    invoke-virtual {v6}, Ly2;->e()I

    .line 879
    .line 880
    .line 881
    move-result v4

    .line 882
    if-lez v4, :cond_36

    .line 883
    .line 884
    iget v4, v1, Lhx;->l:I

    .line 885
    .line 886
    if-eq v4, v5, :cond_30

    .line 887
    .line 888
    move v2, v4

    .line 889
    :cond_30
    invoke-virtual {v1}, Lhx;->b()I

    .line 890
    .line 891
    .line 892
    move-result v4

    .line 893
    move v6, v2

    .line 894
    :goto_18
    if-ge v6, v4, :cond_33

    .line 895
    .line 896
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->E(I)Lkx;

    .line 897
    .line 898
    .line 899
    move-result-object v9

    .line 900
    if-nez v9, :cond_31

    .line 901
    .line 902
    goto :goto_19

    .line 903
    :cond_31
    iget-object v9, v9, Lkx;->a:Landroid/view/View;

    .line 904
    .line 905
    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    .line 906
    .line 907
    .line 908
    move-result v10

    .line 909
    if-eqz v10, :cond_32

    .line 910
    .line 911
    move-object v3, v9

    .line 912
    goto :goto_1b

    .line 913
    :cond_32
    add-int/lit8 v6, v6, 0x1

    .line 914
    .line 915
    goto :goto_18

    .line 916
    :cond_33
    :goto_19
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 917
    .line 918
    .line 919
    move-result v2

    .line 920
    const/16 v17, 0x1

    .line 921
    .line 922
    add-int/lit8 v2, v2, -0x1

    .line 923
    .line 924
    :goto_1a
    if-ltz v2, :cond_36

    .line 925
    .line 926
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->E(I)Lkx;

    .line 927
    .line 928
    .line 929
    move-result-object v4

    .line 930
    if-nez v4, :cond_34

    .line 931
    .line 932
    goto :goto_1b

    .line 933
    :cond_34
    iget-object v4, v4, Lkx;->a:Landroid/view/View;

    .line 934
    .line 935
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    .line 936
    .line 937
    .line 938
    move-result v6

    .line 939
    if-eqz v6, :cond_35

    .line 940
    .line 941
    goto :goto_16

    .line 942
    :cond_35
    add-int/lit8 v2, v2, -0x1

    .line 943
    .line 944
    goto :goto_1a

    .line 945
    :cond_36
    :goto_1b
    if-eqz v3, :cond_38

    .line 946
    .line 947
    iget v0, v1, Lhx;->n:I

    .line 948
    .line 949
    int-to-long v9, v0

    .line 950
    cmp-long v2, v9, v7

    .line 951
    .line 952
    if-eqz v2, :cond_37

    .line 953
    .line 954
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    if-eqz v0, :cond_37

    .line 959
    .line 960
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    .line 961
    .line 962
    .line 963
    move-result v2

    .line 964
    if-eqz v2, :cond_37

    .line 965
    .line 966
    move-object v3, v0

    .line 967
    :cond_37
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 968
    .line 969
    .line 970
    :cond_38
    :goto_1c
    iput-wide v7, v1, Lhx;->m:J

    .line 971
    .line 972
    iput v5, v1, Lhx;->l:I

    .line 973
    .line 974
    iput v5, v1, Lhx;->n:I

    .line 975
    .line 976
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 9
    .line 10
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    move v2, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v0

    .line 23
    :goto_0
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iput-boolean v1, v2, Lww;->g:Z

    .line 30
    .line 31
    invoke-virtual {v2, p0}, Lww;->Q(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    .line 35
    .line 36
    sget-object v0, Lel;->e:Ljava/lang/ThreadLocal;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lel;

    .line 43
    .line 44
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Lel;

    .line 45
    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    new-instance v1, Lel;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v2, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v2, v1, Lel;->a:Ljava/util/ArrayList;

    .line 59
    .line 60
    new-instance v2, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v2, v1, Lel;->d:Ljava/util/ArrayList;

    .line 66
    .line 67
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Lel;

    .line 68
    .line 69
    sget-object v1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/high16 v2, 0x41f00000

    .line 88
    .line 89
    cmpl-float v2, v1, v2

    .line 90
    .line 91
    if-ltz v2, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/high16 v1, 0x42700000

    .line 95
    .line 96
    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Lel;

    .line 97
    .line 98
    const v3, 0x4e6e6b28

    .line 99
    .line 100
    .line 101
    div-float/2addr v3, v1

    .line 102
    float-to-long v3, v3

    .line 103
    iput-wide v3, v2, Lel;->c:J

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Lel;

    .line 109
    .line 110
    iget-object v0, v0, Lel;->a:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lsw;->e()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Ljx;

    .line 16
    .line 17
    iget-object v2, v1, Ljx;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    iget-object v1, v1, Ljx;->c:Landroid/widget/OverScroller;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, v1, Lww;->e:Ljo;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Ljo;->i()V

    .line 36
    .line 37
    .line 38
    :cond_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iput-boolean v0, v1, Lww;->g:Z

    .line 45
    .line 46
    invoke-virtual {v1, p0}, Lww;->R(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->p0:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->q0:Lu6;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Ls4;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    :goto_0
    sget-object v0, Ld60;->d:Leu;

    .line 65
    .line 66
    invoke-virtual {v0}, Leu;->a()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Lel;

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    iget-object v0, v0, Lel;->a:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Lel;

    .line 84
    .line 85
    :cond_4
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ltw;

    .line 18
    .line 19
    invoke-virtual {v2, p0}, Ltw;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_3

    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    if-ne v0, v2, :cond_8

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    and-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 32
    .line 33
    invoke-virtual {v0}, Lww;->e()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    const/16 v0, 0x9

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    neg-float v0, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move v0, v2

    .line 48
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 49
    .line 50
    invoke-virtual {v3}, Lww;->d()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    const/16 v3, 0xa

    .line 57
    .line 58
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    :goto_1
    move v3, v2

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/high16 v3, 0x400000

    .line 70
    .line 71
    and-int/2addr v0, v3

    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    const/16 v0, 0x1a

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 81
    .line 82
    invoke-virtual {v3}, Lww;->e()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_5

    .line 87
    .line 88
    neg-float v0, v0

    .line 89
    goto :goto_1

    .line 90
    :cond_5
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 91
    .line 92
    invoke-virtual {v3}, Lww;->d()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_6

    .line 97
    .line 98
    move v3, v0

    .line 99
    move v0, v2

    .line 100
    goto :goto_2

    .line 101
    :cond_6
    move v0, v2

    .line 102
    move v3, v0

    .line 103
    :goto_2
    cmpl-float v4, v0, v2

    .line 104
    .line 105
    if-nez v4, :cond_7

    .line 106
    .line 107
    cmpl-float v2, v3, v2

    .line 108
    .line 109
    if-eqz v2, :cond_8

    .line 110
    .line 111
    :cond_7
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->T:F

    .line 112
    .line 113
    mul-float/2addr v3, v2

    .line 114
    float-to-int v2, v3

    .line 115
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->U:F

    .line 116
    .line 117
    mul-float/2addr v0, v3

    .line 118
    float-to-int v0, v0

    .line 119
    invoke-virtual {p0, v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->W(IILandroid/view/MotionEvent;)Z

    .line 120
    .line 121
    .line 122
    :cond_8
    :goto_3
    return v1
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_2

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Lbi;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->B(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 22
    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_2
    invoke-virtual {v0}, Lww;->d()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 36
    .line 37
    invoke-virtual {v3}, Lww;->e()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 42
    .line 43
    if-nez v4, :cond_3

    .line 44
    .line 45
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 50
    .line 51
    :cond_3
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 52
    .line 53
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const/4 v6, 0x2

    .line 65
    const/high16 v7, 0x3f000000

    .line 66
    .line 67
    if-eqz v4, :cond_c

    .line 68
    .line 69
    if-eq v4, v2, :cond_b

    .line 70
    .line 71
    if-eq v4, v6, :cond_7

    .line 72
    .line 73
    const/4 v0, 0x3

    .line 74
    if-eq v4, v0, :cond_6

    .line 75
    .line 76
    const/4 v0, 0x5

    .line 77
    if-eq v4, v0, :cond_5

    .line 78
    .line 79
    const/4 v0, 0x6

    .line 80
    if-eq v4, v0, :cond_4

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->R(Landroid/view/MotionEvent;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_1

    .line 88
    .line 89
    :cond_5
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 94
    .line 95
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    add-float/2addr v0, v7

    .line 100
    float-to-int v0, v0

    .line 101
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 102
    .line 103
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 104
    .line 105
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    add-float/2addr p1, v7

    .line 110
    float-to-int p1, p1

    .line 111
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 112
    .line 113
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_1

    .line 124
    .line 125
    :cond_7
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 126
    .line 127
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-gez v4, :cond_8

    .line 132
    .line 133
    goto/16 :goto_2

    .line 134
    .line 135
    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    add-float/2addr v5, v7

    .line 140
    float-to-int v5, v5

    .line 141
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    add-float/2addr p1, v7

    .line 146
    float-to-int p1, p1

    .line 147
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->I:I

    .line 148
    .line 149
    if-eq v4, v2, :cond_10

    .line 150
    .line 151
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 152
    .line 153
    sub-int v4, v5, v4

    .line 154
    .line 155
    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 156
    .line 157
    sub-int v6, p1, v6

    .line 158
    .line 159
    if-eqz v0, :cond_9

    .line 160
    .line 161
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 166
    .line 167
    if-le v0, v4, :cond_9

    .line 168
    .line 169
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 170
    .line 171
    move v0, v2

    .line 172
    goto :goto_0

    .line 173
    :cond_9
    move v0, v1

    .line 174
    :goto_0
    if-eqz v3, :cond_a

    .line 175
    .line 176
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 181
    .line 182
    if-le v3, v4, :cond_a

    .line 183
    .line 184
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 185
    .line 186
    move v0, v2

    .line 187
    :cond_a
    if-eqz v0, :cond_10

    .line 188
    .line 189
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_b
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->c0(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_c
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 203
    .line 204
    if-eqz v4, :cond_d

    .line 205
    .line 206
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 207
    .line 208
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    add-float/2addr v4, v7

    .line 219
    float-to-int v4, v4

    .line 220
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 221
    .line 222
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 223
    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    add-float/2addr p1, v7

    .line 229
    float-to-int p1, p1

    .line 230
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 231
    .line 232
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 233
    .line 234
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:I

    .line 235
    .line 236
    if-ne p1, v6, :cond_e

    .line 237
    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->c0(I)V

    .line 249
    .line 250
    .line 251
    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    .line 252
    .line 253
    aput v1, p1, v2

    .line 254
    .line 255
    aput v1, p1, v1

    .line 256
    .line 257
    if-eqz v3, :cond_f

    .line 258
    .line 259
    or-int/lit8 v0, v0, 0x2

    .line 260
    .line 261
    :cond_f
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lrs;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p1, v0, v1}, Lrs;->f(II)Z

    .line 266
    .line 267
    .line 268
    :cond_10
    :goto_1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:I

    .line 269
    .line 270
    if-ne p0, v2, :cond_11

    .line 271
    .line 272
    return v2

    .line 273
    :cond_11
    :goto_2
    return v1
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    sget p1, Lo30;->a:I

    .line 2
    .line 3
    const-string p1, "RV OnLayout"

    .line 4
    .line 5
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 16
    .line 17
    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lww;->L()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 14
    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 26
    .line 27
    iget-object v3, v3, Lww;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    .line 30
    .line 31
    .line 32
    const/high16 v3, 0x40000000

    .line 33
    .line 34
    if-ne v0, v3, :cond_1

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget v0, v1, Lhx;->d:I

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    if-ne v0, v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 50
    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 53
    .line 54
    invoke-virtual {v0, p1, p2}, Lww;->q0(II)V

    .line 55
    .line 56
    .line 57
    iput-boolean v2, v1, Lhx;->i:Z

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->q()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 63
    .line 64
    invoke-virtual {v0, p1, p2}, Lww;->s0(II)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 68
    .line 69
    invoke-virtual {v0}, Lww;->v0()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-virtual {v0, v4, v3}, Lww;->q0(II)V

    .line 94
    .line 95
    .line 96
    iput-boolean v2, v1, Lhx;->i:Z

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->q()V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 102
    .line 103
    invoke-virtual {p0, p1, p2}, Lww;->s0(II)V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_0
    return-void

    .line 107
    :cond_5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->q:Z

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 112
    .line 113
    iget-object p0, p0, Lww;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    .line 115
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_6
    iget-boolean v0, v1, Lhx;->k:Z

    .line 120
    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 136
    .line 137
    const/4 v2, 0x0

    .line 138
    if-eqz v0, :cond_8

    .line 139
    .line 140
    invoke-virtual {v0}, Low;->a()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iput v0, v1, Lhx;->e:I

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_8
    iput v2, v1, Lhx;->e:I

    .line 148
    .line 149
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->a0()V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 153
    .line 154
    iget-object v0, v0, Lww;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 155
    .line 156
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->b0(Z)V

    .line 160
    .line 161
    .line 162
    iput-boolean v2, v1, Lhx;->g:Z

    .line 163
    .line 164
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lex;

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
    check-cast p1, Lex;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Lex;

    .line 12
    .line 13
    iget-object p1, p1, Ld;->a:Landroid/os/Parcelable;

    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Lex;

    .line 23
    .line 24
    iget-object p0, p0, Lex;->c:Landroid/os/Parcelable;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Lww;->d0(Landroid/os/Parcelable;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Lex;

    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ld;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Lex;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object p0, v1, Lex;->c:Landroid/os/Parcelable;

    .line 15
    .line 16
    iput-object p0, v0, Lex;->c:Landroid/os/Parcelable;

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lww;->e0()Landroid/os/Parcelable;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iput-object p0, v0, Lex;->c:Landroid/os/Parcelable;

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    iput-object p0, v0, Lex;->c:Landroid/os/Parcelable;

    .line 32
    .line 33
    return-object v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-ne p1, p3, :cond_1

    .line 5
    .line 6
    if-eq p2, p4, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    return-void

    .line 10
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 18
    .line 19
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    .line 1
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    const/4 v7, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    move v3, v7

    goto/16 :goto_24

    .line 2
    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Lbi;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-nez v1, :cond_3

    .line 3
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v7

    goto/16 :goto_4

    .line 4
    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->B(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_4

    .line 5
    :cond_3
    iget v9, v1, Lbi;->b:I

    .line 6
    iget v10, v1, Lbi;->v:I

    if-nez v10, :cond_4

    goto/16 :goto_3

    .line 7
    :cond_4
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_8

    .line 8
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v1, v9, v10}, Lbi;->d(FF)Z

    move-result v9

    .line 9
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v1, v10, v11}, Lbi;->c(FF)Z

    move-result v10

    if-nez v9, :cond_5

    if-eqz v10, :cond_f

    :cond_5
    if-eqz v10, :cond_6

    .line 10
    iput v8, v1, Lbi;->w:I

    .line 11
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    iput v9, v1, Lbi;->p:F

    goto :goto_1

    :cond_6
    if-eqz v9, :cond_7

    .line 12
    iput v4, v1, Lbi;->w:I

    .line 13
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    iput v9, v1, Lbi;->m:F

    .line 14
    :cond_7
    :goto_1
    invoke-virtual {v1, v4}, Lbi;->f(I)V

    goto/16 :goto_3

    .line 15
    :cond_8
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-ne v10, v8, :cond_9

    iget v10, v1, Lbi;->v:I

    if-ne v10, v4, :cond_9

    .line 16
    iput v5, v1, Lbi;->m:F

    .line 17
    iput v5, v1, Lbi;->p:F

    .line 18
    invoke-virtual {v1, v8}, Lbi;->f(I)V

    .line 19
    iput v7, v1, Lbi;->w:I

    goto/16 :goto_3

    .line 20
    :cond_9
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-ne v10, v4, :cond_f

    iget v10, v1, Lbi;->v:I

    if-ne v10, v4, :cond_f

    .line 21
    invoke-virtual {v1}, Lbi;->g()V

    .line 22
    iget v10, v1, Lbi;->w:I

    const/high16 v11, 0x40000000

    if-ne v10, v8, :cond_c

    .line 23
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 24
    iget-object v14, v1, Lbi;->y:[I

    aput v9, v14, v7

    .line 25
    iget v12, v1, Lbi;->q:I

    sub-int/2addr v12, v9

    aput v12, v14, v8

    int-to-float v13, v9

    int-to-float v12, v12

    .line 26
    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 27
    iget v10, v1, Lbi;->o:I

    int-to-float v10, v10

    sub-float/2addr v10, v13

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v11

    if-gez v10, :cond_a

    goto :goto_2

    .line 28
    :cond_a
    iget v12, v1, Lbi;->p:F

    iget-object v10, v1, Lbi;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v15

    iget-object v10, v1, Lbi;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v16

    iget v10, v1, Lbi;->q:I

    move/from16 v17, v10

    .line 31
    invoke-static/range {v12 .. v17}, Lbi;->e(FF[IIII)I

    move-result v10

    if-eqz v10, :cond_b

    .line 32
    iget-object v12, v1, Lbi;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12, v10, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 33
    :cond_b
    iput v13, v1, Lbi;->p:F

    .line 34
    :cond_c
    :goto_2
    iget v10, v1, Lbi;->w:I

    if-ne v10, v4, :cond_f

    .line 35
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 36
    iget-object v14, v1, Lbi;->x:[I

    aput v9, v14, v7

    .line 37
    iget v12, v1, Lbi;->r:I

    sub-int/2addr v12, v9

    aput v12, v14, v8

    int-to-float v9, v9

    int-to-float v12, v12

    .line 38
    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 39
    iget v9, v1, Lbi;->l:I

    int-to-float v9, v9

    sub-float/2addr v9, v13

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v9, v9, v11

    if-gez v9, :cond_d

    goto :goto_3

    .line 40
    :cond_d
    iget v12, v1, Lbi;->m:F

    iget-object v9, v1, Lbi;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v15

    iget-object v9, v1, Lbi;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v16

    iget v9, v1, Lbi;->r:I

    move/from16 v17, v9

    .line 43
    invoke-static/range {v12 .. v17}, Lbi;->e(FF[IIII)I

    move-result v9

    if-eqz v9, :cond_e

    .line 44
    iget-object v10, v1, Lbi;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10, v7, v9}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 45
    :cond_e
    iput v13, v1, Lbi;->m:F

    .line 46
    :cond_f
    :goto_3
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v3, :cond_10

    if-ne v1, v8, :cond_11

    .line 47
    :cond_10
    iput-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Lbi;

    :cond_11
    move v1, v8

    :goto_4
    if-eqz v1, :cond_12

    .line 48
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    .line 49
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    return v8

    .line 50
    :cond_12
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    if-nez v1, :cond_13

    goto/16 :goto_0

    .line 51
    :cond_13
    invoke-virtual {v1}, Lww;->d()Z

    move-result v9

    .line 52
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    invoke-virtual {v1}, Lww;->e()Z

    move-result v10

    .line 53
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    if-nez v1, :cond_14

    .line 54
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 55
    :cond_14
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 56
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    .line 57
    iget-object v12, v0, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    if-nez v1, :cond_15

    .line 58
    aput v7, v12, v8

    aput v7, v12, v7

    .line 59
    :cond_15
    invoke-static {v6}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    .line 60
    aget v14, v12, v7

    int-to-float v14, v14

    aget v15, v12, v8

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v14, 0x3f000000

    if-eqz v1, :cond_53

    if-eq v1, v8, :cond_27

    if-eq v1, v4, :cond_19

    if-eq v1, v3, :cond_18

    const/4 v2, 0x5

    if-eq v1, v2, :cond_17

    const/4 v2, 0x6

    if-eq v1, v2, :cond_16

    goto/16 :goto_22

    .line 61
    :cond_16
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->R(Landroid/view/MotionEvent;)V

    goto/16 :goto_22

    .line 62
    :cond_17
    invoke-virtual {v6, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 63
    invoke-virtual {v6, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 64
    invoke-virtual {v6, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    goto/16 :goto_22

    .line 65
    :cond_18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    .line 66
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_22

    .line 67
    :cond_19
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_1a

    goto/16 :goto_0

    .line 68
    :cond_1a
    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v14

    float-to-int v11, v2

    .line 69
    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v14

    float-to-int v14, v1

    .line 70
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    sub-int/2addr v1, v11

    .line 71
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    sub-int/2addr v2, v14

    .line 72
    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView;->I:I

    if-eq v3, v8, :cond_1f

    if-eqz v9, :cond_1c

    .line 73
    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    if-lez v1, :cond_1b

    sub-int/2addr v1, v3

    .line 74
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_5

    :cond_1b
    add-int/2addr v1, v3

    .line 75
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_5
    if-eqz v1, :cond_1c

    move v3, v8

    goto :goto_6

    :cond_1c
    move v3, v7

    :goto_6
    if-eqz v10, :cond_1e

    .line 76
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    if-lez v2, :cond_1d

    sub-int/2addr v2, v4

    .line 77
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_7

    :cond_1d
    add-int/2addr v2, v4

    .line 78
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_7
    if-eqz v2, :cond_1e

    move v3, v8

    :cond_1e
    if-eqz v3, :cond_1f

    .line 79
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    :cond_1f
    move v15, v1

    move/from16 v16, v2

    .line 80
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView;->I:I

    if-ne v1, v8, :cond_55

    .line 81
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    aput v7, v3, v7

    .line 82
    aput v7, v3, v8

    if-eqz v9, :cond_20

    move v1, v15

    goto :goto_8

    :cond_20
    move v1, v7

    :goto_8
    if-eqz v10, :cond_21

    move/from16 v2, v16

    goto :goto_9

    :cond_21
    move v2, v7

    .line 83
    :goto_9
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->m0:[I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->r(II[I[II)Z

    move-result v1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->m0:[I

    if-eqz v1, :cond_22

    .line 84
    aget v1, v3, v7

    sub-int/2addr v15, v1

    .line 85
    aget v1, v3, v8

    sub-int v16, v16, v1

    .line 86
    aget v1, v12, v7

    aget v3, v2, v7

    add-int/2addr v1, v3

    aput v1, v12, v7

    .line 87
    aget v1, v12, v8

    aget v3, v2, v8

    add-int/2addr v1, v3

    aput v1, v12, v8

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_22
    move/from16 v1, v16

    .line 89
    aget v3, v2, v7

    sub-int/2addr v11, v3

    iput v11, v0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 90
    aget v2, v2, v8

    sub-int/2addr v14, v2

    iput v14, v0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    if-eqz v9, :cond_23

    move v2, v15

    goto :goto_a

    :cond_23
    move v2, v7

    :goto_a
    if-eqz v10, :cond_24

    move v7, v1

    .line 91
    :cond_24
    invoke-virtual {v0, v2, v7, v6}, Landroidx/recyclerview/widget/RecyclerView;->W(IILandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 93
    :cond_25
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->a0:Lel;

    if-eqz v2, :cond_55

    if-nez v15, :cond_26

    if-eqz v1, :cond_55

    .line 94
    :cond_26
    invoke-virtual {v2, v0, v15, v1}, Lel;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto/16 :goto_22

    .line 95
    :cond_27
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 96
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->S:I

    int-to-float v11, v6

    invoke-virtual {v1, v3, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    if-eqz v9, :cond_28

    .line 97
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 98
    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    neg-float v1, v1

    goto :goto_b

    :cond_28
    move v1, v5

    :goto_b
    if-eqz v10, :cond_29

    .line 99
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 100
    invoke-virtual {v3, v9}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    neg-float v3, v3

    goto :goto_c

    :cond_29
    move v3, v5

    :goto_c
    cmpl-float v9, v1, v5

    if-nez v9, :cond_2b

    cmpl-float v9, v3, v5

    if-eqz v9, :cond_2a

    goto :goto_d

    :cond_2a
    move v3, v7

    goto/16 :goto_20

    :cond_2b
    :goto_d
    float-to-int v1, v1

    float-to-int v3, v3

    .line 101
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    if-nez v9, :cond_2c

    goto/16 :goto_1f

    .line 102
    :cond_2c
    iget-boolean v10, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    if-eqz v10, :cond_2d

    goto/16 :goto_1f

    .line 103
    :cond_2d
    invoke-virtual {v9}, Lww;->d()Z

    move-result v9

    .line 104
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    invoke-virtual {v10}, Lww;->e()Z

    move-result v10

    .line 105
    iget v11, v0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    if-eqz v9, :cond_2e

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-ge v12, v11, :cond_2f

    :cond_2e
    move v1, v7

    :cond_2f
    if-eqz v10, :cond_30

    .line 106
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-ge v12, v11, :cond_31

    :cond_30
    move v3, v7

    :cond_31
    if-nez v1, :cond_32

    if-nez v3, :cond_32

    goto/16 :goto_1f

    :cond_32
    int-to-float v11, v1

    int-to-float v12, v3

    .line 107
    invoke-virtual {v0, v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v14

    if-nez v14, :cond_52

    if-nez v9, :cond_34

    if-eqz v10, :cond_33

    goto :goto_e

    :cond_33
    move v14, v7

    goto :goto_f

    :cond_34
    :goto_e
    move v14, v8

    .line 108
    :goto_f
    invoke-virtual {v0, v11, v12, v14}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 109
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:Lyw;

    if-eqz v11, :cond_4f

    check-cast v11, Ltt;

    .line 110
    iget-object v12, v11, Ltt;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lww;

    move-result-object v12

    if-nez v12, :cond_35

    goto/16 :goto_1d

    .line 112
    :cond_35
    iget-object v15, v11, Ltt;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Low;

    move-result-object v15

    if-nez v15, :cond_36

    goto/16 :goto_1d

    .line 113
    :cond_36
    iget-object v15, v11, Ltt;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v15

    .line 114
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v15, :cond_37

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v15, :cond_4f

    .line 115
    :cond_37
    instance-of v2, v12, Lgx;

    if-nez v2, :cond_38

    goto/16 :goto_1d

    :cond_38
    if-nez v2, :cond_39

    move/from16 v17, v5

    const/4 v15, 0x0

    goto :goto_10

    .line 116
    :cond_39
    new-instance v15, Lst;

    move/from16 v17, v5

    iget-object v5, v11, Ltt;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v15, v11, v5}, Lst;-><init>(Ltt;Landroid/content/Context;)V

    :goto_10
    if-nez v15, :cond_3a

    goto/16 :goto_1d

    .line 117
    :cond_3a
    invoke-virtual {v12}, Lww;->B()I

    move-result v5

    if-nez v5, :cond_3d

    :goto_11
    move/from16 v20, v8

    :cond_3b
    :goto_12
    const/4 v2, -0x1

    :cond_3c
    :goto_13
    const/4 v4, -0x1

    goto/16 :goto_1c

    .line 118
    :cond_3d
    invoke-virtual {v12}, Lww;->e()Z

    move-result v18

    if-eqz v18, :cond_3e

    .line 119
    invoke-virtual {v11, v12}, Ltt;->e(Lww;)Lqt;

    move-result-object v11

    goto :goto_14

    .line 120
    :cond_3e
    invoke-virtual {v12}, Lww;->d()Z

    move-result v18

    if-eqz v18, :cond_3f

    .line 121
    invoke-virtual {v11, v12}, Ltt;->d(Lww;)Lqt;

    move-result-object v11

    goto :goto_14

    :cond_3f
    const/4 v11, 0x0

    :goto_14
    if-nez v11, :cond_40

    goto :goto_11

    .line 122
    :cond_40
    invoke-virtual {v12}, Lww;->v()I

    move-result v4

    const/high16 v19, -0x80000000

    const v20, 0x7fffffff

    move/from16 v21, v2

    move/from16 v7, v19

    move/from16 v2, v20

    const/16 v16, 0x0

    const/16 v19, 0x0

    move/from16 v20, v8

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v4, :cond_44

    move/from16 v22, v4

    .line 123
    invoke-virtual {v12, v8}, Lww;->u(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_41

    move/from16 v23, v8

    goto :goto_16

    :cond_41
    move/from16 v23, v8

    .line 124
    invoke-static {v4, v11}, Ltt;->b(Landroid/view/View;Lqt;)I

    move-result v8

    if-gtz v8, :cond_42

    if-le v8, v7, :cond_42

    move-object/from16 v19, v4

    move v7, v8

    :cond_42
    if-ltz v8, :cond_43

    if-ge v8, v2, :cond_43

    move-object/from16 v16, v4

    move v2, v8

    :cond_43
    :goto_16
    add-int/lit8 v8, v23, 0x1

    move/from16 v4, v22

    goto :goto_15

    .line 125
    :cond_44
    invoke-virtual {v12}, Lww;->d()Z

    move-result v2

    if-eqz v2, :cond_46

    if-lez v1, :cond_45

    :goto_17
    move/from16 v2, v20

    goto :goto_18

    :cond_45
    const/4 v2, 0x0

    goto :goto_18

    :cond_46
    if-lez v3, :cond_45

    goto :goto_17

    :goto_18
    if-eqz v2, :cond_47

    if-eqz v16, :cond_47

    .line 126
    invoke-static/range {v16 .. v16}, Lww;->H(Landroid/view/View;)I

    move-result v2

    goto :goto_13

    :cond_47
    if-nez v2, :cond_48

    if-eqz v19, :cond_48

    .line 127
    invoke-static/range {v19 .. v19}, Lww;->H(Landroid/view/View;)I

    move-result v2

    goto :goto_13

    :cond_48
    if-eqz v2, :cond_49

    move-object/from16 v16, v19

    :cond_49
    if-nez v16, :cond_4a

    goto/16 :goto_12

    .line 128
    :cond_4a
    invoke-static/range {v16 .. v16}, Lww;->H(Landroid/view/View;)I

    move-result v4

    .line 129
    invoke-virtual {v12}, Lww;->B()I

    move-result v7

    if-eqz v21, :cond_4b

    .line 130
    move-object v8, v12

    check-cast v8, Lgx;

    add-int/lit8 v7, v7, -0x1

    .line 131
    invoke-interface {v8, v7}, Lgx;->a(I)Landroid/graphics/PointF;

    move-result-object v7

    if-eqz v7, :cond_4b

    .line 132
    iget v8, v7, Landroid/graphics/PointF;->x:F

    cmpg-float v8, v8, v17

    if-ltz v8, :cond_4c

    iget v7, v7, Landroid/graphics/PointF;->y:F

    cmpg-float v7, v7, v17

    if-gez v7, :cond_4b

    goto :goto_19

    :cond_4b
    const/4 v7, 0x0

    goto :goto_1a

    :cond_4c
    :goto_19
    move/from16 v7, v20

    :goto_1a
    if-ne v7, v2, :cond_4d

    const/4 v2, -0x1

    goto :goto_1b

    :cond_4d
    move/from16 v2, v20

    :goto_1b
    add-int/2addr v2, v4

    if-ltz v2, :cond_3b

    if-lt v2, v5, :cond_3c

    goto/16 :goto_12

    :goto_1c
    if-ne v2, v4, :cond_4e

    goto :goto_1e

    .line 133
    :cond_4e
    iput v2, v15, Ljo;->a:I

    .line 134
    invoke-virtual {v12, v15}, Lww;->y0(Ljo;)V

    goto :goto_21

    :cond_4f
    :goto_1d
    move/from16 v20, v8

    :goto_1e
    if-eqz v14, :cond_52

    if-eqz v10, :cond_50

    or-int/lit8 v9, v9, 0x2

    .line 135
    :cond_50
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lrs;

    move-result-object v2

    move/from16 v4, v20

    invoke-virtual {v2, v9, v4}, Lrs;->f(II)Z

    neg-int v2, v6

    .line 136
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 137
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 138
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->W:Ljx;

    iget-object v2, v1, Ljx;->g:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x2

    .line 139
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    const/4 v3, 0x0

    .line 140
    iput v3, v1, Ljx;->b:I

    iput v3, v1, Ljx;->a:I

    .line 141
    iget-object v3, v1, Ljx;->d:Landroid/view/animation/Interpolator;

    sget-object v4, Landroidx/recyclerview/widget/RecyclerView;->u0:Lmw;

    if-eq v3, v4, :cond_51

    .line 142
    iput-object v4, v1, Ljx;->d:Landroid/view/animation/Interpolator;

    .line 143
    new-instance v3, Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v2, v4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, v1, Ljx;->c:Landroid/widget/OverScroller;

    .line 144
    :cond_51
    iget-object v2, v1, Ljx;->c:Landroid/widget/OverScroller;

    const/high16 v28, -0x80000000

    const v29, 0x7fffffff

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v26, -0x80000000

    const v27, 0x7fffffff

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v29}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 145
    invoke-virtual {v1}, Ljx;->a()V

    goto :goto_21

    :cond_52
    :goto_1f
    const/4 v3, 0x0

    .line 146
    :goto_20
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 147
    :goto_21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    goto :goto_23

    :cond_53
    move v3, v7

    .line 148
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 149
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 150
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    if-eqz v10, :cond_54

    or-int/lit8 v9, v9, 0x2

    .line 151
    :cond_54
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lrs;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v3}, Lrs;->f(II)Z

    .line 152
    :cond_55
    :goto_22
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 153
    :goto_23
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    const/16 v20, 0x1

    return v20

    :goto_24
    return v3
.end method

.method public final p()V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lhx;->a(I)V

    .line 2
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->z(Lhx;)V

    const/4 v3, 0x0

    .line 3
    iput-boolean v3, v1, Lhx;->i:Z

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->a0()V

    .line 5
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Ls4;

    iget-object v5, v4, Ls4;->b:Ljava/lang/Object;

    check-cast v5, Lg00;

    iget-object v6, v4, Ls4;->b:Ljava/lang/Object;

    check-cast v6, Lg00;

    .line 6
    invoke-virtual {v5}, Lg00;->clear()V

    .line 7
    iget-object v4, v4, Ls4;->c:Ljava/lang/Object;

    check-cast v4, Ljp;

    invoke-virtual {v4}, Ljp;->a()V

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->P()V

    .line 9
    iget-boolean v5, v0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->d:Lh2;

    if-eqz v5, :cond_0

    .line 10
    iget-object v5, v7, Lh2;->c:Ljava/io/Serializable;

    check-cast v5, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v7, v5}, Lh2;->i(Ljava/util/ArrayList;)V

    .line 12
    iget-object v5, v7, Lh2;->d:Ljava/io/Serializable;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Lh2;->i(Ljava/util/ArrayList;)V

    .line 13
    iget-boolean v5, v0, Landroidx/recyclerview/widget/RecyclerView;->z:Z

    if-eqz v5, :cond_0

    .line 14
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    invoke-virtual {v5}, Lww;->X()V

    .line 15
    :cond_0
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    invoke-virtual {v5}, Lww;->z0()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    const/4 v8, -0x1

    if-eqz v5, :cond_39

    .line 16
    iget-object v5, v7, Lh2;->b:Ljava/lang/Object;

    .line 17
    check-cast v5, Leu;

    iget-object v12, v7, Lh2;->e:Ljava/lang/Object;

    check-cast v12, Lnw;

    iget-object v13, v7, Lh2;->f:Ljava/lang/Object;

    check-cast v13, Lo0;

    iget-object v14, v7, Lh2;->c:Ljava/io/Serializable;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v2

    move/from16 v16, v3

    :goto_2
    const/16 v9, 0x8

    if-ltz v15, :cond_4

    .line 19
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Lg2;

    .line 20
    iget v3, v3, Lg2;->a:I

    if-ne v3, v9, :cond_2

    if-eqz v16, :cond_3

    goto :goto_3

    :cond_2
    move/from16 v16, v2

    :cond_3
    add-int/lit8 v15, v15, -0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    move v15, v8

    :goto_3
    if-eq v15, v8, :cond_24

    add-int/lit8 v3, v15, 0x1

    .line 21
    iget-object v9, v13, Lo0;->b:Ljava/lang/Object;

    check-cast v9, Lh2;

    iget-object v8, v9, Lh2;->b:Ljava/lang/Object;

    check-cast v8, Leu;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Lg2;

    .line 22
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Lg2;

    move-object/from16 v17, v13

    .line 23
    iget v13, v11, Lg2;->a:I

    if-eq v13, v2, :cond_1e

    const/4 v2, 0x2

    if-eq v13, v2, :cond_c

    const/4 v2, 0x4

    if-eq v13, v2, :cond_5

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    goto/16 :goto_12

    .line 24
    :cond_5
    iget v2, v10, Lg2;->c:I

    iget v13, v11, Lg2;->b:I

    if-ge v2, v13, :cond_7

    add-int/lit8 v13, v13, -0x1

    .line 25
    iput v13, v11, Lg2;->b:I

    :cond_6
    move-object/from16 v21, v4

    goto :goto_4

    :cond_7
    move/from16 v21, v13

    .line 26
    iget v13, v11, Lg2;->c:I

    move/from16 v22, v13

    add-int v13, v21, v22

    if-ge v2, v13, :cond_6

    add-int/lit8 v13, v22, -0x1

    .line 27
    iput v13, v11, Lg2;->c:I

    .line 28
    iget v2, v10, Lg2;->b:I

    move-object/from16 v21, v4

    const/4 v4, 0x1

    const/4 v13, 0x4

    invoke-virtual {v9, v13, v2, v4}, Lh2;->g(III)Lg2;

    move-result-object v2

    goto :goto_5

    :goto_4
    const/4 v2, 0x0

    .line 29
    :goto_5
    iget v4, v10, Lg2;->b:I

    iget v13, v11, Lg2;->b:I

    if-gt v4, v13, :cond_9

    add-int/lit8 v13, v13, 0x1

    .line 30
    iput v13, v11, Lg2;->b:I

    :cond_8
    move-object/from16 v22, v6

    goto :goto_6

    :cond_9
    move/from16 v22, v13

    .line 31
    iget v13, v11, Lg2;->c:I

    add-int v13, v22, v13

    if-ge v4, v13, :cond_8

    sub-int/2addr v13, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v22, v6

    const/4 v6, 0x4

    .line 32
    invoke-virtual {v9, v6, v4, v13}, Lh2;->g(III)Lg2;

    move-result-object v4

    .line 33
    iget v6, v11, Lg2;->c:I

    sub-int/2addr v6, v13

    iput v6, v11, Lg2;->c:I

    goto :goto_7

    :goto_6
    const/4 v4, 0x0

    .line 34
    :goto_7
    invoke-virtual {v14, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget v3, v11, Lg2;->c:I

    if-lez v3, :cond_a

    .line 36
    invoke-virtual {v14, v15, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 37
    :cond_a
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    invoke-virtual {v8, v11}, Leu;->c(Ljava/lang/Object;)Z

    :goto_8
    if-eqz v2, :cond_b

    .line 39
    invoke-virtual {v14, v15, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_b
    if-eqz v4, :cond_23

    .line 40
    invoke-virtual {v14, v15, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_12

    :cond_c
    move-object/from16 v21, v4

    move-object/from16 v22, v6

    .line 41
    iget v2, v10, Lg2;->b:I

    iget v4, v10, Lg2;->c:I

    .line 42
    iget v6, v11, Lg2;->b:I

    if-ge v2, v4, :cond_e

    if-ne v6, v2, :cond_d

    .line 43
    iget v13, v11, Lg2;->c:I

    sub-int v2, v4, v2

    if-ne v13, v2, :cond_d

    const/4 v2, 0x1

    :goto_9
    const/4 v13, 0x0

    goto :goto_b

    :cond_d
    const/4 v2, 0x0

    goto :goto_9

    :cond_e
    add-int/lit8 v13, v4, 0x1

    if-ne v6, v13, :cond_f

    .line 44
    iget v13, v11, Lg2;->c:I

    sub-int/2addr v2, v4

    if-ne v13, v2, :cond_f

    const/4 v2, 0x1

    :goto_a
    const/4 v13, 0x1

    goto :goto_b

    :cond_f
    const/4 v2, 0x0

    goto :goto_a

    :goto_b
    if-ge v4, v6, :cond_10

    add-int/lit8 v6, v6, -0x1

    .line 45
    iput v6, v11, Lg2;->b:I

    move/from16 v23, v2

    goto :goto_c

    :cond_10
    move/from16 v23, v2

    .line 46
    iget v2, v11, Lg2;->c:I

    add-int/2addr v6, v2

    if-ge v4, v6, :cond_11

    add-int/lit8 v2, v2, -0x1

    .line 47
    iput v2, v11, Lg2;->c:I

    const/4 v2, 0x2

    .line 48
    iput v2, v10, Lg2;->a:I

    const/4 v4, 0x1

    .line 49
    iput v4, v10, Lg2;->c:I

    .line 50
    iget v2, v11, Lg2;->c:I

    if-nez v2, :cond_23

    .line 51
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 52
    invoke-virtual {v8, v11}, Leu;->c(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 53
    :cond_11
    :goto_c
    iget v2, v10, Lg2;->b:I

    iget v4, v11, Lg2;->b:I

    if-gt v2, v4, :cond_12

    add-int/lit8 v4, v4, 0x1

    .line 54
    iput v4, v11, Lg2;->b:I

    goto :goto_d

    .line 55
    :cond_12
    iget v6, v11, Lg2;->c:I

    add-int/2addr v4, v6

    if-ge v2, v4, :cond_13

    sub-int/2addr v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x2

    .line 56
    invoke-virtual {v9, v6, v2, v4}, Lh2;->g(III)Lg2;

    move-result-object v2

    .line 57
    iget v4, v10, Lg2;->b:I

    iget v6, v11, Lg2;->b:I

    sub-int/2addr v4, v6

    iput v4, v11, Lg2;->c:I

    goto :goto_e

    :cond_13
    :goto_d
    const/4 v2, 0x0

    :goto_e
    if-eqz v23, :cond_14

    .line 58
    invoke-virtual {v14, v15, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    invoke-virtual {v8, v10}, Leu;->c(Ljava/lang/Object;)Z

    goto/16 :goto_12

    :cond_14
    if-eqz v13, :cond_18

    if-eqz v2, :cond_16

    .line 61
    iget v4, v10, Lg2;->b:I

    iget v6, v2, Lg2;->b:I

    if-le v4, v6, :cond_15

    .line 62
    iget v6, v2, Lg2;->c:I

    sub-int/2addr v4, v6

    iput v4, v10, Lg2;->b:I

    .line 63
    :cond_15
    iget v4, v10, Lg2;->c:I

    iget v6, v2, Lg2;->b:I

    if-le v4, v6, :cond_16

    .line 64
    iget v6, v2, Lg2;->c:I

    sub-int/2addr v4, v6

    iput v4, v10, Lg2;->c:I

    .line 65
    :cond_16
    iget v4, v10, Lg2;->b:I

    iget v6, v11, Lg2;->b:I

    if-le v4, v6, :cond_17

    .line 66
    iget v6, v11, Lg2;->c:I

    sub-int/2addr v4, v6

    iput v4, v10, Lg2;->b:I

    .line 67
    :cond_17
    iget v4, v10, Lg2;->c:I

    iget v6, v11, Lg2;->b:I

    if-le v4, v6, :cond_1c

    .line 68
    iget v6, v11, Lg2;->c:I

    sub-int/2addr v4, v6

    iput v4, v10, Lg2;->c:I

    goto :goto_f

    :cond_18
    if-eqz v2, :cond_1a

    .line 69
    iget v4, v10, Lg2;->b:I

    iget v6, v2, Lg2;->b:I

    if-lt v4, v6, :cond_19

    .line 70
    iget v6, v2, Lg2;->c:I

    sub-int/2addr v4, v6

    iput v4, v10, Lg2;->b:I

    .line 71
    :cond_19
    iget v4, v10, Lg2;->c:I

    iget v6, v2, Lg2;->b:I

    if-lt v4, v6, :cond_1a

    .line 72
    iget v6, v2, Lg2;->c:I

    sub-int/2addr v4, v6

    iput v4, v10, Lg2;->c:I

    .line 73
    :cond_1a
    iget v4, v10, Lg2;->b:I

    iget v6, v11, Lg2;->b:I

    if-lt v4, v6, :cond_1b

    .line 74
    iget v6, v11, Lg2;->c:I

    sub-int/2addr v4, v6

    iput v4, v10, Lg2;->b:I

    .line 75
    :cond_1b
    iget v4, v10, Lg2;->c:I

    iget v6, v11, Lg2;->b:I

    if-lt v4, v6, :cond_1c

    .line 76
    iget v6, v11, Lg2;->c:I

    sub-int/2addr v4, v6

    iput v4, v10, Lg2;->c:I

    .line 77
    :cond_1c
    :goto_f
    invoke-virtual {v14, v15, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget v4, v10, Lg2;->b:I

    iget v6, v10, Lg2;->c:I

    if-eq v4, v6, :cond_1d

    .line 79
    invoke-virtual {v14, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 80
    :cond_1d
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_10
    if-eqz v2, :cond_23

    .line 81
    invoke-virtual {v14, v15, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_12

    :cond_1e
    move-object/from16 v21, v4

    move-object/from16 v22, v6

    .line 82
    iget v2, v10, Lg2;->c:I

    iget v4, v11, Lg2;->b:I

    if-ge v2, v4, :cond_1f

    const/4 v6, -0x1

    goto :goto_11

    :cond_1f
    const/4 v6, 0x0

    .line 83
    :goto_11
    iget v8, v10, Lg2;->b:I

    if-ge v8, v4, :cond_20

    add-int/lit8 v6, v6, 0x1

    :cond_20
    if-gt v4, v8, :cond_21

    .line 84
    iget v4, v11, Lg2;->c:I

    add-int/2addr v8, v4

    iput v8, v10, Lg2;->b:I

    .line 85
    :cond_21
    iget v4, v11, Lg2;->b:I

    if-gt v4, v2, :cond_22

    .line 86
    iget v8, v11, Lg2;->c:I

    add-int/2addr v2, v8

    iput v2, v10, Lg2;->c:I

    :cond_22
    add-int/2addr v4, v6

    .line 87
    iput v4, v11, Lg2;->b:I

    .line 88
    invoke-virtual {v14, v15, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {v14, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_23
    :goto_12
    move-object/from16 v13, v17

    move-object/from16 v4, v21

    move-object/from16 v6, v22

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v8, -0x1

    goto/16 :goto_1

    :cond_24
    move-object/from16 v21, v4

    move-object/from16 v22, v6

    .line 90
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_38

    .line 91
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg2;

    .line 92
    iget v6, v4, Lg2;->a:I

    const/4 v8, 0x1

    if-eq v6, v8, :cond_37

    const/4 v8, 0x2

    if-eq v6, v8, :cond_2e

    const/4 v13, 0x4

    if-eq v6, v13, :cond_26

    if-eq v6, v9, :cond_25

    goto/16 :goto_20

    .line 93
    :cond_25
    invoke-virtual {v7, v4}, Lh2;->h(Lg2;)V

    goto/16 :goto_20

    .line 94
    :cond_26
    iget v6, v4, Lg2;->b:I

    .line 95
    iget v8, v4, Lg2;->c:I

    add-int/2addr v8, v6

    move v10, v6

    const/4 v11, -0x1

    const/4 v13, 0x0

    :goto_14
    if-ge v6, v8, :cond_2b

    .line 96
    invoke-virtual {v12, v6}, Lnw;->b(I)Lkx;

    move-result-object v15

    if-nez v15, :cond_27

    .line 97
    invoke-virtual {v7, v6}, Lh2;->a(I)Z

    move-result v15

    if-eqz v15, :cond_28

    :cond_27
    const/4 v15, 0x4

    goto :goto_17

    :cond_28
    const/4 v15, 0x1

    if-ne v11, v15, :cond_29

    const/4 v15, 0x4

    .line 98
    invoke-virtual {v7, v15, v10, v13}, Lh2;->g(III)Lg2;

    move-result-object v10

    .line 99
    invoke-virtual {v7, v10}, Lh2;->h(Lg2;)V

    move v10, v6

    const/4 v13, 0x0

    goto :goto_15

    :cond_29
    const/4 v15, 0x4

    :goto_15
    const/4 v11, 0x0

    :goto_16
    const/16 v20, 0x1

    goto :goto_18

    :goto_17
    if-nez v11, :cond_2a

    .line 100
    invoke-virtual {v7, v15, v10, v13}, Lh2;->g(III)Lg2;

    move-result-object v10

    .line 101
    invoke-virtual {v7, v10}, Lh2;->c(Lg2;)V

    move v10, v6

    const/4 v13, 0x0

    :cond_2a
    const/4 v11, 0x1

    goto :goto_16

    :goto_18
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 102
    :cond_2b
    iget v6, v4, Lg2;->c:I

    if-eq v13, v6, :cond_2c

    .line 103
    invoke-virtual {v5, v4}, Leu;->c(Ljava/lang/Object;)Z

    const/4 v15, 0x4

    .line 104
    invoke-virtual {v7, v15, v10, v13}, Lh2;->g(III)Lg2;

    move-result-object v4

    :cond_2c
    if-nez v11, :cond_2d

    .line 105
    invoke-virtual {v7, v4}, Lh2;->c(Lg2;)V

    goto/16 :goto_20

    .line 106
    :cond_2d
    invoke-virtual {v7, v4}, Lh2;->h(Lg2;)V

    goto :goto_20

    .line 107
    :cond_2e
    iget v6, v4, Lg2;->b:I

    .line 108
    iget v8, v4, Lg2;->c:I

    add-int/2addr v8, v6

    move v13, v6

    const/4 v10, -0x1

    const/4 v11, 0x0

    :goto_19
    if-ge v13, v8, :cond_34

    .line 109
    invoke-virtual {v12, v13}, Lnw;->b(I)Lkx;

    move-result-object v15

    if-nez v15, :cond_2f

    .line 110
    invoke-virtual {v7, v13}, Lh2;->a(I)Z

    move-result v15

    if-eqz v15, :cond_30

    :cond_2f
    const/4 v15, 0x2

    goto :goto_1b

    :cond_30
    const/4 v15, 0x1

    if-ne v10, v15, :cond_31

    const/4 v15, 0x2

    .line 111
    invoke-virtual {v7, v15, v6, v11}, Lh2;->g(III)Lg2;

    move-result-object v10

    .line 112
    invoke-virtual {v7, v10}, Lh2;->h(Lg2;)V

    const/4 v10, 0x1

    goto :goto_1a

    :cond_31
    const/4 v15, 0x2

    const/4 v10, 0x0

    :goto_1a
    const/4 v15, 0x0

    goto :goto_1d

    :goto_1b
    if-nez v10, :cond_32

    .line 113
    invoke-virtual {v7, v15, v6, v11}, Lh2;->g(III)Lg2;

    move-result-object v10

    .line 114
    invoke-virtual {v7, v10}, Lh2;->c(Lg2;)V

    const/4 v10, 0x1

    goto :goto_1c

    :cond_32
    const/4 v10, 0x0

    :goto_1c
    const/4 v15, 0x1

    :goto_1d
    if-eqz v10, :cond_33

    sub-int/2addr v13, v11

    sub-int/2addr v8, v11

    const/4 v11, 0x1

    :goto_1e
    const/16 v20, 0x1

    goto :goto_1f

    :cond_33
    add-int/lit8 v11, v11, 0x1

    goto :goto_1e

    :goto_1f
    add-int/lit8 v13, v13, 0x1

    move v10, v15

    goto :goto_19

    .line 115
    :cond_34
    iget v8, v4, Lg2;->c:I

    if-eq v11, v8, :cond_35

    .line 116
    invoke-virtual {v5, v4}, Leu;->c(Ljava/lang/Object;)Z

    const/4 v15, 0x2

    .line 117
    invoke-virtual {v7, v15, v6, v11}, Lh2;->g(III)Lg2;

    move-result-object v4

    :cond_35
    if-nez v10, :cond_36

    .line 118
    invoke-virtual {v7, v4}, Lh2;->c(Lg2;)V

    goto :goto_20

    .line 119
    :cond_36
    invoke-virtual {v7, v4}, Lh2;->h(Lg2;)V

    goto :goto_20

    .line 120
    :cond_37
    invoke-virtual {v7, v4}, Lh2;->h(Lg2;)V

    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    .line 121
    :cond_38
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    goto :goto_21

    :cond_39
    move-object/from16 v21, v4

    move-object/from16 v22, v6

    .line 122
    invoke-virtual {v7}, Lh2;->b()V

    .line 123
    :goto_21
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Z

    if-nez v2, :cond_3b

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    if-eqz v2, :cond_3a

    goto :goto_22

    :cond_3a
    const/4 v2, 0x0

    goto :goto_23

    :cond_3b
    :goto_22
    const/4 v2, 0x1

    .line 124
    :goto_23
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    if-eqz v3, :cond_3e

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    if-eqz v3, :cond_3e

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    if-nez v3, :cond_3c

    if-nez v2, :cond_3c

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    iget-boolean v4, v4, Lww;->f:Z

    if-eqz v4, :cond_3e

    :cond_3c
    if-eqz v3, :cond_3d

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 125
    iget-boolean v3, v3, Low;->b:Z

    if-eqz v3, :cond_3e

    :cond_3d
    const/4 v3, 0x1

    goto :goto_24

    :cond_3e
    const/4 v3, 0x0

    .line 126
    :goto_24
    iput-boolean v3, v1, Lhx;->j:Z

    if-eqz v3, :cond_3f

    if-eqz v2, :cond_3f

    .line 127
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    if-nez v2, :cond_3f

    .line 128
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    if-eqz v2, :cond_3f

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    invoke-virtual {v2}, Lww;->z0()Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    goto :goto_25

    :cond_3f
    const/4 v2, 0x0

    .line 129
    :goto_25
    iput-boolean v2, v1, Lhx;->k:Z

    .line 130
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->V:Z

    if-eqz v2, :cond_40

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    if-eqz v2, :cond_40

    .line 131
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    goto :goto_26

    :cond_40
    const/4 v2, 0x0

    :goto_26
    if-nez v2, :cond_41

    :goto_27
    const/4 v2, 0x0

    goto :goto_28

    .line 132
    :cond_41
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->A(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_42

    goto :goto_27

    .line 133
    :cond_42
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->H(Landroid/view/View;)Lkx;

    move-result-object v2

    :goto_28
    const-wide/16 v3, -0x1

    if-nez v2, :cond_43

    .line 134
    iput-wide v3, v1, Lhx;->m:J

    const/4 v2, -0x1

    .line 135
    iput v2, v1, Lhx;->l:I

    .line 136
    iput v2, v1, Lhx;->n:I

    goto :goto_2c

    .line 137
    :cond_43
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 138
    iget-boolean v5, v5, Low;->b:Z

    if-eqz v5, :cond_44

    .line 139
    iget-wide v3, v2, Lkx;->e:J

    .line 140
    :cond_44
    iput-wide v3, v1, Lhx;->m:J

    .line 141
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    if-eqz v3, :cond_45

    :goto_29
    const/4 v3, -0x1

    goto :goto_2a

    .line 142
    :cond_45
    invoke-virtual {v2}, Lkx;->h()Z

    move-result v3

    if-eqz v3, :cond_46

    iget v3, v2, Lkx;->d:I

    goto :goto_2a

    .line 143
    :cond_46
    iget-object v3, v2, Lkx;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_47

    goto :goto_29

    .line 144
    :cond_47
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->F(Lkx;)I

    move-result v3

    .line 145
    :goto_2a
    iput v3, v1, Lhx;->l:I

    .line 146
    iget-object v2, v2, Lkx;->a:Landroid/view/View;

    .line 147
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 148
    :cond_48
    :goto_2b
    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_49

    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_49

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 149
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_48

    .line 151
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    goto :goto_2b

    .line 152
    :cond_49
    iput v3, v1, Lhx;->n:I

    .line 153
    :goto_2c
    iget-boolean v2, v1, Lhx;->j:Z

    if-eqz v2, :cond_4a

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    if-eqz v2, :cond_4a

    const/4 v2, 0x1

    goto :goto_2d

    :cond_4a
    const/4 v2, 0x0

    :goto_2d
    iput-boolean v2, v1, Lhx;->h:Z

    const/4 v2, 0x0

    .line 154
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Z

    .line 155
    iget-boolean v2, v1, Lhx;->k:Z

    iput-boolean v2, v1, Lhx;->g:Z

    .line 156
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    invoke-virtual {v2}, Low;->a()I

    move-result v2

    iput v2, v1, Lhx;->e:I

    .line 157
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->k0:[I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->C([I)V

    .line 158
    iget-boolean v2, v1, Lhx;->j:Z

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Ly2;

    if-eqz v2, :cond_4f

    .line 159
    invoke-virtual {v3}, Ly2;->e()I

    move-result v2

    const/4 v4, 0x0

    :goto_2e
    if-ge v4, v2, :cond_4f

    .line 160
    invoke-virtual {v3, v4}, Ly2;->d(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    move-result-object v5

    .line 161
    invoke-virtual {v5}, Lkx;->o()Z

    move-result v6

    if-nez v6, :cond_4b

    invoke-virtual {v5}, Lkx;->f()Z

    move-result v6

    if-eqz v6, :cond_4c

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 162
    iget-boolean v6, v6, Low;->b:Z

    if-nez v6, :cond_4c

    :cond_4b
    move-object/from16 v6, v21

    move-object/from16 v7, v22

    goto :goto_2f

    .line 163
    :cond_4c
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 164
    invoke-static {v5}, Lsw;->b(Lkx;)V

    .line 165
    invoke-virtual {v5}, Lkx;->c()Ljava/util/List;

    .line 166
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    new-instance v6, Lus;

    .line 168
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-virtual {v6, v5}, Lus;->a(Lkx;)V

    move-object/from16 v7, v22

    const/4 v8, 0x0

    .line 170
    invoke-virtual {v7, v5, v8}, Lg00;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 171
    check-cast v9, Ld60;

    if-nez v9, :cond_4d

    .line 172
    invoke-static {}, Ld60;->a()Ld60;

    move-result-object v9

    .line 173
    invoke-virtual {v7, v5, v9}, Lg00;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_4d
    iput-object v6, v9, Ld60;->b:Lus;

    .line 175
    iget v6, v9, Ld60;->a:I

    const/16 v18, 0x4

    or-int/lit8 v6, v6, 0x4

    iput v6, v9, Ld60;->a:I

    .line 176
    iget-boolean v6, v1, Lhx;->h:Z

    if-eqz v6, :cond_4e

    invoke-virtual {v5}, Lkx;->k()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-virtual {v5}, Lkx;->h()Z

    move-result v6

    if-nez v6, :cond_4e

    .line 177
    invoke-virtual {v5}, Lkx;->o()Z

    move-result v6

    if-nez v6, :cond_4e

    invoke-virtual {v5}, Lkx;->f()Z

    move-result v6

    if-nez v6, :cond_4e

    .line 178
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->G(Lkx;)J

    move-result-wide v8

    move-object/from16 v6, v21

    .line 179
    invoke-virtual {v6, v8, v9, v5}, Ljp;->d(JLjava/lang/Object;)V

    goto :goto_2f

    :cond_4e
    move-object/from16 v6, v21

    :goto_2f
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    goto :goto_2e

    :cond_4f
    move-object/from16 v7, v22

    .line 180
    iget-boolean v2, v1, Lhx;->k:Z

    if-eqz v2, :cond_5a

    .line 181
    invoke-virtual {v3}, Ly2;->l()I

    move-result v2

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v2, :cond_52

    .line 182
    invoke-virtual {v3, v4}, Ly2;->k(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    move-result-object v5

    .line 183
    invoke-virtual {v5}, Lkx;->o()Z

    move-result v6

    if-nez v6, :cond_50

    .line 184
    iget v6, v5, Lkx;->d:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_51

    .line 185
    iget v6, v5, Lkx;->c:I

    iput v6, v5, Lkx;->d:I

    goto :goto_31

    :cond_50
    const/4 v8, -0x1

    :cond_51
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 186
    :cond_52
    iget-boolean v2, v1, Lhx;->f:Z

    const/4 v4, 0x0

    .line 187
    iput-boolean v4, v1, Lhx;->f:Z

    .line 188
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    invoke-virtual {v4, v5, v1}, Lww;->b0(Lcx;Lhx;)V

    .line 189
    iput-boolean v2, v1, Lhx;->f:Z

    const/4 v2, 0x0

    .line 190
    :goto_32
    invoke-virtual {v3}, Ly2;->e()I

    move-result v4

    if-ge v2, v4, :cond_59

    .line 191
    invoke-virtual {v3, v2}, Ly2;->d(I)Landroid/view/View;

    move-result-object v4

    .line 192
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    move-result-object v4

    .line 193
    invoke-virtual {v4}, Lkx;->o()Z

    move-result v5

    if-eqz v5, :cond_53

    const/4 v8, 0x0

    const/16 v18, 0x4

    goto :goto_35

    :cond_53
    const/4 v8, 0x0

    .line 194
    invoke-virtual {v7, v4, v8}, Lg00;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 195
    check-cast v5, Ld60;

    if-eqz v5, :cond_54

    .line 196
    iget v5, v5, Ld60;->a:I

    const/16 v18, 0x4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_55

    :goto_33
    const/4 v8, 0x0

    goto :goto_35

    :cond_54
    const/16 v18, 0x4

    .line 197
    :cond_55
    invoke-static {v4}, Lsw;->b(Lkx;)V

    .line 198
    iget v5, v4, Lkx;->j:I

    and-int/lit16 v5, v5, 0x2000

    if-eqz v5, :cond_56

    const/4 v5, 0x1

    goto :goto_34

    :cond_56
    const/4 v5, 0x0

    .line 199
    :goto_34
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 200
    invoke-virtual {v4}, Lkx;->c()Ljava/util/List;

    .line 201
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    new-instance v6, Lus;

    .line 203
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-virtual {v6, v4}, Lus;->a(Lkx;)V

    if-eqz v5, :cond_57

    .line 205
    invoke-virtual {v0, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->T(Lkx;Lus;)V

    goto :goto_33

    :cond_57
    const/4 v8, 0x0

    .line 206
    invoke-virtual {v7, v4, v8}, Lg00;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 207
    check-cast v5, Ld60;

    if-nez v5, :cond_58

    .line 208
    invoke-static {}, Ld60;->a()Ld60;

    move-result-object v5

    .line 209
    invoke-virtual {v7, v4, v5}, Lg00;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_58
    iget v4, v5, Ld60;->a:I

    const/16 v19, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v5, Ld60;->a:I

    .line 211
    iput-object v6, v5, Ld60;->b:Lus;

    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 212
    :cond_59
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->k()V

    :goto_36
    const/4 v15, 0x1

    goto :goto_37

    .line 213
    :cond_5a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->k()V

    goto :goto_36

    .line 214
    :goto_37
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView;->Q(Z)V

    const/4 v2, 0x0

    .line 215
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->b0(Z)V

    const/4 v15, 0x2

    .line 216
    iput v15, v1, Lhx;->d:I

    return-void
.end method

.method public final q()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->a0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->P()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lhx;->a(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Lh2;

    .line 14
    .line 15
    invoke-virtual {v0}, Lh2;->b()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 19
    .line 20
    invoke-virtual {v0}, Low;->a()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, v1, Lhx;->e:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, v1, Lhx;->c:I

    .line 28
    .line 29
    iput-boolean v0, v1, Lhx;->g:Z

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 34
    .line 35
    invoke-virtual {v2, v3, v1}, Lww;->b0(Lcx;Lhx;)V

    .line 36
    .line 37
    .line 38
    iput-boolean v0, v1, Lhx;->f:Z

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Lex;

    .line 42
    .line 43
    iget-boolean v2, v1, Lhx;->j:Z

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    move v2, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v2, v0

    .line 55
    :goto_0
    iput-boolean v2, v1, Lhx;->j:Z

    .line 56
    .line 57
    const/4 v2, 0x4

    .line 58
    iput v2, v1, Lhx;->d:I

    .line 59
    .line 60
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->Q(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->b0(Z)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final r(II[I[II)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lrs;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual/range {p0 .. p5}, Lrs;->b(II[I[II)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Lkx;->j()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget v1, v0, Lkx;->j:I

    .line 14
    .line 15
    and-int/lit16 v1, v1, -0x101

    .line 16
    .line 17
    iput v1, v0, Lkx;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lkx;->o()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    .line 32
    .line 33
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 62
    .line 63
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    iget-object v0, v0, Lww;->e:Ljo;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, v0, Ljo;->e:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-eqz p2, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->U(Landroid/view/View;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move v4, p3

    .line 8
    invoke-virtual/range {v0 .. v5}, Lww;->k0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lbi;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 15
    .line 16
    return-void
.end method

.method public final s(IIII[II[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lrs;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual/range {p0 .. p7}, Lrs;->c(IIII[II[I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final scrollBy(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Lww;->d()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 16
    .line 17
    invoke-virtual {v1}, Lww;->e()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    return-void

    .line 27
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_4
    move p1, v2

    .line 32
    :goto_2
    if-eqz v1, :cond_5

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_5
    move p2, v2

    .line 36
    :goto_3
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->W(IILandroid/view/MotionEvent;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final scrollTo(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v0, p1

    .line 20
    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:I

    .line 21
    .line 22
    or-int/2addr p1, v0

    .line 23
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:I

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setAccessibilityDelegateCompat(Lmx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->j0:Lmx;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lw50;->l(Landroid/view/View;La0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAdapter(Low;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->a:Lqg;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, Low;->a:Lpw;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Lsw;->e()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Lww;->g0(Lcx;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Lww;->h0(Lcx;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v1, v3, Lcx;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lcx;->d()V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Lh2;

    .line 51
    .line 52
    iget-object v4, v1, Lh2;->c:Ljava/io/Serializable;

    .line 53
    .line 54
    check-cast v4, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1, v4}, Lh2;->i(Ljava/util/ArrayList;)V

    .line 57
    .line 58
    .line 59
    iget-object v4, v1, Lh2;->d:Ljava/io/Serializable;

    .line 60
    .line 61
    check-cast v4, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v1, v4}, Lh2;->i(Ljava/util/ArrayList;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 67
    .line 68
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    iget-object p1, p1, Low;->a:Lpw;

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 78
    .line 79
    iget-object v2, v3, Lcx;->a:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Lcx;->d()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Lcx;->c()Lbx;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const/4 v4, 0x1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    iget v1, v2, Lbx;->b:I

    .line 95
    .line 96
    sub-int/2addr v1, v4

    .line 97
    iput v1, v2, Lbx;->b:I

    .line 98
    .line 99
    :cond_4
    iget v1, v2, Lbx;->b:I

    .line 100
    .line 101
    if-nez v1, :cond_5

    .line 102
    .line 103
    iget-object v1, v2, Lbx;->a:Landroid/util/SparseArray;

    .line 104
    .line 105
    move v5, v0

    .line 106
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-ge v5, v6, :cond_5

    .line 111
    .line 112
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Lax;

    .line 117
    .line 118
    iget-object v6, v6, Lax;->a:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 121
    .line 122
    .line 123
    add-int/lit8 v5, v5, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    if-eqz p1, :cond_6

    .line 127
    .line 128
    iget p1, v2, Lbx;->b:I

    .line 129
    .line 130
    add-int/2addr p1, v4

    .line 131
    iput p1, v2, Lbx;->b:I

    .line 132
    .line 133
    :cond_6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 134
    .line 135
    iput-boolean v4, p1, Lhx;->f:Z

    .line 136
    .line 137
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->z:Z

    .line 138
    .line 139
    or-int/2addr p1, v0

    .line 140
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->z:Z

    .line 141
    .line 142
    iput-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 143
    .line 144
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Ly2;

    .line 145
    .line 146
    invoke-virtual {p1}, Ly2;->l()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    move v2, v0

    .line 151
    :goto_1
    const/4 v4, 0x6

    .line 152
    if-ge v2, v1, :cond_8

    .line 153
    .line 154
    invoke-virtual {p1, v2}, Ly2;->k(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    if-eqz v5, :cond_7

    .line 163
    .line 164
    invoke-virtual {v5}, Lkx;->o()Z

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    if-nez v6, :cond_7

    .line 169
    .line 170
    invoke-virtual {v5, v4}, Lkx;->a(I)V

    .line 171
    .line 172
    .line 173
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->N()V

    .line 177
    .line 178
    .line 179
    iget-object p1, v3, Lcx;->c:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    :goto_2
    if-ge v0, v1, :cond_a

    .line 186
    .line 187
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    check-cast v2, Lkx;

    .line 192
    .line 193
    if-eqz v2, :cond_9

    .line 194
    .line 195
    invoke-virtual {v2, v4}, Lkx;->a(I)V

    .line 196
    .line 197
    .line 198
    const/16 v5, 0x400

    .line 199
    .line 200
    invoke-virtual {v2, v5}, Lkx;->a(I)V

    .line 201
    .line 202
    .line 203
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_a
    iget-object p1, v3, Lcx;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 207
    .line 208
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 209
    .line 210
    if-eqz p1, :cond_b

    .line 211
    .line 212
    iget-boolean p1, p1, Low;->b:Z

    .line 213
    .line 214
    if-nez p1, :cond_c

    .line 215
    .line 216
    :cond_b
    invoke-virtual {v3}, Lcx;->d()V

    .line 217
    .line 218
    .line 219
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public setChildDrawingOrderCallback(Lqw;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 13
    .line 14
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 15
    .line 16
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 17
    .line 18
    .line 19
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(Lrw;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Lrw;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public setItemAnimator(Lsw;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lsw;->e()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lsw;->a:Lnw;

    .line 12
    .line 13
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Lnw;

    .line 18
    .line 19
    iput-object p0, p1, Lsw;->a:Lnw;

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 2
    .line 3
    iput p1, p0, Lcx;->e:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lcx;->k()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setLayoutManager(Lww;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Ljx;

    .line 11
    .line 12
    iget-object v2, v1, Ljx;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    iget-object v1, v1, Ljx;->c:Landroid/widget/OverScroller;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v1, v1, Lww;->e:Ljo;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Ljo;->i()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 34
    .line 35
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Lsw;->e()V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lww;->g0(Lcx;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lww;->h0(Lcx;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v2, Lcx;->a:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lcx;->d()V

    .line 62
    .line 63
    .line 64
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 69
    .line 70
    iput-boolean v0, v1, Lww;->g:Z

    .line 71
    .line 72
    invoke-virtual {v1, p0}, Lww;->R(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-virtual {v1, v3}, Lww;->t0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 79
    .line 80
    .line 81
    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget-object v1, v2, Lcx;->a:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcx;->d()V

    .line 90
    .line 91
    .line 92
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Ly2;

    .line 93
    .line 94
    iget-object v3, v1, Ly2;->c:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v3, Lf9;

    .line 97
    .line 98
    invoke-virtual {v3}, Lf9;->g()V

    .line 99
    .line 100
    .line 101
    iget-object v3, v1, Ly2;->d:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v3, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    const/4 v5, 0x1

    .line 110
    sub-int/2addr v4, v5

    .line 111
    :goto_1
    iget-object v6, v1, Ly2;->b:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v6, Lnw;

    .line 114
    .line 115
    iget-object v6, v6, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    .line 117
    if-ltz v4, :cond_7

    .line 118
    .line 119
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    check-cast v7, Landroid/view/View;

    .line 124
    .line 125
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    if-eqz v7, :cond_6

    .line 130
    .line 131
    iget v8, v7, Lkx;->p:I

    .line 132
    .line 133
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-eqz v9, :cond_5

    .line 138
    .line 139
    iput v8, v7, Lkx;->q:I

    .line 140
    .line 141
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->p0:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_5
    iget-object v6, v7, Lkx;->a:Landroid/view/View;

    .line 148
    .line 149
    sget-object v9, Lw50;->a:Ljava/util/WeakHashMap;

    .line 150
    .line 151
    invoke-virtual {v6, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 152
    .line 153
    .line 154
    :goto_2
    iput v0, v7, Lkx;->p:I

    .line 155
    .line 156
    :cond_6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    add-int/lit8 v4, v4, -0x1

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_7
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    :goto_3
    if-ge v0, v1, :cond_8

    .line 167
    .line 168
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 177
    .line 178
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 179
    .line 180
    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_8
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 185
    .line 186
    .line 187
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 188
    .line 189
    if-eqz p1, :cond_a

    .line 190
    .line 191
    iget-object v0, p1, Lww;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 192
    .line 193
    if-nez v0, :cond_9

    .line 194
    .line 195
    invoke-virtual {p1, p0}, Lww;->t0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 196
    .line 197
    .line 198
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 199
    .line 200
    if-eqz p1, :cond_a

    .line 201
    .line 202
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 203
    .line 204
    iput-boolean v5, p1, Lww;->g:Z

    .line 205
    .line 206
    invoke-virtual {p1, p0}, Lww;->Q(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 211
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v1, "LayoutManager "

    .line 215
    .line 216
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget-object p1, p1, Lww;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 223
    .line 224
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    const-string v1, " is already attached to a RecyclerView:"

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw p0

    .line 244
    :cond_a
    :goto_4
    invoke-virtual {v2}, Lcx;->k()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 248
    .line 249
    .line 250
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, "Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView"

    .line 9
    .line 10
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lrs;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean v0, p0, Lrs;->d:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lrs;->c:Landroid/view/ViewGroup;

    .line 10
    .line 11
    sget-object v1, Lw50;->a:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    invoke-static {v0}, Ll50;->z(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-boolean p1, p0, Lrs;->d:Z

    .line 17
    .line 18
    return-void
.end method

.method public setOnFlingListener(Lyw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:Lyw;

    .line 2
    .line 3
    return-void
.end method

.method public setOnScrollListener(Lzw;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Lzw;

    .line 2
    .line 3
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->V:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRecycledViewPool(Lbx;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 2
    .line 3
    iget-object v0, p0, Lcx;->g:Lbx;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v1, v0, Lbx;->b:I

    .line 8
    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    iput v1, v0, Lbx;->b:I

    .line 12
    .line 13
    :cond_0
    iput-object p1, p0, Lcx;->g:Lbx;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcx;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Low;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcx;->g:Lbx;

    .line 26
    .line 27
    iget p1, p0, Lbx;->b:I

    .line 28
    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    iput p1, p0, Lbx;->b:I

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public setRecyclerListener(Ldx;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setScrollState(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Ljx;

    .line 12
    .line 13
    iget-object v1, v0, Ljx;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Ljx;->c:Landroid/widget/OverScroller;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, v0, Lww;->e:Ljo;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljo;->i()V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lww;->f0(I)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Lzw;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0, p0, p1}, Lzw;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/lit8 v0, v0, -0x1

    .line 57
    .line 58
    :goto_0
    if-ltz v0, :cond_4

    .line 59
    .line 60
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lzw;

    .line 67
    .line 68
    invoke-virtual {v1, p0, p1}, Lzw;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v0, v0, -0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    :goto_1
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p1, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 24
    .line 25
    return-void
.end method

.method public setViewCacheExtension(Lix;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lcx;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startNestedScroll(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lrs;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lrs;->f(II)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final stopNestedScroll()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lrs;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lrs;->g(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final suppressLayout(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    const-string v0, "Do not suppressLayout in layout or scroll"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->i(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 14
    .line 15
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v5, 0x3

    .line 40
    const/4 v6, 0x0

    .line 41
    move-wide v3, v1

    .line 42
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 51
    .line 52
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Ljx;

    .line 58
    .line 59
    iget-object v0, p1, Ljx;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    iget-object p1, p1, Ljx;->c:Landroid/widget/OverScroller;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 70
    .line 71
    if-eqz p0, :cond_2

    .line 72
    .line 73
    iget-object p0, p0, Lww;->e:Ljo;

    .line 74
    .line 75
    if-eqz p0, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0}, Ljo;->i()V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method public final t(II)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->B:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->B:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int v2, v0, p1

    .line 16
    .line 17
    sub-int v3, v1, p2

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Lzw;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, p0, p1, p2}, Lzw;->b(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    :goto_0
    if-ltz v0, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lzw;

    .line 48
    .line 49
    invoke-virtual {v1, p0, p1, p2}, Lzw;->b(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->B:I

    .line 56
    .line 57
    add-int/lit8 p1, p1, -0x1

    .line 58
    .line 59
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->B:I

    .line 60
    .line 61
    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Lrw;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 21
    .line 22
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    sub-int/2addr v1, v2

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    sub-int/2addr v1, v2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    sub-int/2addr v2, v3

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    sub-int/2addr v2, p0

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final v()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Lrw;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 21
    .line 22
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    sub-int/2addr v1, v2

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    sub-int/2addr v1, v2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    sub-int/2addr v2, v3

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    sub-int/2addr v2, p0

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final w()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Lrw;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 21
    .line 22
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    sub-int/2addr v1, v2

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    sub-int/2addr v1, v2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    sub-int/2addr v2, v3

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    sub-int/2addr v2, p0

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Lrw;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 21
    .line 22
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    sub-int/2addr v1, v2

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    sub-int/2addr v1, v2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    sub-int/2addr v2, v3

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    sub-int/2addr v2, p0

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final y()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", adapter:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", layout:"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", context:"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public final z(Lhx;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Ljx;

    .line 9
    .line 10
    iget-object p0, p0, Ljx;->c:Landroid/widget/OverScroller;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalX()I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalY()I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    return-void
.end method
