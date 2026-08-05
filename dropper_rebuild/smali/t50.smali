.class public final Lt50;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Landroid/view/OnReceiveContentListener;

.field public final a:Lnt;

.method public constructor <init>(Lnt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt50;->a:Lnt;

    .line 5
    .line 6
    return-void
.end method

.method public final onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 2

    .line 1
    new-instance v0, Lgc;

    .line 2
    .line 3
    new-instance v1, Lo0;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Lo0;-><init>(Landroid/view/ContentInfo;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lgc;-><init>(Lfc;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lt50;->a:Lnt;

    .line 12
    .line 13
    check-cast p0, Lq20;

    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lq20;->a(Landroid/view/View;Lgc;)Lgc;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_0
    if-ne p0, v0, :cond_1

    .line 24
    .line 25
    return-object p2

    .line 26
    :cond_1
    iget-object p0, p0, Lgc;->a:Lfc;

    .line 27
    .line 28
    invoke-interface {p0}, Lfc;->f()Landroid/view/ContentInfo;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lq7;->g(Ljava/lang/Object;)Landroid/view/ContentInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
