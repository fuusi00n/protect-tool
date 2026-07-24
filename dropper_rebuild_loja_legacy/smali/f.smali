.class public abstract Lf;
.super Lbn;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lmc;
.implements Lhd;


# instance fields
.field public final e:Lyc;


# direct methods
.method public constructor <init>(Lyc;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lbn;-><init>(Z)V

    .line 2
    .line 3
    .line 4
    sget-object p2, Lqg;->d:Lqg;

    .line 5
    .line 6
    invoke-interface {p1, p2}, Lyc;->b(Lxc;)Lwc;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Lsm;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lbn;->B(Lsm;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lyc;->j(Lyc;)Lyc;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lf;->e:Lyc;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final A(Lra;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lf;->e:Lyc;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lvd;->x(Lyc;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final H(Ljava/lang/Object;)V
    .locals 0

    .line 1
    instance-of p0, p1, Lpa;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lpa;

    .line 6
    .line 7
    iget-object p0, p1, Lpa;->a:Ljava/lang/Throwable;

    .line 8
    .line 9
    sget-object p0, Lpa;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public S(Ljava/lang/Throwable;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public T(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()Lyc;
    .locals 0

    .line 1
    iget-object p0, p0, Lf;->e:Lyc;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()Lyc;
    .locals 0

    .line 1
    iget-object p0, p0, Lf;->e:Lyc;

    .line 2
    .line 3
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
    invoke-virtual {p0, p1}, Lbn;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v0, Lvd;->n:Lo0;

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0, p1}, Lf;->l(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, " was cancelled"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
