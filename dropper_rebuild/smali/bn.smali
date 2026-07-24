.class public Lbn;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lsm;


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic c:J

.field public static final synthetic d:J


# instance fields
.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lbn;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Object;

    .line 4
    .line 5
    const-string v2, "_state$volatile"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    sput-object v3, Lbn;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    sget-object v3, Lg8;->a:Lsun/misc/Unsafe;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    sput-wide v4, Lbn;->d:J

    .line 24
    .line 25
    const-string v2, "_parentHandle$volatile"

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sput-object v1, Lbn;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    sput-wide v0, Lbn;->c:J

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lvd;->s:Lch;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lvd;->r:Lch;

    .line 10
    .line 11
    :goto_0
    iput-object p1, p0, Lbn;->_state$volatile:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public static F(Lep;)Le9;
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0}, Lep;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lep;->l()Lep;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lep;->k()Lep;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lep;->m()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    instance-of v0, p0, Le9;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    check-cast p0, Le9;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    instance-of v0, p0, Lvs;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public static O(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lzm;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, Lzm;

    .line 6
    .line 7
    invoke-virtual {p0}, Lzm;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p0, "Cancelling"

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lzm;->g()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    const-string p0, "Completing"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    instance-of v0, p0, Lyl;

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    check-cast p0, Lyl;

    .line 30
    .line 31
    invoke-interface {p0}, Lyl;->a()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_3

    .line 36
    .line 37
    :cond_2
    const-string p0, "Active"

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_3
    const-string p0, "New"

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_4
    instance-of p0, p0, Lpa;

    .line 44
    .line 45
    if-eqz p0, :cond_5

    .line 46
    .line 47
    const-string p0, "Cancelled"

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_5
    const-string p0, "Completed"

    .line 51
    .line 52
    return-object p0
.end method


# virtual methods
.method public A(Lra;)V
    .locals 0

    .line 1
    throw p1
.end method

.method public final B(Lsm;)V
    .locals 4

    .line 1
    sget-object v0, Lws;->a:Lws;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lbn;->M(Ld9;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lbn;

    .line 10
    .line 11
    :goto_0
    invoke-virtual {p1}, Lbn;->y()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1, v1}, Lbn;->N(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v1, Le9;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Le9;-><init>(Lbn;)V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    invoke-static {p1, v2, v1, v3}, Ld40;->v(Lsm;ZLxm;I)Lpf;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ld9;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lbn;->M(Ld9;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lbn;->y()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    instance-of v1, v1, Lyl;

    .line 45
    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    invoke-interface {p1}, Lpf;->b()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lbn;->M(Ld9;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final C(ZZLmm;)Lpf;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    instance-of v1, p3, Lum;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v1, p3

    .line 9
    check-cast v1, Lum;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v1, v0

    .line 13
    :goto_0
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Lom;

    .line 16
    .line 17
    invoke-direct {v1, p3}, Lom;-><init>(Lmm;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_1
    move-object v7, v1

    .line 21
    goto :goto_3

    .line 22
    :cond_2
    instance-of v1, p3, Lxm;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    move-object v1, p3

    .line 27
    check-cast v1, Lxm;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_3
    move-object v1, v0

    .line 31
    :goto_2
    if-eqz v1, :cond_4

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_4
    new-instance v1, Lpm;

    .line 35
    .line 36
    invoke-direct {v1, p3}, Lpm;-><init>(Lmm;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :goto_3
    iput-object p0, v7, Lxm;->g:Lbn;

    .line 41
    .line 42
    :goto_4
    invoke-virtual {p0}, Lbn;->y()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    instance-of v1, v6, Lch;

    .line 47
    .line 48
    if-eqz v1, :cond_8

    .line 49
    .line 50
    move-object v1, v6

    .line 51
    check-cast v1, Lch;

    .line 52
    .line 53
    iget-boolean v2, v1, Lch;->a:Z

    .line 54
    .line 55
    if-eqz v2, :cond_7

    .line 56
    .line 57
    sget-object v8, Lbn;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 58
    .line 59
    :goto_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    sget-object v2, Lg8;->a:Lsun/misc/Unsafe;

    .line 63
    .line 64
    sget-wide v4, Lbn;->d:J

    .line 65
    .line 66
    move-object v3, p0

    .line 67
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_5

    .line 72
    .line 73
    goto/16 :goto_d

    .line 74
    .line 75
    :cond_5
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-eq p0, v6, :cond_6

    .line 80
    .line 81
    goto/16 :goto_c

    .line 82
    .line 83
    :cond_6
    move-object p0, v3

    .line 84
    goto :goto_5

    .line 85
    :cond_7
    move-object v3, p0

    .line 86
    invoke-virtual {v3, v1}, Lbn;->J(Lch;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_c

    .line 90
    .line 91
    :cond_8
    move-object v3, p0

    .line 92
    instance-of p0, v6, Lyl;

    .line 93
    .line 94
    if-eqz p0, :cond_15

    .line 95
    .line 96
    move-object p0, v6

    .line 97
    check-cast p0, Lyl;

    .line 98
    .line 99
    invoke-interface {p0}, Lyl;->e()Lvs;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-nez v1, :cond_9

    .line 104
    .line 105
    check-cast v6, Lxm;

    .line 106
    .line 107
    invoke-virtual {v3, v6}, Lbn;->K(Lxm;)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_c

    .line 111
    .line 112
    :cond_9
    sget-object v2, Lws;->a:Lws;

    .line 113
    .line 114
    const/4 v4, 0x2

    .line 115
    const/4 v5, 0x1

    .line 116
    if-eqz p1, :cond_10

    .line 117
    .line 118
    instance-of v8, v6, Lzm;

    .line 119
    .line 120
    if-eqz v8, :cond_10

    .line 121
    .line 122
    monitor-enter v6

    .line 123
    :try_start_0
    move-object v8, v6

    .line 124
    check-cast v8, Lzm;

    .line 125
    .line 126
    invoke-virtual {v8}, Lzm;->d()Ljava/lang/Throwable;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    if-eqz v8, :cond_a

    .line 131
    .line 132
    instance-of v9, p3, Le9;

    .line 133
    .line 134
    if-eqz v9, :cond_f

    .line 135
    .line 136
    move-object v9, v6

    .line 137
    check-cast v9, Lzm;

    .line 138
    .line 139
    invoke-virtual {v9}, Lzm;->g()Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-nez v9, :cond_f

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    move-object p0, v0

    .line 148
    goto :goto_9

    .line 149
    :cond_a
    :goto_6
    move-object v2, v6

    .line 150
    check-cast v2, Lyl;

    .line 151
    .line 152
    new-instance v9, Lan;

    .line 153
    .line 154
    invoke-direct {v9, v7, v3, v2}, Lan;-><init>(Lxm;Lbn;Lyl;)V

    .line 155
    .line 156
    .line 157
    :goto_7
    invoke-virtual {v1}, Lep;->l()Lep;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v2, v7, v1, v9}, Lep;->p(Lxm;Lvs;Lan;)I

    .line 162
    .line 163
    .line 164
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    if-eq v2, v5, :cond_c

    .line 166
    .line 167
    if-eq v2, v4, :cond_b

    .line 168
    .line 169
    goto :goto_7

    .line 170
    :cond_b
    const/4 v2, 0x0

    .line 171
    goto :goto_8

    .line 172
    :cond_c
    move v2, v5

    .line 173
    :goto_8
    if-nez v2, :cond_d

    .line 174
    .line 175
    monitor-exit v6

    .line 176
    goto :goto_c

    .line 177
    :cond_d
    if-nez v8, :cond_e

    .line 178
    .line 179
    monitor-exit v6

    .line 180
    return-object v7

    .line 181
    :cond_e
    move-object v2, v7

    .line 182
    :cond_f
    monitor-exit v6

    .line 183
    goto :goto_a

    .line 184
    :goto_9
    monitor-exit v6

    .line 185
    throw p0

    .line 186
    :cond_10
    move-object v8, v0

    .line 187
    :goto_a
    if-eqz v8, :cond_12

    .line 188
    .line 189
    if-eqz p2, :cond_11

    .line 190
    .line 191
    invoke-interface {p3, v8}, Lmm;->d(Ljava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    :cond_11
    return-object v2

    .line 195
    :cond_12
    new-instance v2, Lan;

    .line 196
    .line 197
    invoke-direct {v2, v7, v3, p0}, Lan;-><init>(Lxm;Lbn;Lyl;)V

    .line 198
    .line 199
    .line 200
    :goto_b
    invoke-virtual {v1}, Lep;->l()Lep;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {p0, v7, v1, v2}, Lep;->p(Lxm;Lvs;Lan;)I

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-eq p0, v5, :cond_14

    .line 209
    .line 210
    if-eq p0, v4, :cond_13

    .line 211
    .line 212
    goto :goto_b

    .line 213
    :cond_13
    :goto_c
    move-object p0, v3

    .line 214
    goto/16 :goto_4

    .line 215
    .line 216
    :cond_14
    :goto_d
    return-object v7

    .line 217
    :cond_15
    if-eqz p2, :cond_18

    .line 218
    .line 219
    instance-of p0, v6, Lpa;

    .line 220
    .line 221
    if-eqz p0, :cond_16

    .line 222
    .line 223
    check-cast v6, Lpa;

    .line 224
    .line 225
    goto :goto_e

    .line 226
    :cond_16
    move-object v6, v0

    .line 227
    :goto_e
    if-eqz v6, :cond_17

    .line 228
    .line 229
    iget-object v0, v6, Lpa;->a:Ljava/lang/Throwable;

    .line 230
    .line 231
    :cond_17
    invoke-interface {p3, v0}, Lmm;->d(Ljava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    :cond_18
    sget-object p0, Lws;->a:Lws;

    .line 235
    .line 236
    return-object p0
.end method

.method public D()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final E(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Lbn;->y()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lbn;->R(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lvd;->m:Lo0;

    .line 10
    .line 11
    if-ne v0, v1, :cond_3

    .line 12
    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Job "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, " is already complete or completing, but is being completed with "

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    instance-of v1, p1, Lpa;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    check-cast p1, Lpa;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object p1, v2

    .line 46
    :goto_0
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object v2, p1, Lpa;->a:Ljava/lang/Throwable;

    .line 49
    .line 50
    :cond_2
    invoke-direct {v0, p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_3
    sget-object v1, Lvd;->o:Lo0;

    .line 55
    .line 56
    if-eq v0, v1, :cond_0

    .line 57
    .line 58
    return-object v0
.end method

.method public final G(Lvs;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lep;->j()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast v0, Lep;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_2

    .line 16
    .line 17
    instance-of v2, v0, Lum;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    move-object v2, v0

    .line 22
    check-cast v2, Lxm;

    .line 23
    .line 24
    :try_start_0
    invoke-interface {v2, p2}, Lmm;->d(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception v3

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-static {v1, v3}, Lnm;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    new-instance v1, Lra;

    .line 36
    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v5, "Exception in completion handler "

    .line 40
    .line 41
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, " for "

    .line 48
    .line 49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lep;->k()Lep;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    if-eqz v1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0, v1}, Lbn;->A(Lra;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {p0, p2}, Lbn;->n(Ljava/lang/Throwable;)Z

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public H(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public I()V
    .locals 0

    .line 1
    return-void
.end method

.method public final J(Lch;)V
    .locals 8

    .line 1
    new-instance v0, Lvs;

    .line 2
    .line 3
    invoke-direct {v0}, Lep;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p1, Lch;->a:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v7, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Lxl;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lxl;-><init>(Lvs;)V

    .line 15
    .line 16
    .line 17
    move-object v7, v1

    .line 18
    :goto_0
    sget-object v0, Lbn;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object v2, Lg8;->a:Lsun/misc/Unsafe;

    .line 24
    .line 25
    sget-wide v4, Lbn;->d:J

    .line 26
    .line 27
    move-object v3, p0

    .line 28
    move-object v6, p1

    .line 29
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eq p0, v6, :cond_2

    .line 41
    .line 42
    :goto_1
    return-void

    .line 43
    :cond_2
    move-object p0, v3

    .line 44
    move-object p1, v6

    .line 45
    goto :goto_0
.end method

.method public final K(Lxm;)V
    .locals 7

    .line 1
    new-instance v0, Lvs;

    .line 2
    .line 3
    invoke-direct {v0}, Lep;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lep;->f(Lvs;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lep;->k()Lep;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    :goto_0
    sget-object v0, Lbn;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v1, Lg8;->a:Lsun/misc/Unsafe;

    .line 19
    .line 20
    sget-wide v3, Lbn;->d:J

    .line 21
    .line 22
    move-object v2, p0

    .line 23
    move-object v5, p1

    .line 24
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eq p0, v5, :cond_1

    .line 36
    .line 37
    :goto_1
    return-void

    .line 38
    :cond_1
    move-object p0, v2

    .line 39
    move-object p1, v5

    .line 40
    goto :goto_0
.end method

.method public final L(Lxm;)V
    .locals 6

    .line 1
    :goto_0
    invoke-virtual {p0}, Lbn;->y()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    instance-of v0, v4, Lxm;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    if-eq v4, p1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    sget-object v5, Lvd;->s:Lch;

    .line 13
    .line 14
    :goto_1
    sget-object v0, Lbn;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 20
    .line 21
    sget-wide v2, Lbn;->d:J

    .line 22
    .line 23
    move-object v1, p0

    .line 24
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eq p0, v4, :cond_2

    .line 36
    .line 37
    move-object p0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move-object p0, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    instance-of p0, v4, Lyl;

    .line 42
    .line 43
    if-eqz p0, :cond_4

    .line 44
    .line 45
    check-cast v4, Lyl;

    .line 46
    .line 47
    invoke-interface {v4}, Lyl;->e()Lvs;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-eqz p0, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1}, Lep;->n()Lep;

    .line 54
    .line 55
    .line 56
    :cond_4
    :goto_2
    return-void
.end method

.method public final M(Ld9;)V
    .locals 3

    .line 1
    sget-object v0, Lbn;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Lbn;->c:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final N(Ljava/lang/Object;)I
    .locals 10

    .line 1
    instance-of v0, p1, Lch;

    .line 2
    .line 3
    sget-wide v6, Lbn;->d:J

    .line 4
    .line 5
    const/4 v8, 0x1

    .line 6
    sget-object v9, Lbn;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Lch;

    .line 12
    .line 13
    iget-boolean v0, v0, Lch;->a:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    sget-object v5, Lvd;->s:Lch;

    .line 19
    .line 20
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 24
    .line 25
    sget-wide v2, Lbn;->d:J

    .line 26
    .line 27
    move-object v1, p0

    .line 28
    move-object v4, p1

    .line 29
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    return v8

    .line 36
    :cond_2
    invoke-virtual {v0, p0, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eq v0, p1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    instance-of v0, p1, Lxl;

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    move-object v0, p1

    .line 48
    check-cast v0, Lxl;

    .line 49
    .line 50
    iget-object v5, v0, Lxl;->a:Lvs;

    .line 51
    .line 52
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 56
    .line 57
    sget-wide v2, Lbn;->d:J

    .line 58
    .line 59
    move-object v1, p0

    .line 60
    move-object v4, p1

    .line 61
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    return v8

    .line 68
    :cond_5
    invoke-virtual {v0, p0, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eq v0, p1, :cond_4

    .line 73
    .line 74
    :goto_0
    const/4 v0, -0x1

    .line 75
    return v0

    .line 76
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 77
    return v0
.end method

.method public final P(Lyl;Ljava/lang/Object;)Z
    .locals 8

    .line 1
    instance-of v0, p2, Lyl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lzl;

    .line 6
    .line 7
    move-object v1, p2

    .line 8
    check-cast v1, Lyl;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lzl;-><init>(Lyl;)V

    .line 11
    .line 12
    .line 13
    move-object v7, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v7, p2

    .line 16
    :goto_0
    sget-object v0, Lbn;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v2, Lg8;->a:Lsun/misc/Unsafe;

    .line 22
    .line 23
    sget-wide v4, Lbn;->d:J

    .line 24
    .line 25
    move-object v3, p0

    .line 26
    move-object v6, p1

    .line 27
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3, p2}, Lbn;->H(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v6, p2}, Lbn;->q(Lyl;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_1
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-eq p0, v6, :cond_2

    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return p0

    .line 49
    :cond_2
    move-object p0, v3

    .line 50
    move-object p1, v6

    .line 51
    goto :goto_0
.end method

.method public final Q(Lyl;Ljava/lang/Throwable;)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lbn;->w(Lyl;)Lvs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    new-instance v6, Lzm;

    .line 9
    .line 10
    invoke-direct {v6, v0, p2}, Lzm;-><init>(Lvs;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    sget-object v1, Lbn;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v1, Lg8;->a:Lsun/misc/Unsafe;

    .line 19
    .line 20
    sget-wide v3, Lbn;->d:J

    .line 21
    .line 22
    move-object v2, p0

    .line 23
    move-object v5, p1

    .line 24
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2, v0, p2}, Lbn;->G(Lvs;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_1
    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eq p0, v5, :cond_2

    .line 40
    .line 41
    :goto_1
    const/4 p0, 0x0

    .line 42
    return p0

    .line 43
    :cond_2
    move-object p0, v2

    .line 44
    move-object p1, v5

    .line 45
    goto :goto_0
.end method

.method public final R(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lyl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lvd;->m:Lo0;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p1, Lch;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    instance-of v0, p1, Lxm;

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    :cond_1
    instance-of v0, p1, Le9;

    .line 17
    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    instance-of v0, p2, Lpa;

    .line 21
    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    check-cast p1, Lyl;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lbn;->P(Lyl;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    return-object p2

    .line 33
    :cond_2
    sget-object p0, Lvd;->o:Lo0;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_3
    check-cast p1, Lyl;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lbn;->w(Lyl;)Lvs;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    sget-object p0, Lvd;->o:Lo0;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_4
    instance-of v1, p1, Lzm;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    move-object v1, p1

    .line 53
    check-cast v1, Lzm;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    move-object v1, v2

    .line 57
    :goto_0
    if-nez v1, :cond_6

    .line 58
    .line 59
    new-instance v1, Lzm;

    .line 60
    .line 61
    invoke-direct {v1, v0, v2}, Lzm;-><init>(Lvs;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :cond_6
    monitor-enter v1

    .line 65
    :try_start_0
    invoke-virtual {v1}, Lzm;->g()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_7

    .line 70
    .line 71
    sget-object p0, Lvd;->m:Lo0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    monitor-exit v1

    .line 74
    return-object p0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto/16 :goto_6

    .line 77
    .line 78
    :cond_7
    :try_start_1
    sget-object v3, Lzm;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 79
    .line 80
    const/4 v4, 0x1

    .line 81
    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    if-eq v1, p1, :cond_a

    .line 85
    .line 86
    sget-object v3, Lbn;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 87
    .line 88
    :cond_8
    invoke-virtual {v3, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_9

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_9
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    if-eq v5, p1, :cond_8

    .line 100
    .line 101
    sget-object p0, Lvd;->o:Lo0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    monitor-exit v1

    .line 104
    return-object p0

    .line 105
    :cond_a
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lzm;->f()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    instance-of v5, p2, Lpa;

    .line 110
    .line 111
    if-eqz v5, :cond_b

    .line 112
    .line 113
    move-object v5, p2

    .line 114
    check-cast v5, Lpa;

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_b
    move-object v5, v2

    .line 118
    :goto_2
    if-eqz v5, :cond_c

    .line 119
    .line 120
    iget-object v5, v5, Lpa;->a:Ljava/lang/Throwable;

    .line 121
    .line 122
    invoke-virtual {v1, v5}, Lzm;->b(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    :cond_c
    invoke-virtual {v1}, Lzm;->d()Ljava/lang/Throwable;

    .line 126
    .line 127
    .line 128
    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    if-nez v3, :cond_d

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_d
    move-object v5, v2

    .line 133
    :goto_3
    monitor-exit v1

    .line 134
    if-eqz v5, :cond_e

    .line 135
    .line 136
    invoke-virtual {p0, v0, v5}, Lbn;->G(Lvs;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    :cond_e
    instance-of v0, p1, Le9;

    .line 140
    .line 141
    if-eqz v0, :cond_f

    .line 142
    .line 143
    move-object v0, p1

    .line 144
    check-cast v0, Le9;

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_f
    move-object v0, v2

    .line 148
    :goto_4
    if-nez v0, :cond_10

    .line 149
    .line 150
    invoke-interface {p1}, Lyl;->e()Lvs;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    if-eqz p1, :cond_11

    .line 155
    .line 156
    invoke-static {p1}, Lbn;->F(Lep;)Le9;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    goto :goto_5

    .line 161
    :cond_10
    move-object v2, v0

    .line 162
    :cond_11
    :goto_5
    if-eqz v2, :cond_14

    .line 163
    .line 164
    :cond_12
    iget-object p1, v2, Le9;->h:Lbn;

    .line 165
    .line 166
    new-instance v0, Lym;

    .line 167
    .line 168
    invoke-direct {v0, p0, v1, v2, p2}, Lym;-><init>(Lbn;Lzm;Le9;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    const/4 v3, 0x0

    .line 172
    invoke-static {p1, v3, v0, v4}, Ld40;->v(Lsm;ZLxm;I)Lpf;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    sget-object v0, Lws;->a:Lws;

    .line 177
    .line 178
    if-eq p1, v0, :cond_13

    .line 179
    .line 180
    sget-object p0, Lvd;->n:Lo0;

    .line 181
    .line 182
    return-object p0

    .line 183
    :cond_13
    invoke-static {v2}, Lbn;->F(Lep;)Le9;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    if-nez v2, :cond_12

    .line 188
    .line 189
    :cond_14
    invoke-virtual {p0, v1, p2}, Lbn;->s(Lzm;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :goto_6
    monitor-exit v1

    .line 195
    throw p0
.end method

.method public a()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbn;->y()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lyl;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lyl;

    .line 10
    .line 11
    invoke-interface {p0}, Lyl;->a()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

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

.method public final b(Lxc;)Lwc;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lqg;->d:Lqg;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lnm;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public g(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ltm;

    .line 4
    .line 5
    invoke-virtual {p0}, Lbn;->o()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p1, v0, v1, p0}, Ltm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbn;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lbn;->m(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final getKey()Lxc;
    .locals 0

    .line 1
    sget-object p0, Lqg;->d:Lqg;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Lxc;)Lyc;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lqg;->d:Lqg;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lnm;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p0, Ldh;->a:Ldh;

    .line 13
    .line 14
    :cond_0
    return-object p0
.end method

.method public final i(Ljava/lang/Object;Ltk;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p2, p1, p0}, Ltk;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final j(Lyc;)Lyc;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lvd;->M(Lwc;Lyc;)Lyc;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public k(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbn;->k(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final m(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    sget-object v0, Lvd;->m:Lo0;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbn;->v()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lbn;->y()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lyl;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    instance-of v1, v0, Lzm;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    move-object v1, v0

    .line 24
    check-cast v1, Lzm;

    .line 25
    .line 26
    invoke-virtual {v1}, Lzm;->g()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v1, Lpa;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lbn;->r(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-direct {v1, v4, v2}, Lpa;-><init>(Ljava/lang/Throwable;Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Lbn;->R(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Lvd;->o:Lo0;

    .line 47
    .line 48
    if-eq v0, v1, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    sget-object v0, Lvd;->m:Lo0;

    .line 52
    .line 53
    :goto_1
    sget-object v1, Lvd;->n:Lo0;

    .line 54
    .line 55
    if-ne v0, v1, :cond_3

    .line 56
    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_3
    sget-object v1, Lvd;->m:Lo0;

    .line 60
    .line 61
    if-ne v0, v1, :cond_e

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    move-object v1, v0

    .line 65
    :cond_4
    invoke-virtual {p0}, Lbn;->y()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    instance-of v5, v4, Lzm;

    .line 70
    .line 71
    if-eqz v5, :cond_9

    .line 72
    .line 73
    monitor-enter v4

    .line 74
    :try_start_0
    move-object v5, v4

    .line 75
    check-cast v5, Lzm;

    .line 76
    .line 77
    invoke-virtual {v5}, Lzm;->c()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    sget-object v6, Lvd;->q:Lo0;

    .line 82
    .line 83
    if-ne v5, v6, :cond_5

    .line 84
    .line 85
    sget-object p1, Lvd;->p:Lo0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    monitor-exit v4

    .line 88
    :goto_2
    move-object v0, p1

    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    :try_start_1
    move-object v5, v4

    .line 94
    check-cast v5, Lzm;

    .line 95
    .line 96
    invoke-virtual {v5}, Lzm;->f()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v1, :cond_6

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lbn;->r(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :cond_6
    move-object p1, v4

    .line 107
    check-cast p1, Lzm;

    .line 108
    .line 109
    invoke-virtual {p1, v1}, Lzm;->b(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    move-object p1, v4

    .line 113
    check-cast p1, Lzm;

    .line 114
    .line 115
    invoke-virtual {p1}, Lzm;->d()Ljava/lang/Throwable;

    .line 116
    .line 117
    .line 118
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    if-nez v5, :cond_7

    .line 120
    .line 121
    move-object v0, p1

    .line 122
    :cond_7
    monitor-exit v4

    .line 123
    if-eqz v0, :cond_8

    .line 124
    .line 125
    check-cast v4, Lzm;

    .line 126
    .line 127
    iget-object p1, v4, Lzm;->a:Lvs;

    .line 128
    .line 129
    invoke-virtual {p0, p1, v0}, Lbn;->G(Lvs;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    :cond_8
    sget-object p1, Lvd;->m:Lo0;

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :goto_3
    monitor-exit v4

    .line 136
    throw p0

    .line 137
    :cond_9
    instance-of v5, v4, Lyl;

    .line 138
    .line 139
    if-eqz v5, :cond_d

    .line 140
    .line 141
    if-nez v1, :cond_a

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Lbn;->r(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    :cond_a
    move-object v5, v4

    .line 148
    check-cast v5, Lyl;

    .line 149
    .line 150
    invoke-interface {v5}, Lyl;->a()Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_b

    .line 155
    .line 156
    invoke-virtual {p0, v5, v1}, Lbn;->Q(Lyl;Ljava/lang/Throwable;)Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_4

    .line 161
    .line 162
    sget-object p1, Lvd;->m:Lo0;

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_b
    new-instance v5, Lpa;

    .line 166
    .line 167
    invoke-direct {v5, v1, v2}, Lpa;-><init>(Ljava/lang/Throwable;Z)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v4, v5}, Lbn;->R(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    sget-object v6, Lvd;->m:Lo0;

    .line 175
    .line 176
    if-eq v5, v6, :cond_c

    .line 177
    .line 178
    sget-object v4, Lvd;->o:Lo0;

    .line 179
    .line 180
    if-eq v5, v4, :cond_4

    .line 181
    .line 182
    move-object v0, v5

    .line 183
    goto :goto_4

    .line 184
    :cond_c
    const-string p0, "Cannot happen in "

    .line 185
    .line 186
    invoke-static {v4, p0}, Lg9;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return v2

    .line 190
    :cond_d
    sget-object p1, Lvd;->p:Lo0;

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_e
    :goto_4
    sget-object p1, Lvd;->m:Lo0;

    .line 194
    .line 195
    if-ne v0, p1, :cond_f

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_f
    sget-object p1, Lvd;->n:Lo0;

    .line 199
    .line 200
    if-ne v0, p1, :cond_10

    .line 201
    .line 202
    :goto_5
    return v3

    .line 203
    :cond_10
    sget-object p1, Lvd;->p:Lo0;

    .line 204
    .line 205
    if-ne v0, p1, :cond_11

    .line 206
    .line 207
    return v2

    .line 208
    :cond_11
    invoke-virtual {p0, v0}, Lbn;->k(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    return v3
.end method

.method public final n(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lbn;->D()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 9
    .line 10
    invoke-virtual {p0}, Lbn;->x()Ld9;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_4

    .line 15
    .line 16
    sget-object v1, Lws;->a:Lws;

    .line 17
    .line 18
    if-ne p0, v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-interface {p0, p1}, Ld9;->c(Ljava/lang/Throwable;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_3

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_4
    :goto_1
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Job was cancelled"

    .line 2
    .line 3
    return-object p0
.end method

.method public p(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lbn;->m(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lbn;->u()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final q(Lyl;Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lbn;->x()Ld9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lpf;->b()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lws;->a:Lws;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lbn;->M(Ld9;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    instance-of v0, p2, Lpa;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p2, Lpa;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object p2, v1

    .line 24
    :goto_0
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iget-object p2, p2, Lpa;->a:Ljava/lang/Throwable;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    move-object p2, v1

    .line 30
    :goto_1
    instance-of v0, p1, Lxm;

    .line 31
    .line 32
    const-string v2, " for "

    .line 33
    .line 34
    const-string v3, "Exception in completion handler "

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    :try_start_0
    move-object v0, p1

    .line 39
    check-cast v0, Lxm;

    .line 40
    .line 41
    invoke-interface {v0, p2}, Lmm;->d(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p2

    .line 46
    new-instance v0, Lra;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lbn;->A(Lra;)V

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_3
    invoke-interface {p1}, Lyl;->e()Lvs;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_7

    .line 78
    .line 79
    invoke-virtual {p1}, Lep;->j()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    check-cast v0, Lep;

    .line 87
    .line 88
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_6

    .line 93
    .line 94
    instance-of v4, v0, Lxm;

    .line 95
    .line 96
    if-eqz v4, :cond_5

    .line 97
    .line 98
    move-object v4, v0

    .line 99
    check-cast v4, Lxm;

    .line 100
    .line 101
    :try_start_1
    invoke-interface {v4, p2}, Lmm;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :catchall_1
    move-exception v5

    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    invoke-static {v1, v5}, Lnm;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    new-instance v1, Lra;

    .line 113
    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-direct {v1, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lep;->k()Lep;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    goto :goto_2

    .line 140
    :cond_6
    if-eqz v1, :cond_7

    .line 141
    .line 142
    invoke-virtual {p0, v1}, Lbn;->A(Lra;)V

    .line 143
    .line 144
    .line 145
    :cond_7
    :goto_4
    return-void
.end method

.method public final r(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 3

    .line 1
    instance-of p0, p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Throwable;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    check-cast p1, Lbn;

    .line 9
    .line 10
    invoke-virtual {p1}, Lbn;->y()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    instance-of v0, p0, Lzm;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    move-object v0, p0

    .line 20
    check-cast v0, Lzm;

    .line 21
    .line 22
    invoke-virtual {v0}, Lzm;->d()Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    instance-of v0, p0, Lpa;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    move-object v0, p0

    .line 32
    check-cast v0, Lpa;

    .line 33
    .line 34
    iget-object v0, v0, Lpa;->a:Ljava/lang/Throwable;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    instance-of v0, p0, Lyl;

    .line 38
    .line 39
    if-nez v0, :cond_5

    .line 40
    .line 41
    move-object v0, v1

    .line 42
    :goto_0
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    move-object v1, v0

    .line 47
    check-cast v1, Ljava/util/concurrent/CancellationException;

    .line 48
    .line 49
    :cond_3
    if-nez v1, :cond_4

    .line 50
    .line 51
    new-instance v1, Ltm;

    .line 52
    .line 53
    invoke-static {p0}, Lbn;->O(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string v2, "Parent job is "

    .line 58
    .line 59
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v1, p0, v0, p1}, Ltm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbn;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-object v1

    .line 67
    :cond_5
    const-string p1, "Cannot be cancelling child in this state: "

    .line 68
    .line 69
    invoke-static {p0, p1}, Lg9;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v1
.end method

.method public final s(Lzm;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Lpa;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p2

    .line 7
    check-cast v0, Lpa;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, v1

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, v0, Lpa;->a:Ljava/lang/Throwable;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object v0, v1

    .line 17
    :goto_1
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lzm;->f()Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lzm;->h(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    :try_start_1
    invoke-virtual {p1}, Lzm;->f()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_6

    .line 37
    .line 38
    new-instance v3, Ltm;

    .line 39
    .line 40
    invoke-virtual {p0}, Lbn;->o()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-direct {v3, v5, v1, p0}, Ltm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbn;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    move-object v1, v3

    .line 48
    goto :goto_3

    .line 49
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    move v5, v4

    .line 54
    :cond_3
    if-ge v5, v3, :cond_4

    .line 55
    .line 56
    :try_start_3
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    move-object v7, v6

    .line 63
    check-cast v7, Ljava/lang/Throwable;

    .line 64
    .line 65
    instance-of v7, v7, Ljava/util/concurrent/CancellationException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    .line 67
    if-nez v7, :cond_3

    .line 68
    .line 69
    move-object v1, v6

    .line 70
    goto :goto_2

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    move-object p0, v0

    .line 73
    goto :goto_5

    .line 74
    :cond_4
    :goto_2
    :try_start_4
    check-cast v1, Ljava/lang/Throwable;

    .line 75
    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 84
    .line 85
    :cond_6
    :goto_3
    const/4 v3, 0x1

    .line 86
    if-eqz v1, :cond_9

    .line 87
    .line 88
    :try_start_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-gt v5, v3, :cond_7

    .line 93
    .line 94
    goto :goto_6

    .line 95
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    new-instance v6, Ljava/util/IdentityHashMap;

    .line 100
    .line 101
    invoke-direct {v6, v5}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    move v7, v4

    .line 113
    :cond_8
    :goto_4
    if-ge v7, v6, :cond_9

    .line 114
    .line 115
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    add-int/lit8 v7, v7, 0x1

    .line 120
    .line 121
    check-cast v8, Ljava/lang/Throwable;

    .line 122
    .line 123
    if-eq v8, v1, :cond_8

    .line 124
    .line 125
    if-eq v8, v1, :cond_8

    .line 126
    .line 127
    instance-of v9, v8, Ljava/util/concurrent/CancellationException;

    .line 128
    .line 129
    if-nez v9, :cond_8

    .line 130
    .line 131
    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    if-eqz v9, :cond_8

    .line 136
    .line 137
    invoke-static {v1, v8}, Lnm;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    .line 139
    .line 140
    goto :goto_4

    .line 141
    :goto_5
    move-object v7, p1

    .line 142
    goto :goto_a

    .line 143
    :cond_9
    :goto_6
    monitor-exit p1

    .line 144
    if-nez v1, :cond_a

    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_a
    if-ne v1, v0, :cond_b

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_b
    new-instance p2, Lpa;

    .line 151
    .line 152
    invoke-direct {p2, v1, v4}, Lpa;-><init>(Ljava/lang/Throwable;Z)V

    .line 153
    .line 154
    .line 155
    :goto_7
    if-eqz v1, :cond_d

    .line 156
    .line 157
    invoke-virtual {p0, v1}, Lbn;->n(Ljava/lang/Throwable;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_c

    .line 162
    .line 163
    invoke-virtual {p0, v1}, Lbn;->z(Ljava/lang/Throwable;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_d

    .line 168
    .line 169
    :cond_c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    move-object v0, p2

    .line 173
    check-cast v0, Lpa;

    .line 174
    .line 175
    sget-object v1, Lpa;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 176
    .line 177
    invoke-virtual {v1, v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 178
    .line 179
    .line 180
    :cond_d
    invoke-virtual {p0, p2}, Lbn;->H(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    sget-object v0, Lbn;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 184
    .line 185
    instance-of v1, p2, Lyl;

    .line 186
    .line 187
    if-eqz v1, :cond_e

    .line 188
    .line 189
    new-instance v1, Lzl;

    .line 190
    .line 191
    move-object v2, p2

    .line 192
    check-cast v2, Lyl;

    .line 193
    .line 194
    invoke-direct {v1, v2}, Lzl;-><init>(Lyl;)V

    .line 195
    .line 196
    .line 197
    move-object v8, v1

    .line 198
    goto :goto_8

    .line 199
    :cond_e
    move-object v8, p2

    .line 200
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    sget-object v3, Lg8;->a:Lsun/misc/Unsafe;

    .line 204
    .line 205
    sget-wide v5, Lbn;->d:J

    .line 206
    .line 207
    move-object v4, p0

    .line 208
    move-object v7, p1

    .line 209
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    if-eqz p0, :cond_f

    .line 214
    .line 215
    goto :goto_9

    .line 216
    :cond_f
    invoke-virtual {v3, v4, v5, v6}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    if-eq p0, v7, :cond_10

    .line 221
    .line 222
    :goto_9
    invoke-virtual {v4, v7, p2}, Lbn;->q(Lyl;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    return-object p2

    .line 226
    :cond_10
    move-object p0, v4

    .line 227
    move-object p1, v7

    .line 228
    goto :goto_8

    .line 229
    :catchall_1
    move-exception v0

    .line 230
    move-object v7, p1

    .line 231
    move-object p0, v0

    .line 232
    :goto_a
    monitor-exit v7

    .line 233
    throw p0
.end method

.method public final t()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lbn;->y()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lzm;

    .line 6
    .line 7
    const-string v2, "Job is still new or active: "

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    check-cast v0, Lzm;

    .line 13
    .line 14
    invoke-virtual {v0}, Lzm;->d()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, " is cancelling"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    move-object v3, v0

    .line 39
    check-cast v3, Ljava/util/concurrent/CancellationException;

    .line 40
    .line 41
    :cond_0
    if-nez v3, :cond_1

    .line 42
    .line 43
    new-instance v2, Ltm;

    .line 44
    .line 45
    invoke-direct {v2, v1, v0, p0}, Ltm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbn;)V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_1
    return-object v3

    .line 50
    :cond_2
    invoke-static {p0, v2}, Lg9;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v3

    .line 54
    :cond_3
    instance-of v1, v0, Lyl;

    .line 55
    .line 56
    if-nez v1, :cond_7

    .line 57
    .line 58
    instance-of v1, v0, Lpa;

    .line 59
    .line 60
    if-eqz v1, :cond_6

    .line 61
    .line 62
    check-cast v0, Lpa;

    .line 63
    .line 64
    iget-object v0, v0, Lpa;->a:Ljava/lang/Throwable;

    .line 65
    .line 66
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    move-object v3, v0

    .line 71
    check-cast v3, Ljava/util/concurrent/CancellationException;

    .line 72
    .line 73
    :cond_4
    if-nez v3, :cond_5

    .line 74
    .line 75
    new-instance v1, Ltm;

    .line 76
    .line 77
    invoke-virtual {p0}, Lbn;->o()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-direct {v1, v2, v0, p0}, Ltm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbn;)V

    .line 82
    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_5
    return-object v3

    .line 86
    :cond_6
    new-instance v0, Ltm;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string v2, " has completed normally"

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-direct {v0, v1, v3, p0}, Ltm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbn;)V

    .line 103
    .line 104
    .line 105
    return-object v0

    .line 106
    :cond_7
    invoke-static {p0, v2}, Lg9;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x7b

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lbn;->y()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Lbn;->O(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x7d

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v1, 0x40

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Lvd;->s(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public u()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public v()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final w(Lyl;)Lvs;
    .locals 2

    .line 1
    invoke-interface {p1}, Lyl;->e()Lvs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    instance-of v0, p1, Lch;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p0, Lvs;

    .line 12
    .line 13
    invoke-direct {p0}, Lep;-><init>()V

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    instance-of v0, p1, Lxm;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p1, Lxm;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lbn;->K(Lxm;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    const-string p0, "State should have list: "

    .line 29
    .line 30
    invoke-static {p1, p0}, Lg9;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_2
    return-object v0
.end method

.method public final x()Ld9;
    .locals 3

    .line 1
    sget-object v0, Lbn;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Lbn;->c:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ld9;

    .line 15
    .line 16
    return-object p0
.end method

.method public final y()Ljava/lang/Object;
    .locals 3

    .line 1
    :goto_0
    sget-object v0, Lbn;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Lbn;->d:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v1, v0, Ls6;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    check-cast v0, Ls6;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ls6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0
.end method

.method public z(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
