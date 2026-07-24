.class public final Lgd;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# static fields
.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final k:Lo0;


# instance fields
.field private volatile synthetic _isTerminated$volatile:I

.field public final a:I

.field public final b:I

.field public final c:J

.field private volatile synthetic controlState$volatile:J

.field public final d:Ljava/lang/String;

.field public final e:Lhl;

.field public final f:Lhl;

.field public final g:Lyx;

.field private volatile synthetic parkedWorkersStack$volatile:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "parkedWorkersStack$volatile"

    .line 2
    .line 3
    const-class v1, Lgd;

    .line 4
    .line 5
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lgd;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 10
    .line 11
    const-string v0, "controlState$volatile"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lgd;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 18
    .line 19
    const-string v0, "_isTerminated$volatile"

    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lgd;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 26
    .line 27
    new-instance v0, Lo0;

    .line 28
    .line 29
    const-string v1, "NOT_IN_STACK"

    .line 30
    .line 31
    const/16 v2, 0x19

    .line 32
    .line 33
    invoke-direct {v0, v2, v1}, Lo0;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lgd;->k:Lo0;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lgd;->a:I

    .line 5
    .line 6
    iput p2, p0, Lgd;->b:I

    .line 7
    .line 8
    iput-wide p3, p0, Lgd;->c:J

    .line 9
    .line 10
    iput-object p5, p0, Lgd;->d:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p5, 0x1

    .line 13
    if-lt p1, p5, :cond_3

    .line 14
    .line 15
    const-string p5, "Max pool size "

    .line 16
    .line 17
    if-lt p2, p1, :cond_2

    .line 18
    .line 19
    const v0, 0x1ffffe

    .line 20
    .line 21
    .line 22
    if-gt p2, v0, :cond_1

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    cmp-long p2, p3, v0

    .line 27
    .line 28
    if-lez p2, :cond_0

    .line 29
    .line 30
    new-instance p2, Lhl;

    .line 31
    .line 32
    invoke-direct {p2}, Lfp;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lgd;->e:Lhl;

    .line 36
    .line 37
    new-instance p2, Lhl;

    .line 38
    .line 39
    invoke-direct {p2}, Lfp;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lgd;->f:Lhl;

    .line 43
    .line 44
    new-instance p2, Lyx;

    .line 45
    .line 46
    add-int/lit8 p3, p1, 0x1

    .line 47
    .line 48
    mul-int/lit8 p3, p3, 0x2

    .line 49
    .line 50
    invoke-direct {p2, p3}, Lyx;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lgd;->g:Lyx;

    .line 54
    .line 55
    int-to-long p1, p1

    .line 56
    const/16 p3, 0x2a

    .line 57
    .line 58
    shl-long/2addr p1, p3

    .line 59
    iput-wide p1, p0, Lgd;->controlState$volatile:J

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lgd;->_isTerminated$volatile:I

    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string p1, "Idle worker keep alive time "

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, " must be positive"

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p0, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, " should not exceed maximal supported number of threads 2097150"

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_2
    const-string p0, " should be greater than or equals to core pool size "

    .line 122
    .line 123
    invoke-static {p5, p2, p0, p1}, Lk00;->d(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string p2, "Core pool size "

    .line 140
    .line 141
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string p1, " should be at least 1"

    .line 148
    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1
.end method

.method public static synthetic c(Lgd;Ljava/lang/Runnable;I)V
    .locals 1

    .line 1
    sget-object v0, Lb20;->g:Lz10;

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x4

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p2, 0x1

    .line 10
    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lgd;->b(Ljava/lang/Runnable;Lz10;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 11

    .line 1
    iget-object v0, p0, Lgd;->g:Lyx;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lgd;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v3

    .line 17
    :goto_0
    if-eqz v1, :cond_1

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    const/4 p0, -0x1

    .line 21
    return p0

    .line 22
    :cond_1
    :try_start_1
    sget-object v1, Lgd;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    const-wide/32 v6, 0x1fffff

    .line 29
    .line 30
    .line 31
    and-long v8, v4, v6

    .line 32
    .line 33
    long-to-int v8, v8

    .line 34
    const-wide v9, 0x3ffffe00000L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    and-long/2addr v4, v9

    .line 40
    const/16 v9, 0x15

    .line 41
    .line 42
    shr-long/2addr v4, v9

    .line 43
    long-to-int v4, v4

    .line 44
    sub-int v4, v8, v4

    .line 45
    .line 46
    if-gez v4, :cond_2

    .line 47
    .line 48
    move v4, v3

    .line 49
    :cond_2
    iget v5, p0, Lgd;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    if-lt v4, v5, :cond_3

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return v3

    .line 55
    :cond_3
    :try_start_2
    iget v5, p0, Lgd;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    if-lt v8, v5, :cond_4

    .line 58
    .line 59
    monitor-exit v0

    .line 60
    return v3

    .line 61
    :cond_4
    :try_start_3
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v8

    .line 65
    and-long/2addr v8, v6

    .line 66
    long-to-int v3, v8

    .line 67
    add-int/2addr v3, v2

    .line 68
    if-lez v3, :cond_6

    .line 69
    .line 70
    iget-object v5, p0, Lgd;->g:Lyx;

    .line 71
    .line 72
    invoke-virtual {v5, v3}, Lyx;->b(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    if-nez v5, :cond_6

    .line 77
    .line 78
    new-instance v5, Led;

    .line 79
    .line 80
    invoke-direct {v5, p0, v3}, Led;-><init>(Lgd;I)V

    .line 81
    .line 82
    .line 83
    iget-object v8, p0, Lgd;->g:Lyx;

    .line 84
    .line 85
    invoke-virtual {v8, v3, v5}, Lyx;->c(ILed;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    and-long/2addr v6, v8

    .line 93
    long-to-int p0, v6

    .line 94
    if-ne v3, p0, :cond_5

    .line 95
    .line 96
    add-int/2addr v4, v2

    .line 97
    monitor-exit v0

    .line 98
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 99
    .line 100
    .line 101
    return v4

    .line 102
    :cond_5
    :try_start_4
    const-string p0, "Failed requirement."

    .line 103
    .line 104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v1

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    goto :goto_1

    .line 112
    :cond_6
    const-string p0, "Failed requirement."

    .line 113
    .line 114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :goto_1
    monitor-exit v0

    .line 121
    throw p0
.end method

.method public final b(Ljava/lang/Runnable;Lz10;Z)V
    .locals 8

    .line 1
    sget-object v0, Lb20;->f:Lqg;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    instance-of v2, p1, Ly10;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast p1, Ly10;

    .line 15
    .line 16
    iput-wide v0, p1, Ly10;->a:J

    .line 17
    .line 18
    iput-object p2, p1, Ly10;->b:Lz10;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, La20;

    .line 22
    .line 23
    invoke-direct {v2, p1, v0, v1, p2}, La20;-><init>(Ljava/lang/Runnable;JLz10;)V

    .line 24
    .line 25
    .line 26
    move-object p1, v2

    .line 27
    :goto_0
    iget-object p2, p1, Ly10;->b:Lz10;

    .line 28
    .line 29
    iget p2, p2, Lz10;->a:I

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-ne p2, v1, :cond_1

    .line 34
    .line 35
    move p2, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move p2, v0

    .line 38
    :goto_1
    sget-object v2, Lgd;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    const-wide/32 v3, 0x200000

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const-wide/16 v3, 0x0

    .line 51
    .line 52
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    instance-of v6, v5, Led;

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    if-eqz v6, :cond_3

    .line 60
    .line 61
    check-cast v5, Led;

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    move-object v5, v7

    .line 65
    :goto_3
    if-eqz v5, :cond_5

    .line 66
    .line 67
    iget-object v6, v5, Led;->h:Lgd;

    .line 68
    .line 69
    if-eq v6, p0, :cond_4

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_4
    move-object v7, v5

    .line 73
    :cond_5
    :goto_4
    if-nez v7, :cond_6

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_6
    iget-object v5, v7, Led;->c:Lfd;

    .line 77
    .line 78
    sget-object v6, Lfd;->e:Lfd;

    .line 79
    .line 80
    if-ne v5, v6, :cond_7

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_7
    iget-object v6, p1, Ly10;->b:Lz10;

    .line 84
    .line 85
    iget v6, v6, Lz10;->a:I

    .line 86
    .line 87
    if-nez v6, :cond_8

    .line 88
    .line 89
    sget-object v6, Lfd;->b:Lfd;

    .line 90
    .line 91
    if-ne v5, v6, :cond_8

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_8
    iput-boolean v1, v7, Led;->g:Z

    .line 95
    .line 96
    iget-object v5, v7, Led;->a:Lp80;

    .line 97
    .line 98
    invoke-virtual {v5, p1, p3}, Lp80;->a(Ly10;Z)Ly10;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_5
    if-eqz p1, :cond_b

    .line 103
    .line 104
    iget-object v5, p1, Ly10;->b:Lz10;

    .line 105
    .line 106
    iget v5, v5, Lz10;->a:I

    .line 107
    .line 108
    if-ne v5, v1, :cond_9

    .line 109
    .line 110
    iget-object v5, p0, Lgd;->f:Lhl;

    .line 111
    .line 112
    invoke-virtual {v5, p1}, Lfp;->a(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    goto :goto_6

    .line 117
    :cond_9
    iget-object v5, p0, Lgd;->e:Lhl;

    .line 118
    .line 119
    invoke-virtual {v5, p1}, Lfp;->a(Ljava/lang/Runnable;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    :goto_6
    if-eqz p1, :cond_a

    .line 124
    .line 125
    goto :goto_7

    .line 126
    :cond_a
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 127
    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Lgd;->d:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p0, " was terminated"

    .line 139
    .line 140
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-direct {p1, p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_b
    :goto_7
    if-eqz p3, :cond_c

    .line 152
    .line 153
    if-eqz v7, :cond_c

    .line 154
    .line 155
    move v0, v1

    .line 156
    :cond_c
    if-eqz p2, :cond_10

    .line 157
    .line 158
    if-eqz v0, :cond_d

    .line 159
    .line 160
    goto :goto_8

    .line 161
    :cond_d
    invoke-virtual {p0}, Lgd;->f()Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_e

    .line 166
    .line 167
    goto :goto_8

    .line 168
    :cond_e
    invoke-virtual {p0, v3, v4}, Lgd;->e(J)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_f

    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_f
    invoke-virtual {p0}, Lgd;->f()Z

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_10
    if-eqz v0, :cond_11

    .line 180
    .line 181
    goto :goto_8

    .line 182
    :cond_11
    invoke-virtual {p0}, Lgd;->f()Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_12

    .line 187
    .line 188
    goto :goto_8

    .line 189
    :cond_12
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 190
    .line 191
    .line 192
    move-result-wide p1

    .line 193
    invoke-virtual {p0, p1, p2}, Lgd;->e(J)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_13

    .line 198
    .line 199
    :goto_8
    return-void

    .line 200
    :cond_13
    invoke-virtual {p0}, Lgd;->f()Z

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public final close()V
    .locals 8

    .line 1
    sget-object v0, Lgd;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Led;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    check-cast v0, Led;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v0, v3

    .line 25
    :goto_0
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v1, v0, Led;->h:Lgd;

    .line 28
    .line 29
    if-eq v1, p0, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move-object v3, v0

    .line 33
    :cond_3
    :goto_1
    iget-object v0, p0, Lgd;->g:Lyx;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lgd;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    const-wide/32 v6, 0x1fffff

    .line 43
    .line 44
    .line 45
    and-long/2addr v4, v6

    .line 46
    long-to-int v1, v4

    .line 47
    monitor-exit v0

    .line 48
    if-gt v2, v1, :cond_6

    .line 49
    .line 50
    move v0, v2

    .line 51
    :goto_2
    iget-object v4, p0, Lgd;->g:Lyx;

    .line 52
    .line 53
    invoke-virtual {v4, v0}, Lyx;->b(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    check-cast v4, Led;

    .line 61
    .line 62
    if-eq v4, v3, :cond_5

    .line 63
    .line 64
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    sget-object v6, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    .line 69
    .line 70
    if-eq v5, v6, :cond_4

    .line 71
    .line 72
    invoke-static {v4}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 73
    .line 74
    .line 75
    const-wide/16 v5, 0x2710

    .line 76
    .line 77
    invoke-virtual {v4, v5, v6}, Ljava/lang/Thread;->join(J)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    iget-object v4, v4, Led;->a:Lp80;

    .line 82
    .line 83
    iget-object v5, p0, Lgd;->f:Lhl;

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Lp80;->d(Lhl;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    if-eq v0, v1, :cond_6

    .line 89
    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    iget-object v0, p0, Lgd;->f:Lhl;

    .line 94
    .line 95
    invoke-virtual {v0}, Lfp;->b()V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lgd;->e:Lhl;

    .line 99
    .line 100
    invoke-virtual {v0}, Lfp;->b()V

    .line 101
    .line 102
    .line 103
    :goto_4
    if-eqz v3, :cond_7

    .line 104
    .line 105
    invoke-virtual {v3, v2}, Led;->a(Z)Ly10;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-nez v0, :cond_9

    .line 110
    .line 111
    :cond_7
    iget-object v0, p0, Lgd;->e:Lhl;

    .line 112
    .line 113
    invoke-virtual {v0}, Lfp;->d()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Ly10;

    .line 118
    .line 119
    if-nez v0, :cond_9

    .line 120
    .line 121
    iget-object v0, p0, Lgd;->f:Lhl;

    .line 122
    .line 123
    invoke-virtual {v0}, Lfp;->d()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Ly10;

    .line 128
    .line 129
    if-nez v0, :cond_9

    .line 130
    .line 131
    if-eqz v3, :cond_8

    .line 132
    .line 133
    sget-object v0, Lfd;->e:Lfd;

    .line 134
    .line 135
    invoke-virtual {v3, v0}, Led;->h(Lfd;)Z

    .line 136
    .line 137
    .line 138
    :cond_8
    sget-object v0, Lgd;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 139
    .line 140
    const-wide/16 v1, 0x0

    .line 141
    .line 142
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 143
    .line 144
    .line 145
    sget-object v0, Lgd;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 146
    .line 147
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_9
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-interface {v4, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :catchall_1
    move-exception p0

    .line 169
    monitor-exit v0

    .line 170
    throw p0
.end method

.method public final d(Led;II)V
    .locals 7

    .line 1
    :cond_0
    :goto_0
    sget-object v0, Lgd;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v3

    .line 7
    const-wide/32 v0, 0x1fffff

    .line 8
    .line 9
    .line 10
    and-long/2addr v0, v3

    .line 11
    long-to-int v0, v0

    .line 12
    const-wide/32 v1, 0x200000

    .line 13
    .line 14
    .line 15
    add-long/2addr v1, v3

    .line 16
    const-wide/32 v5, -0x200000

    .line 17
    .line 18
    .line 19
    and-long/2addr v1, v5

    .line 20
    if-ne v0, p2, :cond_5

    .line 21
    .line 22
    if-nez p3, :cond_4

    .line 23
    .line 24
    invoke-virtual {p1}, Led;->c()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_1
    sget-object v5, Lgd;->k:Lo0;

    .line 29
    .line 30
    if-ne v0, v5, :cond_1

    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    if-nez v0, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    check-cast v0, Led;

    .line 39
    .line 40
    invoke-virtual {v0}, Led;->b()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_3

    .line 45
    .line 46
    move v0, v5

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    invoke-virtual {v0}, Led;->c()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    move v0, p3

    .line 54
    :cond_5
    :goto_2
    if-ltz v0, :cond_0

    .line 55
    .line 56
    int-to-long v5, v0

    .line 57
    or-long/2addr v5, v1

    .line 58
    sget-object v1, Lgd;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 59
    .line 60
    move-object v2, p0

    .line 61
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_6

    .line 66
    .line 67
    return-void

    .line 68
    :cond_6
    move-object p0, v2

    .line 69
    goto :goto_0
.end method

.method public final e(J)Z
    .locals 3

    .line 1
    const-wide/32 v0, 0x1fffff

    .line 2
    .line 3
    .line 4
    and-long/2addr v0, p1

    .line 5
    long-to-int v0, v0

    .line 6
    const-wide v1, 0x3ffffe00000L

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr p1, v1

    .line 12
    const/16 v1, 0x15

    .line 13
    .line 14
    shr-long/2addr p1, v1

    .line 15
    long-to-int p1, p1

    .line 16
    sub-int/2addr v0, p1

    .line 17
    const/4 p1, 0x0

    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    move v0, p1

    .line 21
    :cond_0
    iget p2, p0, Lgd;->a:I

    .line 22
    .line 23
    if-ge v0, p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lgd;->a()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    if-le p2, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lgd;->a()I

    .line 35
    .line 36
    .line 37
    :cond_1
    if-lez v0, :cond_2

    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    return p1
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-static {p0, p1, v0}, Lgd;->c(Lgd;Ljava/lang/Runnable;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final f()Z
    .locals 11

    .line 1
    :cond_0
    :goto_0
    sget-object v0, Lgd;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v3

    .line 7
    const-wide/32 v0, 0x1fffff

    .line 8
    .line 9
    .line 10
    and-long/2addr v0, v3

    .line 11
    long-to-int v0, v0

    .line 12
    iget-object v1, p0, Lgd;->g:Lyx;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lyx;->b(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Led;

    .line 19
    .line 20
    const/4 v7, -0x1

    .line 21
    const/4 v8, 0x0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    move-object v3, p0

    .line 26
    goto :goto_3

    .line 27
    :cond_1
    const-wide/32 v1, 0x200000

    .line 28
    .line 29
    .line 30
    add-long/2addr v1, v3

    .line 31
    const-wide/32 v5, -0x200000

    .line 32
    .line 33
    .line 34
    and-long/2addr v1, v5

    .line 35
    invoke-virtual {v0}, Led;->c()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    :goto_1
    sget-object v9, Lgd;->k:Lo0;

    .line 40
    .line 41
    if-ne v5, v9, :cond_2

    .line 42
    .line 43
    move v6, v7

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    if-nez v5, :cond_3

    .line 46
    .line 47
    move v6, v8

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    check-cast v5, Led;

    .line 50
    .line 51
    invoke-virtual {v5}, Led;->b()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_6

    .line 56
    .line 57
    :goto_2
    if-ltz v6, :cond_0

    .line 58
    .line 59
    int-to-long v5, v6

    .line 60
    or-long/2addr v5, v1

    .line 61
    sget-object v1, Lgd;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 62
    .line 63
    move-object v2, p0

    .line 64
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    move-object v3, v2

    .line 69
    if-eqz p0, :cond_5

    .line 70
    .line 71
    invoke-virtual {v0, v9}, Led;->g(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :goto_3
    if-nez v0, :cond_4

    .line 75
    .line 76
    return v8

    .line 77
    :cond_4
    sget-object p0, Led;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 78
    .line 79
    invoke-virtual {p0, v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_5

    .line 84
    .line 85
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 86
    .line 87
    .line 88
    const/4 p0, 0x1

    .line 89
    return p0

    .line 90
    :cond_5
    move-object p0, v3

    .line 91
    goto :goto_0

    .line 92
    :cond_6
    move-wide v9, v3

    .line 93
    move-object v3, p0

    .line 94
    invoke-virtual {v5}, Led;->c()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    move-wide v3, v9

    .line 99
    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lgd;->g:Lyx;

    .line 7
    .line 8
    invoke-virtual {v1}, Lyx;->a()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    move v5, v3

    .line 15
    move v6, v5

    .line 16
    move v7, v6

    .line 17
    move v8, v7

    .line 18
    move v9, v4

    .line 19
    :goto_0
    if-ge v9, v2, :cond_7

    .line 20
    .line 21
    invoke-virtual {v1, v9}, Lyx;->b(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v10

    .line 25
    check-cast v10, Led;

    .line 26
    .line 27
    if-nez v10, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object v11, v10, Led;->a:Lp80;

    .line 31
    .line 32
    invoke-virtual {v11}, Lp80;->c()I

    .line 33
    .line 34
    .line 35
    move-result v11

    .line 36
    iget-object v10, v10, Led;->c:Lfd;

    .line 37
    .line 38
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    if-eqz v10, :cond_5

    .line 43
    .line 44
    if-eq v10, v4, :cond_4

    .line 45
    .line 46
    const/4 v12, 0x2

    .line 47
    if-eq v10, v12, :cond_3

    .line 48
    .line 49
    const/4 v12, 0x3

    .line 50
    if-eq v10, v12, :cond_2

    .line 51
    .line 52
    const/4 v11, 0x4

    .line 53
    if-eq v10, v11, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 60
    .line 61
    if-lez v11, :cond_6

    .line 62
    .line 63
    new-instance v10, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const/16 v11, 0x64

    .line 72
    .line 73
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    new-instance v10, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const/16 v11, 0x62

    .line 98
    .line 99
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 111
    .line 112
    new-instance v10, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const/16 v11, 0x63

    .line 121
    .line 122
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    :cond_6
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_7
    sget-object v1, Lgd;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 136
    .line 137
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v1

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    iget-object v9, p0, Lgd;->d:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const/16 v9, 0x40

    .line 152
    .line 153
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-static {p0}, Lvd;->s(Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v9, "[Pool Size {core = "

    .line 164
    .line 165
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget v9, p0, Lgd;->a:I

    .line 169
    .line 170
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v10, ", max = "

    .line 174
    .line 175
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget v10, p0, Lgd;->b:I

    .line 179
    .line 180
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v10, "}, Worker States {CPU = "

    .line 184
    .line 185
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v3, ", blocking = "

    .line 192
    .line 193
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v3, ", parked = "

    .line 200
    .line 201
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v3, ", dormant = "

    .line 208
    .line 209
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v3, ", terminated = "

    .line 216
    .line 217
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v3, "}, running workers queues = "

    .line 224
    .line 225
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v0, ", global CPU queue size = "

    .line 232
    .line 233
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lgd;->e:Lhl;

    .line 237
    .line 238
    invoke-virtual {v0}, Lfp;->c()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v0, ", global blocking queue size = "

    .line 246
    .line 247
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-object p0, p0, Lgd;->f:Lhl;

    .line 251
    .line 252
    invoke-virtual {p0}, Lfp;->c()I

    .line 253
    .line 254
    .line 255
    move-result p0

    .line 256
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string p0, ", Control State {created workers= "

    .line 260
    .line 261
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-wide/32 v5, 0x1fffff

    .line 265
    .line 266
    .line 267
    and-long/2addr v5, v1

    .line 268
    long-to-int p0, v5

    .line 269
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string p0, ", blocking tasks = "

    .line 273
    .line 274
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-wide v5, 0x3ffffe00000L

    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    and-long/2addr v5, v1

    .line 283
    const/16 p0, 0x15

    .line 284
    .line 285
    shr-long/2addr v5, p0

    .line 286
    long-to-int p0, v5

    .line 287
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string p0, ", CPUs acquired = "

    .line 291
    .line 292
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-wide v5, 0x7ffffc0000000000L

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    and-long v0, v1, v5

    .line 301
    .line 302
    const/16 p0, 0x2a

    .line 303
    .line 304
    shr-long/2addr v0, p0

    .line 305
    long-to-int p0, v0

    .line 306
    sub-int/2addr v9, p0

    .line 307
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string p0, "}]"

    .line 311
    .line 312
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    return-object p0
.end method
