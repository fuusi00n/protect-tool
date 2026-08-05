.class public final Ljf;
.super Llf;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Ljd;
.implements Lmc;

.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic i:J

.field private volatile synthetic _reusableCancellableContinuation$volatile:Ljava/lang/Object;

.field public final d:Lcd;

.field public final e:Lnc;

.field public f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljf;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Object;

    .line 4
    .line 5
    const-string v2, "_reusableCancellableContinuation$volatile"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Ljf;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    sget-object v1, Lg8;->a:Lsun/misc/Unsafe;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    sput-wide v0, Ljf;->i:J

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lcd;Lnc;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, v0}, Llf;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Ljf;->d:Lcd;

    .line 6
    .line 7
    iput-object p2, p0, Ljf;->e:Lnc;

    .line 8
    .line 9
    sget-object p1, Lnm;->c:Lo0;

    .line 10
    .line 11
    iput-object p1, p0, Ljf;->f:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object p1, p2, Lnc;->b:Lyc;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Ld40;->T(Lyc;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Ljf;->g:Ljava/lang/Object;

    .line 23
    .line 24
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 0

    .line 1
    instance-of p0, p1, Lqa;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    throw p0
.end method

.method public final b()Lmc;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c()Ljd;
    .locals 0

    .line 1
    iget-object p0, p0, Ljf;->e:Lnc;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final d()Lyc;
    .locals 0

    .line 1
    iget-object p0, p0, Ljf;->e:Lnc;

    .line 2
    .line 3
    iget-object p0, p0, Lnc;->b:Lyc;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ljf;->e:Lnc;

    .line 2
    .line 3
    iget-object v1, v0, Lnc;->b:Lyc;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lmy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    move-object v4, p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v4, Lpa;

    .line 18
    .line 19
    invoke-direct {v4, v2, v3}, Lpa;-><init>(Ljava/lang/Throwable;Z)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object v2, p0, Ljf;->d:Lcd;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcd;->e()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    iput-object v4, p0, Ljf;->f:Ljava/lang/Object;

    .line 31
    .line 32
    iput v3, p0, Llf;->c:I

    .line 33
    .line 34
    invoke-virtual {v2, v1, p0}, Lcd;->d(Lyc;Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-static {}, Lt20;->a()Lmh;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-wide v5, v1, Lmh;->c:J

    .line 43
    .line 44
    const-wide v7, 0x100000000L

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    cmp-long v2, v5, v7

    .line 50
    .line 51
    if-ltz v2, :cond_2

    .line 52
    .line 53
    iput-object v4, p0, Ljf;->f:Ljava/lang/Object;

    .line 54
    .line 55
    iput v3, p0, Llf;->c:I

    .line 56
    .line 57
    invoke-virtual {v1, p0}, Lmh;->k(Llf;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    const/4 v2, 0x1

    .line 62
    invoke-virtual {v1, v2}, Lmh;->l(Z)V

    .line 63
    .line 64
    .line 65
    :try_start_0
    iget-object v2, v0, Lnc;->b:Lyc;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Ljf;->g:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-static {v2, v3}, Ld40;->W(Lyc;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    invoke-virtual {v0, p1}, Lnc;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .line 78
    .line 79
    :try_start_2
    invoke-static {v2, v3}, Ld40;->L(Lyc;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-virtual {v1}, Lmh;->m()Z

    .line 83
    .line 84
    .line 85
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    if-nez p1, :cond_3

    .line 87
    .line 88
    :goto_1
    invoke-virtual {v1}, Lmh;->f()V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    goto :goto_2

    .line 94
    :catchall_1
    move-exception p1

    .line 95
    :try_start_3
    invoke-static {v2, v3}, Ld40;->L(Lyc;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :goto_2
    const/4 v0, 0x0

    .line 100
    :try_start_4
    invoke-virtual {p0, p1, v0}, Llf;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :goto_3
    return-void

    .line 105
    :catchall_2
    move-exception p0

    .line 106
    invoke-virtual {v1}, Lmh;->f()V

    .line 107
    .line 108
    .line 109
    throw p0
.end method

.method public final i()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ljf;->f:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lnm;->c:Lo0;

    .line 4
    .line 5
    iput-object v1, p0, Ljf;->f:Ljava/lang/Object;

    .line 6
    .line 7
    return-object v0
.end method

.method public final j()V
    .locals 3

    .line 1
    :cond_0
    sget-object v0, Ljf;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Ljf;->i:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lnm;->d:Lo0;

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    return-void
.end method

.method public final k()Lf8;
    .locals 3

    .line 1
    sget-object v0, Ljf;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Ljf;->i:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    instance-of v0, p0, Lf8;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast p0, Lf8;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public final l()Z
    .locals 3

    .line 1
    sget-object v0, Ljf;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Ljf;->i:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final m(Ljava/util/concurrent/CancellationException;)Z
    .locals 14

    .line 1
    :goto_0
    sget-object v0, Ljf;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Ljf;->i:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    sget-object v12, Lnm;->d:Lo0;

    .line 15
    .line 16
    invoke-static {v7, v12}, Lnm;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    :goto_1
    sget-object v8, Lg8;->a:Lsun/misc/Unsafe;

    .line 23
    .line 24
    sget-wide v10, Ljf;->i:J

    .line 25
    .line 26
    move-object v9, p0

    .line 27
    move-object v13, p1

    .line 28
    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    move-object v4, v9

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    invoke-virtual {v8, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eq p0, v12, :cond_1

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_1
    move-object p0, v4

    .line 44
    move-object p1, v13

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object v4, p0

    .line 47
    move-object v13, p1

    .line 48
    instance-of p0, v7, Ljava/lang/Throwable;

    .line 49
    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    :goto_2
    const/4 p0, 0x1

    .line 53
    return p0

    .line 54
    :cond_3
    sget-object v3, Lg8;->a:Lsun/misc/Unsafe;

    .line 55
    .line 56
    sget-wide v5, Ljf;->i:J

    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_4

    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    return p0

    .line 67
    :cond_4
    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    if-eq p0, v7, :cond_3

    .line 72
    .line 73
    :goto_3
    move-object p0, v4

    .line 74
    move-object p1, v13

    .line 75
    goto :goto_0
.end method

.method public final n(Lf8;)Ljava/lang/Throwable;
    .locals 14

    .line 1
    :goto_0
    sget-object v0, Ljf;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lg8;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Ljf;->i:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    sget-object v12, Lnm;->d:Lo0;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    if-ne v7, v12, :cond_2

    .line 18
    .line 19
    :goto_1
    sget-object v8, Lg8;->a:Lsun/misc/Unsafe;

    .line 20
    .line 21
    sget-wide v10, Ljf;->i:J

    .line 22
    .line 23
    move-object v9, p0

    .line 24
    move-object v13, p1

    .line 25
    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    move-object v4, v9

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    invoke-virtual {v8, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eq p0, v12, :cond_1

    .line 38
    .line 39
    move-object p0, v4

    .line 40
    move-object p1, v13

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object p0, v4

    .line 43
    move-object p1, v13

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object v4, p0

    .line 46
    instance-of p0, v7, Ljava/lang/Throwable;

    .line 47
    .line 48
    if-eqz p0, :cond_5

    .line 49
    .line 50
    :goto_2
    sget-object v3, Lg8;->a:Lsun/misc/Unsafe;

    .line 51
    .line 52
    sget-wide v5, Ljf;->i:J

    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_3

    .line 60
    .line 61
    check-cast v7, Ljava/lang/Throwable;

    .line 62
    .line 63
    return-object v7

    .line 64
    :cond_3
    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-ne p0, v7, :cond_4

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    const-string p0, "Failed requirement."

    .line 72
    .line 73
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_5
    const-string p0, "Inconsistent state "

    .line 78
    .line 79
    invoke-static {v7, p0}, Lg9;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DispatchedContinuation["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ljf;->d:Lcd;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Ljf;->e:Lnc;

    .line 19
    .line 20
    invoke-static {p0}, Lvd;->X(Lmc;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 p0, 0x5d

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
