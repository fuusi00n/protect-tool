.class public final Lj6;
.super Lzt;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public static volatile h:Lj6;

.field public final g:Lqe;

.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lqe;

    .line 5
    .line 6
    invoke-direct {v0}, Lqe;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lj6;->g:Lqe;

    .line 10
    .line 11
    return-void
.end method

.method public static y()Lj6;
    .locals 2

    .line 1
    sget-object v0, Lj6;->h:Lj6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lj6;->h:Lj6;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-class v0, Lj6;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lj6;->h:Lj6;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Lj6;

    .line 16
    .line 17
    invoke-direct {v1}, Lj6;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lj6;->h:Lj6;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object v0, Lj6;->h:Lj6;

    .line 27
    .line 28
    return-object v0

    .line 29
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v1
.end method
