.class public final Lsn;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public a:Lpn;

.field public b:Lqn;


# virtual methods
.method public final a(Lrn;Lon;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lon;->a()Lpn;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lsn;->a:Lpn;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-gez v2, :cond_0

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    :cond_0
    iput-object v1, p0, Lsn;->a:Lpn;

    .line 18
    .line 19
    iget-object v1, p0, Lsn;->b:Lqn;

    .line 20
    .line 21
    invoke-interface {v1, p1, p2}, Lqn;->a(Lrn;Lon;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lsn;->a:Lpn;

    .line 25
    .line 26
    return-void
.end method
