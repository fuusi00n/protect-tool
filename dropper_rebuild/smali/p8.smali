.class public final Lp8;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Ljava/lang/Runnable;

.field public final synthetic a:Lq8;

.field public final synthetic b:Lir;

.field public final synthetic c:Ler;

.field public final synthetic d:Lo0;

.method public constructor <init>(Lo0;Lq8;Lir;Ler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp8;->d:Lo0;

    .line 5
    .line 6
    iput-object p2, p0, Lp8;->a:Lq8;

    .line 7
    .line 8
    iput-object p3, p0, Lp8;->b:Lir;

    .line 9
    .line 10
    iput-object p4, p0, Lp8;->c:Ler;

    .line 11
    .line 12
    return-void
.end method

.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp8;->d:Lo0;

    .line 2
    .line 3
    iget-object v0, v0, Lo0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lr8;

    .line 6
    .line 7
    iget-object v1, p0, Lp8;->a:Lq8;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    iput-boolean v2, v0, Lr8;->z:Z

    .line 13
    .line 14
    iget-object v1, v1, Lq8;->b:Ler;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Ler;->c(Z)V

    .line 18
    .line 19
    .line 20
    iput-boolean v2, v0, Lr8;->z:Z

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lp8;->b:Lir;

    .line 23
    .line 24
    invoke-virtual {v0}, Lir;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lir;->hasSubMenu()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    const/4 v2, 0x0

    .line 38
    iget-object p0, p0, Lp8;->c:Ler;

    .line 39
    .line 40
    invoke-virtual {p0, v0, v2, v1}, Ler;->q(Landroid/view/MenuItem;Lvr;I)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method
