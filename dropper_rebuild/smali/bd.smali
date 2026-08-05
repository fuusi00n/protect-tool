.class public final Lbd;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Lxc;

.field public final a:Lpk;

.field public final b:Lxc;

.method public constructor <init>(Lxc;Lpk;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lbd;->a:Lpk;

    .line 8
    .line 9
    instance-of p2, p1, Lbd;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    check-cast p1, Lbd;

    .line 14
    .line 15
    iget-object p1, p1, Lbd;->b:Lxc;

    .line 16
    .line 17
    :cond_0
    iput-object p1, p0, Lbd;->b:Lxc;

    .line 18
    .line 19
    return-void
.end method
