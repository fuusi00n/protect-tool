.class public final Lln;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Lqn;

.field public final synthetic a:Ltn;

.field public final synthetic b:Lm3;

.method public constructor <init>(Lm3;Ltn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lln;->a:Ltn;

    .line 5
    .line 6
    iput-object p1, p0, Lln;->b:Lm3;

    .line 7
    .line 8
    return-void
.end method

.method public final a(Lrn;Lon;)V
    .locals 0

    .line 1
    sget-object p1, Lon;->ON_START:Lon;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lln;->a:Ltn;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Ltn;->f(Lqn;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lln;->b:Lm3;

    .line 11
    .line 12
    invoke-virtual {p0}, Lm3;->f()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
