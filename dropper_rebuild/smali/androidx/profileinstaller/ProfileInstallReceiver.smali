.class public Landroidx/profileinstaller/ProfileInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto/16 :goto_24

    .line 8
    .line 9
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "androidx.profileinstaller.action.INSTALL_PROFILE"

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x7

    .line 21
    if-eqz v3, :cond_13

    .line 22
    .line 23
    new-instance v8, Li6;

    .line 24
    .line 25
    invoke-direct {v8}, Li6;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v9, Lo0;

    .line 29
    .line 30
    const/16 v2, 0x16

    .line 31
    .line 32
    invoke-direct {v9, v2, v0}, Lo0;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    new-instance v0, Ljava/io/File;

    .line 52
    .line 53
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 54
    .line 55
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :try_start_0
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_f

    .line 70
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    sget-object v13, Lnm;->i:[B

    .line 78
    .line 79
    new-instance v11, Ljava/io/File;

    .line 80
    .line 81
    new-instance v0, Ljava/io/File;

    .line 82
    .line 83
    const-string v6, "/data/misc/profiles/cur/0"

    .line 84
    .line 85
    invoke-direct {v0, v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v2, "primary.prof"

    .line 89
    .line 90
    invoke-direct {v11, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v6, Lye;

    .line 94
    .line 95
    const-string v0, "dexopt/baseline.prof"

    .line 96
    .line 97
    invoke-direct/range {v6 .. v11}, Lye;-><init>(Landroid/content/res/AssetManager;Li6;Lo0;Ljava/lang/String;Ljava/io/File;)V

    .line 98
    .line 99
    .line 100
    iget-object v2, v6, Lye;->b:[B

    .line 101
    .line 102
    if-nez v2, :cond_1

    .line 103
    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 105
    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const/4 v2, 0x3

    .line 111
    invoke-virtual {v6, v2, v0}, Lye;->b(ILjava/io/Serializable;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_22

    .line 115
    .line 116
    :cond_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    const/4 v10, 0x4

    .line 121
    const/4 v14, 0x0

    .line 122
    if-eqz v8, :cond_2

    .line 123
    .line 124
    invoke-virtual {v11}, Ljava/io/File;->canWrite()Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-nez v8, :cond_3

    .line 129
    .line 130
    invoke-virtual {v6, v10, v14}, Lye;->b(ILjava/io/Serializable;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_22

    .line 134
    .line 135
    :cond_2
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    .line 136
    .line 137
    .line 138
    :cond_3
    const/4 v8, 0x1

    .line 139
    iput-boolean v8, v6, Lye;->e:Z

    .line 140
    .line 141
    const/4 v11, 0x6

    .line 142
    :try_start_2
    invoke-virtual {v6, v7, v0}, Lye;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 143
    .line 144
    .line 145
    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    move-object v15, v0

    .line 147
    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v9, v5, v0}, Lo0;->v(ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :catch_1
    move-exception v0

    .line 154
    invoke-virtual {v9, v11, v0}, Lo0;->v(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :goto_0
    move-object v15, v14

    .line 158
    :goto_1
    const-string v11, "Invalid magic"

    .line 159
    .line 160
    const/16 v8, 0x8

    .line 161
    .line 162
    if-eqz v15, :cond_5

    .line 163
    .line 164
    :try_start_3
    invoke-static {v15, v10}, Lvd;->N(Ljava/io/InputStream;I)[B

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v13, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_4

    .line 173
    .line 174
    invoke-static {v15, v10}, Lvd;->N(Ljava/io/InputStream;I)[B

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v4, v6, Lye;->d:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {v15, v0, v4}, Lnm;->O(Ljava/io/FileInputStream;[BLjava/lang/String;)[Lze;

    .line 181
    .line 182
    .line 183
    move-result-object v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 185
    .line 186
    .line 187
    goto :goto_6

    .line 188
    :catch_2
    move-exception v0

    .line 189
    invoke-virtual {v9, v5, v0}, Lo0;->v(ILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    goto :goto_6

    .line 193
    :catchall_0
    move-exception v0

    .line 194
    move-object v1, v0

    .line 195
    goto :goto_7

    .line 196
    :catch_3
    move-exception v0

    .line 197
    goto :goto_2

    .line 198
    :catch_4
    move-exception v0

    .line 199
    goto :goto_4

    .line 200
    :cond_4
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 201
    .line 202
    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 206
    :goto_2
    :try_start_6
    invoke-virtual {v9, v8, v0}, Lo0;->v(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 207
    .line 208
    .line 209
    :goto_3
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :catch_5
    move-exception v0

    .line 214
    invoke-virtual {v9, v5, v0}, Lo0;->v(ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :goto_4
    :try_start_8
    invoke-virtual {v9, v5, v0}, Lo0;->v(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :goto_5
    move-object v4, v14

    .line 223
    :goto_6
    iput-object v4, v6, Lye;->f:[Lze;

    .line 224
    .line 225
    goto :goto_9

    .line 226
    :goto_7
    :try_start_9
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 227
    .line 228
    .line 229
    goto :goto_8

    .line 230
    :catch_6
    move-exception v0

    .line 231
    invoke-virtual {v9, v5, v0}, Lo0;->v(ILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :goto_8
    throw v1

    .line 235
    :cond_5
    :goto_9
    iget-object v0, v6, Lye;->f:[Lze;

    .line 236
    .line 237
    if-eqz v0, :cond_a

    .line 238
    .line 239
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 240
    .line 241
    const/16 v15, 0x22

    .line 242
    .line 243
    if-le v4, v15, :cond_6

    .line 244
    .line 245
    goto :goto_11

    .line 246
    :cond_6
    packed-switch v4, :pswitch_data_0

    .line 247
    .line 248
    .line 249
    goto :goto_11

    .line 250
    :pswitch_0
    :try_start_a
    const-string v4, "dexopt/baseline.profm"

    .line 251
    .line 252
    invoke-virtual {v6, v7, v4}, Lye;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 253
    .line 254
    .line 255
    move-result-object v4
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_7

    .line 256
    if-eqz v4, :cond_8

    .line 257
    .line 258
    :try_start_b
    sget-object v7, Lnm;->j:[B

    .line 259
    .line 260
    invoke-static {v4, v10}, Lvd;->N(Ljava/io/InputStream;I)[B

    .line 261
    .line 262
    .line 263
    move-result-object v15

    .line 264
    invoke-static {v7, v15}, Ljava/util/Arrays;->equals([B[B)Z

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    if-eqz v7, :cond_7

    .line 269
    .line 270
    invoke-static {v4, v10}, Lvd;->N(Ljava/io/InputStream;I)[B

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    invoke-static {v4, v7, v2, v0}, Lnm;->L(Ljava/io/FileInputStream;[B[B[Lze;)[Lze;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    iput-object v0, v6, Lye;->f:[Lze;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 279
    .line 280
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_7

    .line 281
    .line 282
    .line 283
    move-object v0, v6

    .line 284
    goto :goto_10

    .line 285
    :catch_7
    move-exception v0

    .line 286
    goto :goto_c

    .line 287
    :catch_8
    move-exception v0

    .line 288
    goto :goto_d

    .line 289
    :catch_9
    move-exception v0

    .line 290
    goto :goto_e

    .line 291
    :catchall_1
    move-exception v0

    .line 292
    move-object v2, v0

    .line 293
    goto :goto_a

    .line 294
    :cond_7
    :try_start_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 295
    .line 296
    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 300
    :goto_a
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 301
    .line 302
    .line 303
    goto :goto_b

    .line 304
    :catchall_2
    move-exception v0

    .line 305
    :try_start_f
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 306
    .line 307
    .line 308
    :goto_b
    throw v2

    .line 309
    :cond_8
    if-eqz v4, :cond_9

    .line 310
    .line 311
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_7

    .line 312
    .line 313
    .line 314
    goto :goto_f

    .line 315
    :goto_c
    iput-object v14, v6, Lye;->f:[Lze;

    .line 316
    .line 317
    invoke-virtual {v9, v8, v0}, Lo0;->v(ILjava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    goto :goto_f

    .line 321
    :goto_d
    invoke-virtual {v9, v5, v0}, Lo0;->v(ILjava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    goto :goto_f

    .line 325
    :goto_e
    const/16 v2, 0x9

    .line 326
    .line 327
    invoke-virtual {v9, v2, v0}, Lo0;->v(ILjava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :cond_9
    :goto_f
    move-object v0, v14

    .line 331
    :goto_10
    if-eqz v0, :cond_a

    .line 332
    .line 333
    move-object v6, v0

    .line 334
    :cond_a
    :goto_11
    iget-object v2, v6, Lye;->a:Lo0;

    .line 335
    .line 336
    iget-object v0, v6, Lye;->f:[Lze;

    .line 337
    .line 338
    iget-object v4, v6, Lye;->b:[B

    .line 339
    .line 340
    const-string v7, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    .line 341
    .line 342
    if-eqz v0, :cond_e

    .line 343
    .line 344
    if-nez v4, :cond_b

    .line 345
    .line 346
    goto :goto_17

    .line 347
    :cond_b
    iget-boolean v9, v6, Lye;->e:Z

    .line 348
    .line 349
    if-eqz v9, :cond_d

    .line 350
    .line 351
    :try_start_10
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 352
    .line 353
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_a

    .line 354
    .line 355
    .line 356
    :try_start_11
    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write([B)V

    .line 360
    .line 361
    .line 362
    invoke-static {v9, v4, v0}, Lnm;->W(Ljava/io/ByteArrayOutputStream;[B[Lze;)Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-nez v0, :cond_c

    .line 367
    .line 368
    const/4 v0, 0x5

    .line 369
    invoke-virtual {v2, v0, v14}, Lo0;->v(ILjava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    iput-object v14, v6, Lye;->f:[Lze;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 373
    .line 374
    :try_start_12
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_a

    .line 375
    .line 376
    .line 377
    goto :goto_17

    .line 378
    :catch_a
    move-exception v0

    .line 379
    goto :goto_14

    .line 380
    :catch_b
    move-exception v0

    .line 381
    goto :goto_15

    .line 382
    :catchall_3
    move-exception v0

    .line 383
    move-object v4, v0

    .line 384
    goto :goto_12

    .line 385
    :cond_c
    :try_start_13
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    iput-object v0, v6, Lye;->g:[B
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 390
    .line 391
    :try_start_14
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_a

    .line 392
    .line 393
    .line 394
    goto :goto_16

    .line 395
    :goto_12
    :try_start_15
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 396
    .line 397
    .line 398
    goto :goto_13

    .line 399
    :catchall_4
    move-exception v0

    .line 400
    :try_start_16
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 401
    .line 402
    .line 403
    :goto_13
    throw v4
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_a

    .line 404
    :goto_14
    invoke-virtual {v2, v8, v0}, Lo0;->v(ILjava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    goto :goto_16

    .line 408
    :goto_15
    invoke-virtual {v2, v5, v0}, Lo0;->v(ILjava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    :goto_16
    iput-object v14, v6, Lye;->f:[Lze;

    .line 412
    .line 413
    goto :goto_17

    .line 414
    :cond_d
    invoke-static {v7}, Lg9;->k(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :cond_e
    :goto_17
    iget-object v0, v6, Lye;->g:[B

    .line 419
    .line 420
    if-nez v0, :cond_f

    .line 421
    .line 422
    :goto_18
    const/4 v4, 0x0

    .line 423
    goto :goto_20

    .line 424
    :cond_f
    iget-boolean v2, v6, Lye;->e:Z

    .line 425
    .line 426
    if-eqz v2, :cond_11

    .line 427
    .line 428
    :try_start_17
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 429
    .line 430
    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 431
    .line 432
    .line 433
    :try_start_18
    new-instance v4, Ljava/io/FileOutputStream;

    .line 434
    .line 435
    iget-object v0, v6, Lye;->c:Ljava/io/File;

    .line 436
    .line 437
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 438
    .line 439
    .line 440
    const/16 v0, 0x200

    .line 441
    .line 442
    :try_start_19
    new-array v0, v0, [B

    .line 443
    .line 444
    :goto_19
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 445
    .line 446
    .line 447
    move-result v7

    .line 448
    if-lez v7, :cond_10

    .line 449
    .line 450
    const/4 v8, 0x0

    .line 451
    invoke-virtual {v4, v0, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 452
    .line 453
    .line 454
    goto :goto_19

    .line 455
    :cond_10
    const/4 v7, 0x1

    .line 456
    invoke-virtual {v6, v7, v14}, Lye;->b(ILjava/io/Serializable;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 457
    .line 458
    .line 459
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 460
    .line 461
    .line 462
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_c
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 463
    .line 464
    .line 465
    iput-object v14, v6, Lye;->g:[B

    .line 466
    .line 467
    iput-object v14, v6, Lye;->f:[Lze;

    .line 468
    .line 469
    move v4, v7

    .line 470
    goto :goto_20

    .line 471
    :catchall_5
    move-exception v0

    .line 472
    goto :goto_21

    .line 473
    :catch_c
    move-exception v0

    .line 474
    goto :goto_1d

    .line 475
    :catch_d
    move-exception v0

    .line 476
    const/4 v2, 0x6

    .line 477
    goto :goto_1f

    .line 478
    :catchall_6
    move-exception v0

    .line 479
    move-object v4, v0

    .line 480
    goto :goto_1b

    .line 481
    :catchall_7
    move-exception v0

    .line 482
    move-object v7, v0

    .line 483
    :try_start_1c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 484
    .line 485
    .line 486
    goto :goto_1a

    .line 487
    :catchall_8
    move-exception v0

    .line 488
    :try_start_1d
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 489
    .line 490
    .line 491
    :goto_1a
    throw v7
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 492
    :goto_1b
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    .line 493
    .line 494
    .line 495
    goto :goto_1c

    .line 496
    :catchall_9
    move-exception v0

    .line 497
    :try_start_1f
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 498
    .line 499
    .line 500
    :goto_1c
    throw v4
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_d
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_c
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    .line 501
    :goto_1d
    :try_start_20
    invoke-virtual {v6, v5, v0}, Lye;->b(ILjava/io/Serializable;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    .line 502
    .line 503
    .line 504
    :goto_1e
    iput-object v14, v6, Lye;->g:[B

    .line 505
    .line 506
    iput-object v14, v6, Lye;->f:[Lze;

    .line 507
    .line 508
    goto :goto_18

    .line 509
    :goto_1f
    :try_start_21
    invoke-virtual {v6, v2, v0}, Lye;->b(ILjava/io/Serializable;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    .line 510
    .line 511
    .line 512
    goto :goto_1e

    .line 513
    :goto_20
    if-eqz v4, :cond_12

    .line 514
    .line 515
    invoke-static {v3, v12}, Lvd;->I(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 516
    .line 517
    .line 518
    goto :goto_23

    .line 519
    :goto_21
    iput-object v14, v6, Lye;->g:[B

    .line 520
    .line 521
    iput-object v14, v6, Lye;->f:[Lze;

    .line 522
    .line 523
    throw v0

    .line 524
    :cond_11
    invoke-static {v7}, Lg9;->k(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    return-void

    .line 528
    :catch_e
    invoke-virtual {v6, v10, v14}, Lye;->b(ILjava/io/Serializable;)V

    .line 529
    .line 530
    .line 531
    :goto_22
    const/4 v4, 0x0

    .line 532
    :cond_12
    :goto_23
    invoke-static {v1, v4}, Lmu;->c(Landroid/content/Context;Z)V

    .line 533
    .line 534
    .line 535
    goto/16 :goto_24

    .line 536
    .line 537
    :catch_f
    move-exception v0

    .line 538
    invoke-virtual {v9, v5, v0}, Lo0;->v(ILjava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    const/4 v8, 0x0

    .line 542
    invoke-static {v1, v8}, Lmu;->c(Landroid/content/Context;Z)V

    .line 543
    .line 544
    .line 545
    goto/16 :goto_24

    .line 546
    .line 547
    :cond_13
    const-string v3, "androidx.profileinstaller.action.SKIP_FILE"

    .line 548
    .line 549
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v3

    .line 553
    const/16 v4, 0xa

    .line 554
    .line 555
    if-eqz v3, :cond_15

    .line 556
    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    if-eqz v2, :cond_19

    .line 562
    .line 563
    const-string v3, "EXTRA_SKIP_FILE_OPERATION"

    .line 564
    .line 565
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    const-string v3, "WRITE_SKIP_FILE"

    .line 570
    .line 571
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    if-eqz v3, :cond_14

    .line 576
    .line 577
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    const/4 v8, 0x0

    .line 590
    :try_start_22
    invoke-virtual {v3, v2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 591
    .line 592
    .line 593
    move-result-object v2
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_22} :catch_10

    .line 594
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    invoke-static {v2, v1}, Lvd;->I(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v0, v4}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 602
    .line 603
    .line 604
    goto :goto_24

    .line 605
    :catch_10
    invoke-virtual {v0, v5}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 606
    .line 607
    .line 608
    goto :goto_24

    .line 609
    :cond_14
    const-string v3, "DELETE_SKIP_FILE"

    .line 610
    .line 611
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result v2

    .line 615
    if-eqz v2, :cond_19

    .line 616
    .line 617
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    new-instance v2, Ljava/io/File;

    .line 622
    .line 623
    const-string v3, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 624
    .line 625
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 629
    .line 630
    .line 631
    const/16 v1, 0xb

    .line 632
    .line 633
    invoke-virtual {v0, v1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 634
    .line 635
    .line 636
    goto :goto_24

    .line 637
    :cond_15
    const-string v3, "androidx.profileinstaller.action.SAVE_PROFILE"

    .line 638
    .line 639
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    move-result v3

    .line 643
    if-eqz v3, :cond_16

    .line 644
    .line 645
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 646
    .line 647
    .line 648
    move-result v1

    .line 649
    invoke-static {v1, v4}, Landroid/os/Process;->sendSignal(II)V

    .line 650
    .line 651
    .line 652
    const/16 v1, 0xc

    .line 653
    .line 654
    invoke-virtual {v0, v1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 655
    .line 656
    .line 657
    return-void

    .line 658
    :cond_16
    const-string v3, "androidx.profileinstaller.action.BENCHMARK_OPERATION"

    .line 659
    .line 660
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v2

    .line 664
    if-eqz v2, :cond_19

    .line 665
    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    if-eqz v2, :cond_19

    .line 671
    .line 672
    const-string v3, "EXTRA_BENCHMARK_OPERATION"

    .line 673
    .line 674
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    const-string v3, "DROP_SHADER_CACHE"

    .line 679
    .line 680
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result v2

    .line 684
    if-eqz v2, :cond_18

    .line 685
    .line 686
    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    invoke-virtual {v1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    invoke-static {v1}, Ld40;->n(Ljava/io/File;)Z

    .line 695
    .line 696
    .line 697
    move-result v1

    .line 698
    if-eqz v1, :cond_17

    .line 699
    .line 700
    const/16 v1, 0xe

    .line 701
    .line 702
    invoke-virtual {v0, v1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 703
    .line 704
    .line 705
    return-void

    .line 706
    :cond_17
    const/16 v1, 0xf

    .line 707
    .line 708
    invoke-virtual {v0, v1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 709
    .line 710
    .line 711
    return-void

    .line 712
    :cond_18
    const/16 v1, 0x10

    .line 713
    .line 714
    invoke-virtual {v0, v1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 715
    .line 716
    .line 717
    :cond_19
    :goto_24
    return-void

    .line 718
    nop

    .line 719
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
