.class public Lfz;
.super Lf;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Ljd;

.field public final f:Lmc;

.method public constructor <init>(Lyc;Lmc;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lf;-><init>(Lyc;Z)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lfz;->f:Lmc;

    .line 6
    .line 7
    return-void
.end method

.method public final D()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final c()Ljd;
    .locals 1

    .line 1
    iget-object p0, p0, Lfz;->f:Lmc;

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

.method public k(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lfz;->f:Lmc;

    .line 2
    .line 3
    invoke-static {p0}, Lnm;->B(Lmc;)Lmc;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1}, Ld40;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Lnm;->Q(Lmc;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lfz;->f:Lmc;

    .line 2
    .line 3
    invoke-static {p1}, Ld40;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lmc;->f(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
