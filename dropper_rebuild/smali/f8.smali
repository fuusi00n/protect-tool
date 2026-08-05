.class public final Lf8;
.super Llf;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Ljd;
.implements Lmc;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic i:J

.field public static final synthetic j:J

.field private volatile synthetic _decisionAndIndex$volatile:I

.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field public final d:Lmc;

.field public final e:Lyc;

.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "_decisionAndIndex$volatile"

    .line 2
    .line 3
    const-class v1, Lf8;

    .line 4
    .line 5
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lf8;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    const-class v0, Ljava/lang/Object;

    .line 12
    .line 13
    const-string v2, "_state$volatile"

    .line 14
    .line 15
    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sput-object v3, Lf8;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    sget-object v3, Lg8;->a:Lsun/misc/Unsafe;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    sput-wide v4, Lf8;->j:J

    .line 32
    .line 33
    const-string v2, "_parentHandle$volatile"

    .line 34
    .line 35
    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lf8;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    sput-wide v0, Lf8;->i:J

    .line 50
    .line 51
    return-void
.end method

.method public constructor <init>(ILmc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Llf;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lf8;->d:Lmc;

    .line 5
    .line 6
    invoke-interface {p2}, Lmc;->d()Lyc;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lf8;->e:Lyc;

    .line 11
    .line 12
    const p1, 0x1fffffff

    .line 13
    .line 14
    .line 15
    iput p1, p0, Lf8;->_decisionAndIndex$volatile:I

    .line 16
    .line 17
    sget-object p1, Lq1;->a:Lq1;

    .line 18
    .line 19
    iput-object p1, p0, Lf8;->_state$volatile:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ", already has "

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 9

    .line 1
    :goto_0
    sget-object p1, Lf8;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p1, Lg8;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v0, Lf8;->j:J

    .line 9
    .line 10
    invoke-virtual {p1, p0, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    instance-of p1, v6, Lxs;

    .line 15
    .line 16
    if-nez p1, :cond_9

    .line 17
    .line 18
    instance-of p1, v6, Lpa;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    instance-of p1, v6, Lna;

    .line 25
    .line 26
    if-eqz p1, :cond_5

    .line 27
    .line 28
    move-object p1, v6

    .line 29
    check-cast p1, Lna;

    .line 30
    .line 31
    iget-object v2, p1, Lna;->e:Ljava/lang/Throwable;

    .line 32
    .line 33
    if-nez v2, :cond_4

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/16 v3, 0xf

    .line 37
    .line 38
    invoke-static {p1, v2, p2, v3}, Lna;->a(Lna;Lc8;Ljava/util/concurrent/CancellationException;I)Lna;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    :goto_1
    sget-object v2, Lg8;->a:Lsun/misc/Unsafe;

    .line 43
    .line 44
    sget-wide v4, Lf8;->j:J

    .line 45
    .line 46
    move-object v3, p0

    .line 47
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    move-object v8, v3

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    iget-object p0, p1, Lna;->b:Lc8;

    .line 55
    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    invoke-virtual {v8, p0, p2}, Lf8;->j(Lc8;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object p0, p1, Lna;->c:Lpk;

    .line 62
    .line 63
    if-eqz p0, :cond_6

    .line 64
    .line 65
    invoke-virtual {v8, p0, p2}, Lf8;->k(Lpk;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-virtual {v2, v8, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-eq p0, v6, :cond_3

    .line 74
    .line 75
    move-object p0, p2

    .line 76
    move-object v3, v8

    .line 77
    goto :goto_4

    .line 78
    :cond_3
    move-object p0, v8

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const-string p0, "Must be called at most once"

    .line 81
    .line 82
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_5
    move-object v8, p0

    .line 87
    new-instance v2, Lna;

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    const/16 v7, 0xe

    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    move-object v3, v6

    .line 94
    move-object v6, p2

    .line 95
    invoke-direct/range {v2 .. v7}, Lna;-><init>(Ljava/lang/Object;Lc8;Lpk;Ljava/util/concurrent/CancellationException;I)V

    .line 96
    .line 97
    .line 98
    move-object p0, v6

    .line 99
    move-object v6, v3

    .line 100
    :goto_2
    move-object v7, v2

    .line 101
    sget-object v2, Lg8;->a:Lsun/misc/Unsafe;

    .line 102
    .line 103
    sget-wide v4, Lf8;->j:J

    .line 104
    .line 105
    move-object v3, v8

    .line 106
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    move-object p2, v2

    .line 111
    move-object v2, v7

    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    :cond_6
    :goto_3
    return-void

    .line 115
    :cond_7
    invoke-virtual {p2, v3, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eq p1, v6, :cond_8

    .line 120
    .line 121
    :goto_4
    move-object p2, p0

    .line 122
    move-object p0, v3

    .line 123
    goto :goto_0

    .line 124
    :cond_8
    move-object v8, v3

    .line 125
    goto :goto_2

    .line 126
    :cond_9
    const-string p0, "Not completed"

    .line 127
    .line 128
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final b()Lmc;
    .locals 0

    .line 1
    iget-object p0, p0, Lf8;->d:Lmc;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Ljd;
    .locals 1

    .line 1
    iget-object p0, p0, Lf8;->d:Lmc;

    .line 2
    .line 3
    instance-of v0, p0, Ljd;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Ljd;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final d()Lyc;
    .locals 0

    .line 1
    iget-object p0, p0, Lf8;->e:Lyc;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Llf;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lmy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lpa;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v0, v1}, Lpa;-><init>(Ljava/lang/Throwable;Z)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget v0, p0, Llf;->c:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lf8;->x(Ljava/lang/Object;ILpk;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    instance-of p0, p1, Lna;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lna;

    .line 6
    .line 7
    iget-object p0, p1, Lna;->a:Ljava/lang/Object;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    return-object p1
.end method

.method public final i()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf8;->q()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final j(Lc8;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    iget v0, p1, Lc8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lc8;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lnh;

    .line 9
    .line 10
    invoke-virtual {p1}, Loh;->b()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    iget-object p1, p1, Lc8;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lml;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lml;->g(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    new-instance p2, Lra;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "Exception in invokeOnCancellation handler for "

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lf8;->e:Lyc;

    .line 43
    .line 44
    invoke-static {p0, p2}, Lvd;->x(Lyc;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Lpk;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lpk;->g(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catchall_0
    move-exception p1

    .line 6
    new-instance p2, Lra;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Exception in resume onCancellation handler for "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lf8;->e:Lyc;

    .line 26
    .line 27
    invoke-static {p0, p2}, Lvd;->x(Lyc;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final l(Liz;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lf8;->e:Lyc;

    .line 2
    .line 3
    sget-object v0, Lf8;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x1fffffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v0, v1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p1, v0, p2}, Liz;->a(ILyc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    new-instance v0, Lra;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Exception in invokeOnCancellation handler for "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p2, v0}, Lvd;->x(Lyc;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    const-string p0, "The index for Segment.onCancellation(..) is broken"

    .line 44
    .line 45
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final m(Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    :goto_0
    sget-object v0, Lf8;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Lf8;->j:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    instance-of v0, v7, Lxs;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v8, Lj8;

    .line 20
    .line 21
    instance-of v0, v7, Lc8;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    instance-of v0, v7, Liz;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 33
    :goto_2
    invoke-direct {v8, p0, p1, v0}, Lj8;-><init>(Lf8;Ljava/lang/Throwable;Z)V

    .line 34
    .line 35
    .line 36
    :goto_3
    sget-object v3, Lg8;->a:Lsun/misc/Unsafe;

    .line 37
    .line 38
    sget-wide v5, Lf8;->j:J

    .line 39
    .line 40
    move-object v4, p0

    .line 41
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_6

    .line 46
    .line 47
    move-object p0, v7

    .line 48
    check-cast p0, Lxs;

    .line 49
    .line 50
    instance-of v0, p0, Lc8;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    check-cast v7, Lc8;

    .line 55
    .line 56
    invoke-virtual {v4, v7, p1}, Lf8;->j(Lc8;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_3
    instance-of p0, p0, Liz;

    .line 61
    .line 62
    if-eqz p0, :cond_4

    .line 63
    .line 64
    check-cast v7, Liz;

    .line 65
    .line 66
    invoke-virtual {v4, v7, p1}, Lf8;->l(Liz;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_4
    invoke-virtual {v4}, Lf8;->u()Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-nez p0, :cond_5

    .line 74
    .line 75
    invoke-virtual {v4}, Lf8;->n()V

    .line 76
    .line 77
    .line 78
    :cond_5
    iget p0, v4, Llf;->c:I

    .line 79
    .line 80
    invoke-virtual {v4, p0}, Lf8;->o(I)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_6
    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-eq p0, v7, :cond_7

    .line 89
    .line 90
    move-object p0, v4

    .line 91
    goto :goto_0

    .line 92
    :cond_7
    move-object p0, v4

    .line 93
    goto :goto_3
.end method

.method public final n()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf8;->p()Lpf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {v0}, Lpf;->b()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lf8;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 17
    .line 18
    sget-wide v1, Lf8;->i:J

    .line 19
    .line 20
    sget-object v3, Lws;->a:Lws;

    .line 21
    .line 22
    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final o(I)V
    .locals 6

    .line 1
    :cond_0
    sget-object v0, Lf8;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    shr-int/lit8 v2, v1, 0x1d

    .line 8
    .line 9
    if-eqz v2, :cond_b

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne v2, v0, :cond_a

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    const/4 v2, 0x0

    .line 16
    if-ne p1, v1, :cond_1

    .line 17
    .line 18
    move v1, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v1, v2

    .line 21
    :goto_0
    iget-object v3, p0, Lf8;->d:Lmc;

    .line 22
    .line 23
    if-nez v1, :cond_9

    .line 24
    .line 25
    instance-of v4, v3, Ljf;

    .line 26
    .line 27
    if-eqz v4, :cond_9

    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    if-eq p1, v0, :cond_3

    .line 31
    .line 32
    if-ne p1, v4, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move p1, v2

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    :goto_1
    move p1, v0

    .line 38
    :goto_2
    iget v5, p0, Llf;->c:I

    .line 39
    .line 40
    if-eq v5, v0, :cond_4

    .line 41
    .line 42
    if-ne v5, v4, :cond_5

    .line 43
    .line 44
    :cond_4
    move v2, v0

    .line 45
    :cond_5
    if-ne p1, v2, :cond_9

    .line 46
    .line 47
    move-object p1, v3

    .line 48
    check-cast p1, Ljf;

    .line 49
    .line 50
    iget-object v1, p1, Ljf;->d:Lcd;

    .line 51
    .line 52
    iget-object p1, p1, Ljf;->e:Lnc;

    .line 53
    .line 54
    iget-object p1, p1, Lnc;->b:Lyc;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcd;->e()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_6

    .line 64
    .line 65
    invoke-virtual {v1, p1, p0}, Lcd;->d(Lyc;Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_6
    invoke-static {}, Lt20;->a()Lmh;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-wide v1, p1, Lmh;->c:J

    .line 74
    .line 75
    const-wide v4, 0x100000000L

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    cmp-long v1, v1, v4

    .line 81
    .line 82
    if-ltz v1, :cond_7

    .line 83
    .line 84
    invoke-virtual {p1, p0}, Lmh;->k(Llf;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_7
    invoke-virtual {p1, v0}, Lmh;->l(Z)V

    .line 89
    .line 90
    .line 91
    :try_start_0
    invoke-static {p0, v3, v0}, Lvd;->Q(Lf8;Lmc;Z)V

    .line 92
    .line 93
    .line 94
    :cond_8
    invoke-virtual {p1}, Lmh;->m()Z

    .line 95
    .line 96
    .line 97
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-nez v0, :cond_8

    .line 99
    .line 100
    :goto_3
    invoke-virtual {p1}, Lmh;->f()V

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    const/4 v1, 0x0

    .line 106
    :try_start_1
    invoke-virtual {p0, v0, v1}, Llf;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :catchall_1
    move-exception p0

    .line 111
    invoke-virtual {p1}, Lmh;->f()V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :cond_9
    invoke-static {p0, v3, v1}, Lvd;->Q(Lf8;Lmc;Z)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_a
    const-string p0, "Already resumed"

    .line 120
    .line 121
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_b
    const v2, 0x1fffffff

    .line 126
    .line 127
    .line 128
    and-int/2addr v2, v1

    .line 129
    const/high16 v3, 0x40000000

    .line 130
    .line 131
    add-int/2addr v3, v2

    .line 132
    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    .line 138
    :goto_4
    return-void
.end method

.method public final p()Lpf;
    .locals 3

    .line 1
    sget-object v0, Lf8;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Lf8;->i:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lpf;

    .line 15
    .line 16
    return-object p0
.end method

.method public final q()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lf8;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Lf8;->j:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final r()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf8;->s()Lpf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lf8;->q()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    instance-of v1, v1, Lxs;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lpf;->b()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lf8;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 25
    .line 26
    sget-wide v1, Lf8;->i:J

    .line 27
    .line 28
    sget-object v3, Lws;->a:Lws;

    .line 29
    .line 30
    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public final s()Lpf;
    .locals 10

    .line 1
    iget-object v0, p0, Lf8;->e:Lyc;

    .line 2
    .line 3
    sget-object v1, Lqg;->d:Lqg;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lyc;->b(Lxc;)Lwc;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lsm;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v1, Lc9;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lc9;-><init>(Lf8;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-static {v0, v3, v1, v2}, Ld40;->v(Lsm;ZLxm;I)Lpf;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    :goto_0
    sget-object v0, Lf8;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-object v4, Lg8;->a:Lsun/misc/Unsafe;

    .line 32
    .line 33
    sget-wide v6, Lf8;->i:J

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    move-object v5, p0

    .line 37
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v4, v5, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    :goto_1
    return-object v9

    .line 51
    :cond_2
    move-object p0, v5

    .line 52
    goto :goto_0
.end method

.method public final t(Lxs;)V
    .locals 9

    .line 1
    :goto_0
    sget-object v0, Lf8;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Lf8;->j:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    instance-of v0, v7, Lq1;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    :goto_1
    sget-object v3, Lg8;->a:Lsun/misc/Unsafe;

    .line 19
    .line 20
    sget-wide v5, Lf8;->j:J

    .line 21
    .line 22
    move-object v4, p0

    .line 23
    move-object v8, p1

    .line 24
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eq p0, v7, :cond_1

    .line 37
    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_1
    move-object p0, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-object v4, p0

    .line 43
    instance-of p0, v7, Lc8;

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    move p0, v0

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    instance-of p0, v7, Liz;

    .line 51
    .line 52
    :goto_2
    const/4 v3, 0x0

    .line 53
    if-nez p0, :cond_11

    .line 54
    .line 55
    instance-of p0, v7, Lpa;

    .line 56
    .line 57
    if-eqz p0, :cond_6

    .line 58
    .line 59
    move-object p0, v7

    .line 60
    check-cast p0, Lpa;

    .line 61
    .line 62
    sget-object v1, Lpa;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    instance-of v0, v7, Lj8;

    .line 72
    .line 73
    if-eqz v0, :cond_e

    .line 74
    .line 75
    iget-object p0, p0, Lpa;->a:Ljava/lang/Throwable;

    .line 76
    .line 77
    instance-of v0, p1, Lc8;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    check-cast p1, Lc8;

    .line 82
    .line 83
    invoke-virtual {v4, p1, p0}, Lf8;->j(Lc8;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    check-cast p1, Liz;

    .line 91
    .line 92
    invoke-virtual {v4, p1, p0}, Lf8;->l(Liz;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_5
    invoke-static {p1, v7}, Lf8;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    throw v3

    .line 100
    :cond_6
    instance-of p0, v7, Lna;

    .line 101
    .line 102
    if-eqz p0, :cond_c

    .line 103
    .line 104
    move-object p0, v7

    .line 105
    check-cast p0, Lna;

    .line 106
    .line 107
    iget-object v0, p0, Lna;->b:Lc8;

    .line 108
    .line 109
    if-nez v0, :cond_b

    .line 110
    .line 111
    instance-of v0, p1, Liz;

    .line 112
    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    return-void

    .line 116
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    move-object v0, p1

    .line 120
    check-cast v0, Lc8;

    .line 121
    .line 122
    iget-object v5, p0, Lna;->e:Ljava/lang/Throwable;

    .line 123
    .line 124
    if-eqz v5, :cond_8

    .line 125
    .line 126
    invoke-virtual {v4, v0, v5}, Lf8;->j(Lc8;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_8
    const/16 v5, 0x1d

    .line 131
    .line 132
    invoke-static {p0, v0, v3, v5}, Lna;->a(Lna;Lc8;Ljava/util/concurrent/CancellationException;I)Lna;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    :cond_9
    sget-object v3, Lg8;->a:Lsun/misc/Unsafe;

    .line 137
    .line 138
    sget-wide v5, Lf8;->j:J

    .line 139
    .line 140
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    move-object v0, v4

    .line 145
    if-eqz p0, :cond_a

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_a
    invoke-virtual {v3, v0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    move-object v4, v0

    .line 153
    if-eq p0, v7, :cond_9

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_b
    invoke-static {p1, v7}, Lf8;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    throw v3

    .line 160
    :cond_c
    move-object v0, v4

    .line 161
    instance-of p0, p1, Liz;

    .line 162
    .line 163
    if-eqz p0, :cond_d

    .line 164
    .line 165
    return-void

    .line 166
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-object v5, p1

    .line 170
    check-cast v5, Lc8;

    .line 171
    .line 172
    new-instance v3, Lna;

    .line 173
    .line 174
    move-object v4, v7

    .line 175
    const/4 v7, 0x0

    .line 176
    const/16 v8, 0x1c

    .line 177
    .line 178
    const/4 v6, 0x0

    .line 179
    invoke-direct/range {v3 .. v8}, Lna;-><init>(Ljava/lang/Object;Lc8;Lpk;Ljava/util/concurrent/CancellationException;I)V

    .line 180
    .line 181
    .line 182
    move-object v7, v4

    .line 183
    move-object v8, v3

    .line 184
    :goto_3
    sget-object v3, Lg8;->a:Lsun/misc/Unsafe;

    .line 185
    .line 186
    sget-wide v5, Lf8;->j:J

    .line 187
    .line 188
    move-object v4, v0

    .line 189
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    if-eqz p0, :cond_f

    .line 194
    .line 195
    :cond_e
    :goto_4
    return-void

    .line 196
    :cond_f
    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    if-eq p0, v7, :cond_10

    .line 201
    .line 202
    :goto_5
    move-object p0, v4

    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_10
    move-object v0, v4

    .line 206
    goto :goto_3

    .line 207
    :cond_11
    invoke-static {p1, v7}, Lf8;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    throw v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CancellableContinuation("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lf8;->d:Lmc;

    .line 9
    .line 10
    invoke-static {v1}, Lvd;->X(Lmc;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "){"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lf8;->q()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    instance-of v2, v1, Lxs;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const-string v1, "Active"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    instance-of v1, v1, Lj8;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const-string v1, "Cancelled"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string v1, "Completed"

    .line 41
    .line 42
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, "}@"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lvd;->s(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public final u()Z
    .locals 2

    .line 1
    iget v0, p0, Llf;->c:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lf8;->d:Lmc;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    check-cast p0, Ljf;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljf;->l()Z

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

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf8;->d:Lmc;

    .line 2
    .line 3
    instance-of v1, v0, Ljf;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljf;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljf;->n(Lf8;)Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Lf8;->n()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lf8;->m(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_1
    return-void
.end method

.method public final x(Ljava/lang/Object;ILpk;)V
    .locals 10

    .line 1
    :goto_0
    sget-object v0, Lf8;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v8, Lf8;->j:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v8, v9}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v2, v0, Lxs;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v2, :cond_8

    .line 18
    .line 19
    move-object v2, v0

    .line 20
    check-cast v2, Lxs;

    .line 21
    .line 22
    instance-of v5, p1, Lpa;

    .line 23
    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    :cond_0
    :goto_1
    move-object v5, p1

    .line 27
    goto :goto_3

    .line 28
    :cond_1
    if-eq p2, v4, :cond_2

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    if-ne p2, v4, :cond_0

    .line 32
    .line 33
    :cond_2
    if-nez p3, :cond_3

    .line 34
    .line 35
    instance-of v4, v2, Lc8;

    .line 36
    .line 37
    if-nez v4, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    new-instance v4, Lna;

    .line 41
    .line 42
    instance-of v5, v2, Lc8;

    .line 43
    .line 44
    if-eqz v5, :cond_4

    .line 45
    .line 46
    check-cast v2, Lc8;

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_4
    const/4 v2, 0x0

    .line 50
    :goto_2
    const/4 v6, 0x0

    .line 51
    const/16 v7, 0x10

    .line 52
    .line 53
    move-object v3, v4

    .line 54
    move-object v4, v2

    .line 55
    move-object v2, v3

    .line 56
    move-object v3, p1

    .line 57
    move-object v5, p3

    .line 58
    invoke-direct/range {v2 .. v7}, Lna;-><init>(Ljava/lang/Object;Lc8;Lpk;Ljava/util/concurrent/CancellationException;I)V

    .line 59
    .line 60
    .line 61
    move-object v5, v2

    .line 62
    :cond_5
    :goto_3
    move-object v4, v0

    .line 63
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 64
    .line 65
    sget-wide v2, Lf8;->j:J

    .line 66
    .line 67
    move-object v1, p0

    .line 68
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    move-object v3, v0

    .line 73
    move-object v0, v4

    .line 74
    if-eqz v2, :cond_7

    .line 75
    .line 76
    invoke-virtual {p0}, Lf8;->u()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0}, Lf8;->n()V

    .line 83
    .line 84
    .line 85
    :cond_6
    invoke-virtual {p0, p2}, Lf8;->o(I)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_7
    invoke-virtual {v3, p0, v8, v9}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    if-eq v2, v0, :cond_5

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_8
    instance-of v2, v0, Lj8;

    .line 97
    .line 98
    if-eqz v2, :cond_a

    .line 99
    .line 100
    check-cast v0, Lj8;

    .line 101
    .line 102
    sget-object v2, Lj8;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    invoke-virtual {v2, v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_a

    .line 110
    .line 111
    if-eqz p3, :cond_9

    .line 112
    .line 113
    iget-object v0, v0, Lpa;->a:Ljava/lang/Throwable;

    .line 114
    .line 115
    invoke-virtual {p0, p3, v0}, Lf8;->k(Lpk;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    :cond_9
    return-void

    .line 119
    :cond_a
    const-string v0, "Already resumed, but proposed with update "

    .line 120
    .line 121
    invoke-static {p1, v0}, Lg9;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public final y(Lcd;)V
    .locals 4

    .line 1
    sget-object v0, Lqg;->j:Lqg;

    .line 2
    .line 3
    iget-object v1, p0, Lf8;->d:Lmc;

    .line 4
    .line 5
    instance-of v2, v1, Ljf;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    check-cast v1, Ljf;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v3

    .line 14
    :goto_0
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v1, Ljf;->d:Lcd;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v1, v3

    .line 20
    :goto_1
    if-ne v1, p1, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x4

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    iget p1, p0, Llf;->c:I

    .line 25
    .line 26
    :goto_2
    invoke-virtual {p0, v0, p1, v3}, Lf8;->x(Ljava/lang/Object;ILpk;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
