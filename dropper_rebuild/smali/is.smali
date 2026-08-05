.class public final Lis;
.super Landroid/os/Binder;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Landroid/os/IInterface;

.field public final synthetic a:Landroidx/room/MultiInstanceInvalidationService;

.method public constructor <init>(Landroidx/room/MultiInstanceInvalidationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lis;->a:Landroidx/room/MultiInstanceInvalidationService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "androidx.room.IMultiInstanceInvalidationService"

    .line 7
    .line 8
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    .line 1
    const-string v0, "androidx.room.IMultiInstanceInvalidationService"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-eq p1, v2, :cond_e

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eq p1, v1, :cond_9

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    if-eq p1, v3, :cond_6

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lis;->a:Landroidx/room/MultiInstanceInvalidationService;

    .line 46
    .line 47
    iget-object p3, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Ljs;

    .line 48
    .line 49
    monitor-enter p3

    .line 50
    :try_start_0
    iget-object p4, p0, Landroidx/room/MultiInstanceInvalidationService;->b:Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    check-cast p4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    .line 62
    if-nez p4, :cond_2

    .line 63
    .line 64
    monitor-exit p3

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Ljs;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 69
    .line 70
    .line 71
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    :goto_0
    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Ljs;

    .line 73
    .line 74
    if-ge v2, v0, :cond_5

    .line 75
    .line 76
    :try_start_2
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    check-cast v3, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    iget-object v5, p0, Landroidx/room/MultiInstanceInvalidationService;->b:Ljava/util/LinkedHashMap;

    .line 90
    .line 91
    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Ljava/lang/String;

    .line 96
    .line 97
    if-eq p1, v4, :cond_4

    .line 98
    .line 99
    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    if-nez v3, :cond_3

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    :try_start_3
    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Ljs;

    .line 107
    .line 108
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Lul;

    .line 113
    .line 114
    invoke-virtual {v3, p2}, Lul;->a([Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception p1

    .line 119
    goto :goto_2

    .line 120
    :catch_0
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :goto_2
    :try_start_4
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Ljs;

    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :catchall_1
    move-exception p0

    .line 130
    goto :goto_4

    .line 131
    :cond_5
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    .line 133
    .line 134
    monitor-exit p3

    .line 135
    :goto_3
    return v1

    .line 136
    :goto_4
    monitor-exit p3

    .line 137
    throw p0

    .line 138
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-nez p1, :cond_7

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_7
    const-string p4, "androidx.room.IMultiInstanceInvalidationCallback"

    .line 146
    .line 147
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 148
    .line 149
    .line 150
    move-result-object p4

    .line 151
    if-eqz p4, :cond_8

    .line 152
    .line 153
    instance-of v0, p4, Lul;

    .line 154
    .line 155
    if-eqz v0, :cond_8

    .line 156
    .line 157
    move-object v0, p4

    .line 158
    check-cast v0, Lul;

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_8
    new-instance v0, Lul;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 164
    .line 165
    .line 166
    iput-object p1, v0, Lul;->a:Landroid/os/IBinder;

    .line 167
    .line 168
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    iget-object p0, p0, Lis;->a:Landroidx/room/MultiInstanceInvalidationService;

    .line 176
    .line 177
    iget-object p2, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Ljs;

    .line 178
    .line 179
    monitor-enter p2

    .line 180
    :try_start_5
    iget-object p4, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Ljs;

    .line 181
    .line 182
    invoke-virtual {p4, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 183
    .line 184
    .line 185
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->b:Ljava/util/LinkedHashMap;

    .line 186
    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    check-cast p0, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 196
    .line 197
    monitor-exit p2

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    .line 200
    .line 201
    return v1

    .line 202
    :catchall_2
    move-exception p0

    .line 203
    monitor-exit p2

    .line 204
    throw p0

    .line 205
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    if-nez p1, :cond_a

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_a
    const-string p4, "androidx.room.IMultiInstanceInvalidationCallback"

    .line 213
    .line 214
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 215
    .line 216
    .line 217
    move-result-object p4

    .line 218
    if-eqz p4, :cond_b

    .line 219
    .line 220
    instance-of v0, p4, Lul;

    .line 221
    .line 222
    if-eqz v0, :cond_b

    .line 223
    .line 224
    move-object v0, p4

    .line 225
    check-cast v0, Lul;

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_b
    new-instance v0, Lul;

    .line 229
    .line 230
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 231
    .line 232
    .line 233
    iput-object p1, v0, Lul;->a:Landroid/os/IBinder;

    .line 234
    .line 235
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    if-nez p1, :cond_c

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_c
    iget-object p0, p0, Lis;->a:Landroidx/room/MultiInstanceInvalidationService;

    .line 246
    .line 247
    iget-object p2, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Ljs;

    .line 248
    .line 249
    monitor-enter p2

    .line 250
    :try_start_6
    iget p4, p0, Landroidx/room/MultiInstanceInvalidationService;->a:I

    .line 251
    .line 252
    add-int/2addr p4, v1

    .line 253
    iput p4, p0, Landroidx/room/MultiInstanceInvalidationService;->a:I

    .line 254
    .line 255
    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Ljs;

    .line 256
    .line 257
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-virtual {v3, v0, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_d

    .line 266
    .line 267
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->b:Ljava/util/LinkedHashMap;

    .line 272
    .line 273
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move v2, p4

    .line 277
    goto :goto_7

    .line 278
    :catchall_3
    move-exception p0

    .line 279
    goto :goto_9

    .line 280
    :cond_d
    iget p1, p0, Landroidx/room/MultiInstanceInvalidationService;->a:I

    .line 281
    .line 282
    add-int/lit8 p1, p1, -0x1

    .line 283
    .line 284
    iput p1, p0, Landroidx/room/MultiInstanceInvalidationService;->a:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 285
    .line 286
    :goto_7
    monitor-exit p2

    .line 287
    :goto_8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    .line 292
    .line 293
    return v1

    .line 294
    :goto_9
    monitor-exit p2

    .line 295
    throw p0

    .line 296
    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    return v1
.end method
