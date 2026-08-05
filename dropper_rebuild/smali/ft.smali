.class public final Lft;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Landroid/window/OnBackAnimationCallback;

.field public final synthetic a:Lpk;

.field public final synthetic b:Lpk;

.field public final synthetic c:Lek;

.field public final synthetic d:Lek;

.method public constructor <init>(Lpk;Lpk;Lek;Lek;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lft;->a:Lpk;

    .line 5
    .line 6
    iput-object p2, p0, Lft;->b:Lpk;

    .line 7
    .line 8
    iput-object p3, p0, Lft;->c:Lek;

    .line 9
    .line 10
    iput-object p4, p0, Lft;->d:Lek;

    .line 11
    .line 12
    return-void
.end method

.method public final onBackCancelled()V
    .locals 0

    .line 1
    iget-object p0, p0, Lft;->d:Lek;

    .line 2
    .line 3
    invoke-interface {p0}, Lek;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBackInvoked()V
    .locals 0

    .line 1
    iget-object p0, p0, Lft;->c:Lek;

    .line 2
    .line 3
    invoke-interface {p0}, Lek;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx6;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lx6;-><init>(Landroid/window/BackEvent;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lft;->b:Lpk;

    .line 10
    .line 11
    invoke-interface {p0, v0}, Lpk;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx6;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lx6;-><init>(Landroid/window/BackEvent;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lft;->a:Lpk;

    .line 10
    .line 11
    invoke-interface {p0, v0}, Lpk;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method
