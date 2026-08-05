.class public final Lmz;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Ljava/lang/Runnable;

.field public final a:Ltn;

.field public final b:Lon;

.field public c:Z

.method public constructor <init>(Ltn;Lon;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lmz;->a:Ltn;

    .line 11
    .line 12
    iput-object p2, p0, Lmz;->b:Lon;

    .line 13
    .line 14
    return-void
.end method

.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmz;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lmz;->a:Ltn;

    .line 6
    .line 7
    iget-object v1, p0, Lmz;->b:Lon;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ltn;->d(Lon;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lmz;->c:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method
