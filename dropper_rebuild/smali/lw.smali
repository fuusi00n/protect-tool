.class public final Llw;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Lqn;

.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Llw;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Llw;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final a(Lrn;Lon;)V
    .locals 8

    .line 1
    iget v0, p0, Llw;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Llw;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object v0, Lon;->ON_CREATE:Lon;

    .line 10
    .line 11
    if-ne p2, v0, :cond_3

    .line 12
    .line 13
    invoke-interface {p1}, Lrn;->e()Ltn;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p0}, Ltn;->f(Lqn;)V

    .line 18
    .line 19
    .line 20
    check-cast v2, Lyy;

    .line 21
    .line 22
    iget-boolean p0, v2, Lyy;->b:Z

    .line 23
    .line 24
    if-nez p0, :cond_2

    .line 25
    .line 26
    iget-object p0, v2, Lyy;->a:Lm3;

    .line 27
    .line 28
    const-string p1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lm3;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance p1, Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object p2, v2, Lyy;->c:Landroid/os/Bundle;

    .line 40
    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    if-eqz p0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iput-object p1, v2, Lyy;->c:Landroid/os/Bundle;

    .line 52
    .line 53
    iput-boolean v1, v2, Lyy;->b:Z

    .line 54
    .line 55
    iget-object p0, v2, Lyy;->d:Lu10;

    .line 56
    .line 57
    invoke-virtual {p0}, Lu10;->a()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lzy;

    .line 62
    .line 63
    :cond_2
    return-void

    .line 64
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string p1, "Next event must be ON_CREATE, it was "

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :pswitch_0
    sget-object p0, Lon;->ON_STOP:Lon;

    .line 89
    .line 90
    if-ne p2, p0, :cond_4

    .line 91
    .line 92
    check-cast v2, Laj;

    .line 93
    .line 94
    iget-object p0, v2, Laj;->E:Landroid/view/View;

    .line 95
    .line 96
    if-eqz p0, :cond_4

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 99
    .line 100
    .line 101
    :cond_4
    return-void

    .line 102
    :pswitch_1
    check-cast v2, Lf3;

    .line 103
    .line 104
    iget-object p1, v2, Ldb;->e:Li60;

    .line 105
    .line 106
    if-nez p1, :cond_6

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lya;

    .line 113
    .line 114
    if-eqz p1, :cond_5

    .line 115
    .line 116
    iget-object p1, p1, Lya;->a:Li60;

    .line 117
    .line 118
    iput-object p1, v2, Ldb;->e:Li60;

    .line 119
    .line 120
    :cond_5
    iget-object p1, v2, Ldb;->e:Li60;

    .line 121
    .line 122
    if-nez p1, :cond_6

    .line 123
    .line 124
    new-instance p1, Li60;

    .line 125
    .line 126
    invoke-direct {p1}, Li60;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object p1, v2, Ldb;->e:Li60;

    .line 130
    .line 131
    :cond_6
    iget-object p1, v2, Ldb;->a:Ltn;

    .line 132
    .line 133
    invoke-virtual {p1, p0}, Ltn;->f(Lqn;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_2
    check-cast v2, Ldz;

    .line 138
    .line 139
    sget-object v0, Lon;->ON_CREATE:Lon;

    .line 140
    .line 141
    if-ne p2, v0, :cond_d

    .line 142
    .line 143
    invoke-interface {p1}, Lrn;->e()Ltn;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1, p0}, Ltn;->f(Lqn;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v2}, Ldz;->b()Lm3;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    const-string p1, "androidx.savedstate.Restarter"

    .line 155
    .line 156
    invoke-virtual {p0, p1}, Lm3;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    if-nez p0, :cond_7

    .line 161
    .line 162
    goto/16 :goto_2

    .line 163
    .line 164
    :cond_7
    const-string p1, "classes_to_restore"

    .line 165
    .line 166
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    if-eqz p0, :cond_b

    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    const/4 p2, 0x0

    .line 177
    move v0, p2

    .line 178
    :cond_8
    :goto_0
    if-ge v0, p1, :cond_c

    .line 179
    .line 180
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    add-int/lit8 v0, v0, 0x1

    .line 185
    .line 186
    check-cast v3, Ljava/lang/String;

    .line 187
    .line 188
    const-string v4, "Class "

    .line 189
    .line 190
    :try_start_0
    const-class v5, Llw;

    .line 191
    .line 192
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-static {v3, p2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    const-class v6, Laz;

    .line 201
    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 207
    .line 208
    .line 209
    const/4 v6, 0x0

    .line 210
    :try_start_1
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 211
    .line 212
    .line 213
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 215
    .line 216
    .line 217
    :try_start_2
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    check-cast v4, Laz;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 225
    .line 226
    instance-of v3, v2, Lj60;

    .line 227
    .line 228
    if-eqz v3, :cond_a

    .line 229
    .line 230
    move-object v3, v2

    .line 231
    check-cast v3, Lj60;

    .line 232
    .line 233
    invoke-interface {v3}, Lj60;->d()Li60;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-interface {v2}, Ldz;->b()Lm3;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    iget-object v3, v3, Li60;->a:Ljava/util/LinkedHashMap;

    .line 245
    .line 246
    new-instance v5, Ljava/util/HashSet;

    .line 247
    .line 248
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    if-eqz v6, :cond_9

    .line 264
    .line 265
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    check-cast v6, Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    check-cast v6, Le60;

    .line 279
    .line 280
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    invoke-interface {v2}, Lrn;->e()Ltn;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    invoke-static {v6, v4, v7}, Ld40;->b(Le60;Lm3;Ltn;)V

    .line 288
    .line 289
    .line 290
    goto :goto_1

    .line 291
    :cond_9
    new-instance v5, Ljava/util/HashSet;

    .line 292
    .line 293
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    if-nez v3, :cond_8

    .line 305
    .line 306
    invoke-virtual {v4}, Lm3;->f()V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_0

    .line 310
    .line 311
    :cond_a
    const-string p0, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner"

    .line 312
    .line 313
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    goto :goto_2

    .line 317
    :catch_0
    move-exception p0

    .line 318
    new-instance p1, Ljava/lang/RuntimeException;

    .line 319
    .line 320
    new-instance p2, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    const-string v0, "Failed to instantiate "

    .line 323
    .line 324
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p2

    .line 334
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    .line 336
    .line 337
    throw p1

    .line 338
    :catch_1
    move-exception p0

    .line 339
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 340
    .line 341
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p2

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string p2, " must have default constructor in order to be automatically recreated"

    .line 354
    .line 355
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 363
    .line 364
    .line 365
    throw p1

    .line 366
    :catch_2
    move-exception p0

    .line 367
    new-instance p1, Ljava/lang/RuntimeException;

    .line 368
    .line 369
    const-string p2, " wasn\'t found"

    .line 370
    .line 371
    invoke-static {v4, v3, p2}, Lk00;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    .line 377
    .line 378
    throw p1

    .line 379
    :cond_b
    const-string p0, "Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\""

    .line 380
    .line 381
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    :cond_c
    :goto_2
    return-void

    .line 385
    :cond_d
    new-instance p0, Ljava/lang/AssertionError;

    .line 386
    .line 387
    const-string p1, "Next event must be ON_CREATE"

    .line 388
    .line 389
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    throw p0

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
